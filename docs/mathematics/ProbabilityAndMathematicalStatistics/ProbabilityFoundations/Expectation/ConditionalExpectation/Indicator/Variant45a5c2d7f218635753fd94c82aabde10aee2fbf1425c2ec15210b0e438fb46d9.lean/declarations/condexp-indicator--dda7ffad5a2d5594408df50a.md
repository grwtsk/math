# condExp_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9037d88-1419-7dfe-9f30-8e1b1c46873a",
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
  "slug": "condexp-indicator--dda7ffad5a2d5594408df50a",
  "source": {
    "blob": "a94dab06d340338ba9a5d66a31345fd0d8284efe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 84,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant45a5c2d7f218635753fd94c82aabde10aee2fbf1425c2ec15210b0e438fb46d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dda7ffad5a2d5594408df50a6203445a9d1df522a4cc2df0fde5e5f044dea0d4",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant45a5c2d7f218635753fd94c82aabde10aee2fbf1425c2ec15210b0e438fb46d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9037d88-1419-7dfe-9f30-8e1b1c46873a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_indicator (hf_int : Integrable f μ) (hs : MeasurableSet[m] s) :
    μ[s.indicator f|m] =ᵐ[μ] s.indicator (μ[f|m]) := by
  by_cases hm : m ≤ m0
  swap; · simp_rw [condExp_of_not_le hm, Set.indicator_zero']; rfl
  by_cases hμm : SigmaFinite (μ.trim hm)
  swap; · simp_rw [condExp_of_not_sigmaFinite hm hμm, Set.indicator_zero']; rfl
  haveI : SigmaFinite (μ.trim hm) := hμm
  -- use `have` to perform what should be the first calc step because of an error I don't
  -- understand
  have : s.indicator (μ[f|m]) =ᵐ[μ] s.indicator (μ[s.indicator f + sᶜ.indicator f|m]) := by
    rw [Set.indicator_self_add_compl s f]
  refine (this.trans ?_).symm
  calc
    s.indicator (μ[s.indicator f + sᶜ.indicator f|m]) =ᵐ[μ]
        s.indicator (μ[s.indicator f|m] + μ[sᶜ.indicator f|m]) := by
      filter_upwards [condExp_add (hf_int.indicator (hm _ hs)) (hf_int.indicator (hm _ hs.compl)) m]
        with x hx
      classical rw [Set.indicator_apply, Set.indicator_apply, hx]
    _ = s.indicator (μ[s.indicator f|m]) + s.indicator (μ[sᶜ.indicator f|m]) :=
      (s.indicator_add' _ _)
    _ =ᵐ[μ] s.indicator (μ[s.indicator f|m]) +
        s.indicator (sᶜ.indicator (μ[sᶜ.indicator f|m])) := by
      refine Filter.EventuallyEq.rfl.add ?_
      have : sᶜ.indicator (μ[sᶜ.indicator f|m]) =ᵐ[μ] μ[sᶜ.indicator f|m] := by
        refine (condExp_indicator_aux hs.compl ?_).symm.trans ?_
        · exact indicator_ae_eq_restrict_compl (hm _ hs.compl)
        · rw [Set.indicator_indicator, Set.inter_self]
      filter_upwards [this] with x hx
      by_cases hxs : x ∈ s
      · simp only [hx, hxs, Set.indicator_of_mem]
      · simp only [hxs, Set.indicator_of_notMem, not_false_iff]
    _ =ᵐ[μ] s.indicator (μ[s.indicator f|m]) := by
      rw [Set.indicator_indicator, Set.inter_compl_self, Set.indicator_empty', add_zero]
    _ =ᵐ[μ] μ[s.indicator f|m] := by
      refine (condExp_indicator_aux hs ?_).symm.trans ?_
      · exact indicator_ae_eq_restrict_compl (hm _ hs)
      · rw [Set.indicator_indicator, Set.inter_self]

@[deprecated (since := "2025-01-21")] alias condexp_indicator := condExp_indicator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant45a5c2d7f218635753fd94c82aabde10aee2fbf1425c2ec15210b0e438fb46d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant45a5c2d7f218635753fd94c82aabde10aee2fbf1425c2ec15210b0e438fb46d9.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a94dab06d340338ba9a5d66a31345fd0d8284efe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
