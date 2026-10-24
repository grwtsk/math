# condExp_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d25bfa4aab65e2744490f447f276ad1a2416b68f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37484193d9e1fb46239f2570ff698500fb2b8feff3a5ed4b70c2a83e0a32c174.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d47197ed-86eb-2b02-c7bf-5b9294d0bed1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f7a818c-20ca-487c-e51b-94e69da22b1b",
  "kind": "theorem",
  "lexical_name": "condExp_indicator",
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
  "slug": "condexp-indicator--90c94cc2ccb49147e6d0b727",
  "source": {
    "blob": "d25bfa4aab65e2744490f447f276ad1a2416b68f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 75,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant37484193d9e1fb46239f2570ff698500fb2b8feff3a5ed4b70c2a83e0a32c174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90c94cc2ccb49147e6d0b72731e21970c65420fba9374f5f4e4b52908a9998c7",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant37484193d9e1fb46239f2570ff698500fb2b8feff3a5ed4b70c2a83e0a32c174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f7a818c-20ca-487c-e51b-94e69da22b1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_indicator (hf_int : Integrable f μ) (hs : MeasurableSet[m] s) :
    μ[s.indicator f | m] =ᵐ[μ] s.indicator (μ[f | m]) := by
  by_cases hm : m ≤ m0
  swap; · simp_rw [condExp_of_not_le hm, Set.indicator_zero']; rfl
  by_cases hμm : SigmaFinite (μ.trim hm)
  swap; · simp_rw [condExp_of_not_sigmaFinite hm hμm, Set.indicator_zero']; rfl
  have : SigmaFinite (μ.trim hm) := hμm
  -- use `have` to perform what should be the first calc step because of an error I don't
  -- understand
  have : s.indicator (μ[f | m]) =ᵐ[μ] s.indicator (μ[s.indicator f + sᶜ.indicator f | m]) := by
    rw [Set.indicator_self_add_compl s f]
  refine (this.trans ?_).symm
  calc
    s.indicator (μ[s.indicator f + sᶜ.indicator f | m]) =ᵐ[μ]
        s.indicator (μ[s.indicator f | m] + μ[sᶜ.indicator f | m]) := by
      filter_upwards [condExp_add (hf_int.indicator (hm _ hs)) (hf_int.indicator (hm _ hs.compl)) m]
        with x hx
      classical rw [Set.indicator_apply, Set.indicator_apply, hx]
    _ = s.indicator (μ[s.indicator f | m]) + s.indicator (μ[sᶜ.indicator f | m]) :=
      (s.indicator_add' _ _)
    _ =ᵐ[μ] s.indicator (μ[s.indicator f | m]) +
        s.indicator (sᶜ.indicator (μ[sᶜ.indicator f | m])) := by
      refine Filter.EventuallyEq.rfl.add ?_
      have : sᶜ.indicator (μ[sᶜ.indicator f | m]) =ᵐ[μ] μ[sᶜ.indicator f | m] := by
        refine (condExp_indicator_aux hs.compl ?_).symm.trans ?_
        · exact indicator_ae_eq_restrict_compl (hm _ hs.compl)
        · rw [Set.indicator_indicator, Set.inter_self]
      filter_upwards [this] with x hx
      by_cases hxs : x ∈ s
      · simp only [hx, hxs, Set.indicator_of_mem]
      · simp only [hxs, Set.indicator_of_notMem, not_false_iff]
    _ =ᵐ[μ] s.indicator (μ[s.indicator f | m]) := by
      rw [Set.indicator_indicator, Set.inter_compl_self, Set.indicator_empty', add_zero]
    _ =ᵐ[μ] μ[s.indicator f | m] := by
      refine (condExp_indicator_aux hs ?_).symm.trans ?_
      · exact indicator_ae_eq_restrict_compl (hm _ hs)
      · rw [Set.indicator_indicator, Set.inter_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant37484193d9e1fb46239f2570ff698500fb2b8feff3a5ed4b70c2a83e0a32c174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant37484193d9e1fb46239f2570ff698500fb2b8feff3a5ed4b70c2a83e0a32c174.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d25bfa4aab65e2744490f447f276ad1a2416b68f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
