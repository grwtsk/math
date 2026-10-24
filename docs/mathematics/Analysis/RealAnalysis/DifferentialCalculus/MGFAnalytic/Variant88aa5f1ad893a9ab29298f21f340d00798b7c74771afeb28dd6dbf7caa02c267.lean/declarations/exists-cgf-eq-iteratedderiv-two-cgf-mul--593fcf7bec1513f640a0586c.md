# exists_cgf_eq_iteratedDeriv_two_cgf_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d020e79f-f0b3-909f-d6b4-c6a61ce5da5c",
  "kind": "lemma",
  "lexical_name": "exists_cgf_eq_iteratedDeriv_two_cgf_mul",
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
  "slug": "exists-cgf-eq-iteratedderiv-two-cgf-mul--593fcf7bec1513f640a0586c",
  "source": {
    "blob": "b5118630963a7330f69dc335ed0975a70442368b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 286,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:593fcf7bec1513f640a0586c2beea7075ffa2440a5f273e8b511938960dcc657",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d020e79f-f0b3-909f-d6b4-c6a61ce5da5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_cgf_eq_iteratedDeriv_two_cgf_mul [IsZeroOrProbabilityMeasure μ] (ht : 0 < t)
    (hc : μ[X] = 0) (hs : Set.Icc 0 t ⊆ interior (integrableExpSet X μ)) :
    ∃ u ∈ Set.Ioo 0 t, cgf X μ t = (iteratedDeriv 2 (cgf X μ) u) * t ^ 2 / 2 := by
  have hu : UniqueDiffOn ℝ (Set.Icc 0 t) := uniqueDiffOn_Icc ht
  rw [← sub_zero (cgf X μ t)]
  nth_rw 3 [← sub_zero t]
  rw [← Set.uIoo_of_lt ht]
  convert! taylor_mean_remainder_lagrange_iteratedDeriv ht.ne ?_
  · have hd : derivWithin (cgf X μ) (Set.Icc 0 t) 0 = 0 := by
      convert! (analyticAt_cgf (hs ⟨le_refl 0, le_of_lt ht⟩)).differentiableAt.derivWithin _
      · simpa [hc] using (deriv_cgf_zero (hs ⟨le_refl 0, le_of_lt ht⟩)).symm
      · exact hu 0 ⟨le_refl 0, le_of_lt ht⟩
    simp [hd, Set.uIcc_of_lt ht]
  · rw [Set.uIcc_of_lt ht]
    exact (analyticOn_cgf.mono hs).contDiffOn hu

end DerivCGF

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5118630963a7330f69dc335ed0975a70442368b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
