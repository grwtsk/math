# measure_compl_sigmaFiniteSetWRT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27af792f30964d08962b3bf6a387b341af1a5bbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4085179-97e8-9f1c-53fc-09976398867e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f7725fa-e2d7-5f0c-e2b0-ffaf7e69cb59",
  "kind": "lemma",
  "lexical_name": "measure_compl_sigmaFiniteSetWRT",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "measure-compl-sigmafinitesetwrt--06cf5e1398e20d7e921e6f4c",
  "source": {
    "blob": "27af792f30964d08962b3bf6a387b341af1a5bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 293,
    "path": "GRWTSK/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06cf5e1398e20d7e921e6f4c8412bb05921059437f0fb18396fde3f9fe55d466",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f7725fa-e2d7-5f0c-e2b0-ffaf7e69cb59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_compl_sigmaFiniteSetWRT (hμν : μ ≪ ν) [SigmaFinite μ] [SFinite ν] :
    ν (μ.sigmaFiniteSetWRT ν)ᶜ = 0 := by
  have h : ν (μ.sigmaFiniteSetWRT ν)ᶜ ≠ 0 → μ (μ.sigmaFiniteSetWRT ν)ᶜ = ∞ :=
    measure_eq_top_of_subset_compl_sigmaFiniteSetWRT subset_rfl
  by_contra h0
  refine ENNReal.top_ne_zero ?_
  rw [← h h0, ← Measure.iSup_restrict_spanningSets]
  simp_rw [Measure.restrict_apply' (measurableSet_spanningSets μ _), ENNReal.iSup_eq_zero]
  intro i
  by_contra h_ne_zero
  have h_zero_top := measure_eq_top_of_subset_compl_sigmaFiniteSetWRT
    (Set.inter_subset_left : (μ.sigmaFiniteSetWRT ν)ᶜ ∩ spanningSets μ i ⊆ _) ?_
  swap; · exact fun h ↦ h_ne_zero (hμν h)
  refine absurd h_zero_top (ne_of_lt ?_)
  exact (measure_mono Set.inter_subset_right).trans_lt (measure_spanningSets_lt_top μ i)

section SigmaFiniteSet

/-- A measurable set such that `μ.restrict μ.sigmaFiniteSet` is sigma-finite,
  and for all measurable sets `s ⊆ μ.sigmaFiniteSetᶜ`, either `μ s = 0` or `μ s = ∞`. -/
-- Note: `Set` has no computational content, but Lean still attempts to compile it.
-- See https://github.com/leanprover/lean4/issues/14084.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27af792f30964d08962b3bf6a387b341af1a5bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
