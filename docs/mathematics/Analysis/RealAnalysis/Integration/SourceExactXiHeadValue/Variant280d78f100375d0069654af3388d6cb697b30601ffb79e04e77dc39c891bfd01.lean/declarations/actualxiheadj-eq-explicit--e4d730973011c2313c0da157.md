# actualXiHeadJ_eq_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d67cb0e-a1f4-1134-0461-cbeee8cd1e57",
  "kind": "theorem",
  "lexical_name": "actualXiHeadJ_eq_explicit",
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
  "slug": "actualxiheadj-eq-explicit--e4d730973011c2313c0da157",
  "source": {
    "blob": "05c53565e310870202c9b0752a69594e19251301",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 185,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variant280d78f100375d0069654af3388d6cb697b30601ffb79e04e77dc39c891bfd01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4d730973011c2313c0da157bade8263c5ce6dcc366eb218fb0b35af0c30ac22",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variant280d78f100375d0069654af3388d6cb697b30601ffb79e04e77dc39c891bfd01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d67cb0e-a1f4-1134-0461-cbeee8cd1e57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiHeadJ_eq_explicit : actualXiHeadJ = explicitXiHeadJ := by
  have he : (fun y : ℝ => physicalXiDensity y) =
      fun y => (Chebyshev.psi y / y ^ (3 / 2 : ℝ) - y / y ^ (3 / 2 : ℝ)) +
        2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) * (1 / y ^ (3 / 2 : ℝ)) := by
    funext y
    unfold RH16ActualF7.physicalXiDensity shiftedActualChebyshev
    ring
  unfold actualXiHeadJ
  rw [he, intervalIntegral.integral_add
      (psi_inverse_power_intervalIntegrable.sub y_inverse_power_intervalIntegrable)
      ((inverse_power_head_continuous.intervalIntegrable_of_Icc (by norm_num)).const_mul _),
    intervalIntegral.integral_sub psi_inverse_power_intervalIntegrable
      y_inverse_power_intervalIntegrable,
    intervalIntegral.integral_const_mul, inverse_power_head_integral,
    y_inverse_power_integral, actual_psi_head_integral]
  have h6 : Real.log (6 : ℝ) = Real.log 2 + Real.log 3 := by
    rw [show (6 : ℝ) = 2 * 3 by norm_num, Real.log_mul (by norm_num) (by norm_num)]
  have h12 : Real.log (12 : ℝ) = 2 * Real.log 2 + Real.log 3 := by
    rw [show (12 : ℝ) = 2 ^ 2 * 3 by norm_num,
      Real.log_mul (by norm_num) (by norm_num), Real.log_pow]
    ring
  have h60 : Real.log (60 : ℝ) = 2 * Real.log 2 + Real.log 3 + Real.log 5 := by
    rw [show (60 : ℝ) = 2 ^ 2 * 3 * 5 by norm_num,
      Real.log_mul (by norm_num) (by norm_num),
      Real.log_mul (by norm_num) (by norm_num), Real.log_pow]
    ring
  have h420 : Real.log (420 : ℝ) = 2 * Real.log 2 + Real.log 3 + Real.log 5 + Real.log 7 := by
    rw [show (420 : ℝ) = 2 ^ 2 * 3 * 5 * 7 by norm_num,
      Real.log_mul (by norm_num) (by norm_num),
      Real.log_mul (by norm_num) (by norm_num),
      Real.log_mul (by norm_num) (by norm_num), Real.log_pow]
    ring
  unfold explicitXiHeadJ
  rw [h6, h12, h60, h420]
  ring

/-- The already proved head error now has its explicit original finite source constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variant280d78f100375d0069654af3388d6cb697b30601ffb79e04e77dc39c891bfd01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variant280d78f100375d0069654af3388d6cb697b30601ffb79e04e77dc39c891bfd01.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05c53565e310870202c9b0752a69594e19251301` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
