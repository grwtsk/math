# rootNumber_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b4239ed-8ead-6175-0df8-c69c51a55a62",
  "kind": "theorem",
  "lexical_name": "rootNumber_ne_zero",
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
  "slug": "rootnumber-ne-zero--1711c4ae5d06666fa86d3788",
  "source": {
    "blob": "bc0a5b4c084aed86c77f00c6cc834e11e454a187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 209,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1711c4ae5d06666fa86d3788713d9a7ca6d0b435e3f156255eb835bd6539274e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b4239ed-8ead-6175-0df8-c69c51a55a62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootNumber_ne_zero (hq : 1 < q) (hprim : χ.IsPrimitive) : rootNumber χ ≠ 0 := by
  intro hW
  have hχ1 := ne_one_of_primitive hq hprim
  -- FE at s = −1: Λ_χ(2) = q^{−3/2}·W(χ)·Λ_{χ⁻¹}(−1) = 0
  have hFE := hprim.completedLFunction_one_sub (-1 : ℂ)
  rw [hW] at hFE
  simp only [mul_zero, zero_mul] at hFE
  -- so Λ_χ(2) = 0, but Λ_χ(2) = γ(2)·L(2,χ) with L(2,χ) ≠ 0 and γ(2) ≠ 0
  have h2 : completedLFunction χ 2 = 0 := by
    have : (1 : ℂ) - (-1) = 2 := by ring
    rwa [this] at hFE
  have hγL := (completed_eq_gamma_mul_L (χ := χ) hq
    (show (0:ℝ) < (2:ℂ).re by norm_num)).self_of_nhds
  rw [h2, Pi.mul_apply] at hγL
  have hγ := (gammaFactor_analyticAt (χ := χ) (show (0:ℝ) < (2:ℂ).re by norm_num)).2
  have hL2 := LFunction_two_ne_zero hχ1
  rcases mul_eq_zero.mp hγL.symm with h | h
  · exact hγ h
  · exact hL2 h

/-! ### 4. Order transport through the functional equation -/

/-- For `w` in the open strip: `ord_{1−w} L(·,χ) = ord_w L(·,χ⁻¹)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc0a5b4c084aed86c77f00c6cc834e11e454a187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
