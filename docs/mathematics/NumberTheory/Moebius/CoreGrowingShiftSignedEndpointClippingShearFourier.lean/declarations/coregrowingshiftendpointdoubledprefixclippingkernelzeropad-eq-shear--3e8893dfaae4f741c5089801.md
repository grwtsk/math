# coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad_eq_shear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c90b0af-eee5-993c-07f6-c402b9149387",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad_eq_shear",
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
  "slug": "coregrowingshiftendpointdoubledprefixclippingkernelzeropad-eq-shear--3e8893dfaae4f741c5089801",
  "source": {
    "blob": "d40696d8b6117656219d0dc4812e2efe42c1a57a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 262,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointClippingShearFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e8893dfaae4f741c50898015a69ccc6bacb75d439a1ca4b6ab69e9f5dae0a06",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointClippingShearFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c90b0af-eee5-993c-07f6-c402b9149387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad_eq_shear
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad j x y =
      coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad
        j x (y - x) := by
  let Y := coreGrowingShiftEndpointFourierModulus j
  by_cases hxY : x.val < Y
  · by_cases hyY : y.val < Y
    · by_cases hx1 : 1 ≤ x.val
      · by_cases hxy : x.val < y.val
        · have hdiff :=
            coreGrowingShiftEndpointDoubledDifference_val_of_lt hxy
          have hpos : 1 ≤ (y - x).val := by omega
          have hsum : x.val + (y - x).val = y.val := by omega
          have hxval :
              ZMod.val (x.val : CoreGrowingShiftEndpointFourierIndex j) =
                x.val := ZMod.val_cast_of_lt hxY
          have hyval :
              ZMod.val (y.val : CoreGrowingShiftEndpointFourierIndex j) =
                y.val := ZMod.val_cast_of_lt hyY
          simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
            coreGrowingShiftEndpointPrefixClippingKernelZeroPad,
            coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
            coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
            Y, hxY, hyY, hx1, hxy, hdiff, hpos, hsum, hxval, hyval]
        · by_cases heq : x.val = y.val
          · have hxy' : x = y := ZMod.val_injective heq
            subst y
            simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
              coreGrowingShiftEndpointPrefixClippingKernelZeroPad,
              coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
              coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
              Y, hxY, hx1]
          · have hyx : y.val < x.val := by omega
            have hge :=
              coreGrowingShiftEndpointDoubledReverseDifference_ge_window
                hxY hyx
            simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
              coreGrowingShiftEndpointPrefixClippingKernelZeroPad,
              coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
              coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
              Y, hxY, hyY, hx1, hxy, hge]
      · have hx0 : x.val = 0 := by omega
        simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
          Y, hxY, hyY, hx0]
    · by_cases hxy : x.val < y.val
      · have hdiff :=
          coreGrowingShiftEndpointDoubledDifference_val_of_lt hxy
        have hsum : x.val + (y - x).val = y.val := by omega
        simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
          Y, hxY, hyY, hdiff, hsum]
      · have hyx : y.val ≤ x.val := Nat.le_of_not_gt hxy
        have hnot : ¬ x.val + (y - x).val < Y := by
          by_cases heq : x.val = y.val
          · have hxy' : x = y := ZMod.val_injective heq
            subst y
            simp
          · have hyx' : y.val < x.val := by omega
            have hge :=
              coreGrowingShiftEndpointDoubledReverseDifference_ge_window
                hxY hyx'
            omega
        simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
          coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
          Y, hxY, hyY, hnot]
  · have hnot :
        ¬ 1 ≤ x.val ∧ 1 ≤ (y - x).val ∧
          x.val + (y - x).val < Y := by omega
    simp [coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
      coreGrowingShiftEndpointDoubledShearedPrefixClippingKernelZeroPad,
      coreGrowingShiftEndpointShearedPrefixClippingKernelNatZeroPad,
      Y, hxY, hnot]

/-- Generic finite shear theorem.  Under Mathlib's DFT sign convention, the
left-endpoint frequency is the transverse sum `r+s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointClippingShearFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointClippingShearFourier.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d40696d8b6117656219d0dc4812e2efe42c1a57a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
