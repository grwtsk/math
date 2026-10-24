# thetaPhiTermSecondDeriv_eq_gaussians

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf4f4496-9bde-2013-fbee-fdba467715b7",
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
  "slug": "thetaphitermsecondderiv-eq-gaussians--70490c3790712ec41ec88aa4",
  "source": {
    "blob": "330633acc6d5e8ebf52cf915dd34798b0403eed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 194,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc77b38436227e19ec8babddaf5b3d84cac446144fe9b86b3a0d25dfb9a5ccec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70490c3790712ec41ec88aa4b50702d137326d102393b5d11d1791ad7f805f04",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc77b38436227e19ec8babddaf5b3d84cac446144fe9b86b3a0d25dfb9a5ccec0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf4f4496-9bde-2013-fbee-fdba467715b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–211.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc77b38436227e19ec8babddaf5b3d84cac446144fe9b86b3a0d25dfb9a5ccec0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc77b38436227e19ec8babddaf5b3d84cac446144fe9b86b3a0d25dfb9a5ccec0.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `330633acc6d5e8ebf52cf915dd34798b0403eed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
