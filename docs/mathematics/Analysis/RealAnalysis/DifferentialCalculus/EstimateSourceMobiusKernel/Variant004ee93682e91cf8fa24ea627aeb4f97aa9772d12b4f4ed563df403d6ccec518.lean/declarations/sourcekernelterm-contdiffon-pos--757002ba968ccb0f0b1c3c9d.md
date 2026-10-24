# sourceKernelTerm_contDiffOn_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5d154a00a93e066fed1cc5a01e2fff0b9b31c92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a62e9ea-8e79-6c57-93d4-c21951f8809a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d59064d-ce43-6439-01fd-4f3e0a37ed1a",
  "kind": "theorem",
  "lexical_name": "sourceKernelTerm_contDiffOn_pos",
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
  "slug": "sourcekernelterm-contdiffon-pos--757002ba968ccb0f0b1c3c9d",
  "source": {
    "blob": "c5d154a00a93e066fed1cc5a01e2fff0b9b31c92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:757002ba968ccb0f0b1c3c9da2a37d7705a94b8f93c843e561c6b7b6c844d5fb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d59064d-ce43-6439-01fd-4f3e0a37ed1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernelTerm_contDiffOn_pos
    (A : ℝ) (hA : 0 < A)
    (k : ℕ) (hk : 1 ≤ k) :
    ContDiffOn ℝ 1 (sourceKernelTerm A k) (Ioi 0) := by
  have hkpos : 0 < (k : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  have harg :
      ContDiffOn ℝ 1
        (fun x : ℝ => Real.log (x * (k : ℝ)))
        (Ioi 0) := by
    apply ContDiffOn.log
    · exact (contDiff_id.mul contDiff_const).contDiffOn
    · intro x hx
      exact mul_ne_zero (ne_of_gt hx) (ne_of_gt hkpos)
  have houter :
      ContDiff ℝ 1
        (exponentialTest
          (sourceCorrelation Realization.explicitSecondDerivative A)) :=
    exponentialTest_contDiff _
      (CorrelationRegularity.sourceCorrelation_contDiff A hA)
  have hcomp :
      ContDiffOn ℝ 1
        (fun x : ℝ =>
          exponentialTest
            (sourceCorrelation Realization.explicitSecondDerivative A)
            (Real.log (x * (k : ℝ))))
        (Ioi 0) := by
    simpa only [Function.comp_def] using
      houter.comp_contDiffOn harg
  unfold sourceKernelTerm
  exact contDiffOn_const.mul hcomp

/-- The complete finite source kernel is C1 on the positive real axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5d154a00a93e066fed1cc5a01e2fff0b9b31c92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
