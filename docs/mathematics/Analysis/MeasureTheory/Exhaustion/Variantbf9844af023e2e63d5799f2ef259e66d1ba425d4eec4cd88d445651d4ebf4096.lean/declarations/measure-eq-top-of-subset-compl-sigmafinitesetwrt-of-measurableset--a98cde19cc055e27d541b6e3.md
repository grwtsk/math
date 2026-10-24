# measure_eq_top_of_subset_compl_sigmaFiniteSetWRT'_of_measurableSet

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
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be14685b-ce39-b685-21b7-194d367f17ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3e3fed9-9809-7584-0380-3add0292fcb0",
  "kind": "lemma",
  "lexical_name": "measure_eq_top_of_subset_compl_sigmaFiniteSetWRT'_of_measurableSet",
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
  "slug": "measure-eq-top-of-subset-compl-sigmafinitesetwrt-of-measurableset--a98cde19cc055e27d541b6e3",
  "source": {
    "blob": "27af792f30964d08962b3bf6a387b341af1a5bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 221,
    "path": "GRWTSK/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a98cde19cc055e27d541b6e33d22a62f53b297ace46416aa253dcd9d0a70e194",
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

Occurrence: `result:c3e3fed9-9809-7584-0380-3add0292fcb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_eq_top_of_subset_compl_sigmaFiniteSetWRT'_of_measurableSet [IsFiniteMeasure ν]
    (hs : MeasurableSet s) (hs_subset : s ⊆ (μ.sigmaFiniteSetWRT' ν)ᶜ) (hνs : ν s ≠ 0) :
    μ s = ∞ := by
  suffices ¬ SigmaFinite (μ.restrict s) by
    by_contra h
    have h_lt_top : Fact (μ s < ∞) := ⟨Ne.lt_top h⟩
    exact this inferInstance
  intro hsσ
  have h_lt : ν (μ.sigmaFiniteSetWRT' ν) < ν (μ.sigmaFiniteSetWRT' ν ∪ s) := by
    rw [measure_union _ hs]
    · exact ENNReal.lt_add_right (measure_ne_top _ _) hνs
    · exact disjoint_compl_right.mono_right hs_subset
  have h_le : ν (μ.sigmaFiniteSetWRT' ν ∪ s) ≤ ν (μ.sigmaFiniteSetWRT' ν) := by
    conv_rhs => rw [measure_sigmaFiniteSetWRT']
    refine (le_iSup
      (f := fun (_ : SigmaFinite (μ.restrict (μ.sigmaFiniteSetWRT' ν ∪ s))) ↦ _) ?_).trans ?_
    · have := sigmaFinite_restrict_sigmaFiniteSetWRT' μ ν
      infer_instance
    · grw [← le_iSup₂ _ ?_]
      exact measurableSet_sigmaFiniteSetWRT'.union hs
  exact h_lt.not_ge h_le

/-- For all sets `s` in `(μ.sigmaFiniteSetWRT ν)ᶜ`, if `ν s ≠ 0` then `μ s = ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Exhaustion/Variantbf9844af023e2e63d5799f2ef259e66d1ba425d4eec4cd88d445651d4ebf4096.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27af792f30964d08962b3bf6a387b341af1a5bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
