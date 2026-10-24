# thetaPhiTermSecondDeriv_eq_gaussians

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4da0314f8c37b73dd2f5df5f45a7ebe57fe92446",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dae81cec-006a-3b47-f22e-91987a3aedb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba079a82-15bd-9f3e-1d25-101285d44541",
  "kind": "theorem",
  "lexical_name": "thetaPhiTermSecondDeriv_eq_gaussians",
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
  "slug": "thetaphitermsecondderiv-eq-gaussians--85ea279751fe1c0e99a2bc4e",
  "source": {
    "blob": "4da0314f8c37b73dd2f5df5f45a7ebe57fe92446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 174,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85ea279751fe1c0e99a2bc4e432ad01ae49dedaaf44ce4bf6f9df0c036c2f173",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba079a82-15bd-9f3e-1d25-101285d44541`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiTermSecondDeriv_eq_gaussians (m : ℕ) (t : ℝ) :
    thetaPhiTermSecondDeriv m t =
      (330 * Real.pi ^ 2) * thetaGaussianTerm 4 9 m t -
      (75 * Real.pi) * thetaGaussianTerm 2 5 m t -
      (224 * Real.pi ^ 3) * thetaGaussianTerm 6 13 m t +
      (32 * Real.pi ^ 4) * thetaGaussianTerm 8 17 m t := by
  have h9 : Real.exp (9 * t) = Real.exp (5 * t) * Real.exp (4 * t) := by
    rw [← Real.exp_add]; congr 1; ring
  have h13 : Real.exp (13 * t) = Real.exp (5 * t) * Real.exp (4 * t) ^ 2 := by
    rw [pow_two, ← Real.exp_add, ← Real.exp_add]; congr 1; ring
  have h17 : Real.exp (17 * t) = Real.exp (5 * t) * Real.exp (4 * t) ^ 3 := by
    rw [show 17 * t = 5 * t + 4 * t + 4 * t + 4 * t by ring]
    simp only [Real.exp_add]
    ring
  simp only [thetaPhiTermSecondDeriv, thetaModeY, thetaModeA, thetaGaussianTerm,
    HurwitzKernelBounds.f_nat, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat, h9, h13, h17]
  ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4da0314f8c37b73dd2f5df5f45a7ebe57fe92446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
