# coreGrowingShiftEndpointDoubledDifferenceMinusClip_weighted_eq_parentExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0143f940-5bfb-243a-2e48-85174fdc19b9",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointDoubledDifferenceMinusClip_weighted_eq_parentExtension",
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
  "slug": "coregrowingshiftendpointdoubleddifferenceminusclip-weighted-eq-parentext--5f2dd4927b401f26a7dce6e1",
  "source": {
    "blob": "69c56354b8379fe9854dffc2ecfe92dddcb46f59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 303,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f2dd4927b401f26a7dce6e140c534602a5dc9803f28bcec255059e170fd54e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0143f940-5bfb-243a-2e48-85174fdc19b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointDoubledDifferenceMinusClip_weighted_eq_parentExtension
    (j : ℕ)
    (x y : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledMobiusZeroPad j x *
        coreGrowingShiftEndpointDoubledMobiusZeroPad j y *
        coreGrowingShiftEndpointDoubledDifferenceMinusClipKernelZeroPad j x y =
      if x.val < coreGrowingShiftEndpointFourierModulus j then
        if y.val < coreGrowingShiftEndpointFourierModulus j then
          coreGrowingShiftEndpointMobiusZeroPad j
              (x.val : CoreGrowingShiftEndpointFourierIndex j) *
            coreGrowingShiftEndpointMobiusZeroPad j
              (y.val : CoreGrowingShiftEndpointFourierIndex j) *
            coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad j
              (x.val : CoreGrowingShiftEndpointFourierIndex j)
              (y.val : CoreGrowingShiftEndpointFourierIndex j)
        else 0
      else 0 := by
  by_cases hxY : x.val < coreGrowingShiftEndpointFourierModulus j
  · by_cases hyY : y.val < coreGrowingShiftEndpointFourierModulus j
    · rw [if_pos hxY, if_pos hyY]
      unfold coreGrowingShiftEndpointDoubledDifferenceMinusClipKernelZeroPad
        coreGrowingShiftEndpointDifferenceMinusClipKernelZeroPad
      rw [mul_sub,
        coreGrowingShiftEndpointDoubledBulk_weighted_eq_parent hxY hyY,
        coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad_eq_parent
          hxY hyY]
      simp [coreGrowingShiftEndpointDoubledMobiusZeroPad, hxY, hyY]
      ring
    · rw [if_pos hxY, if_neg hyY]
      simp [coreGrowingShiftEndpointDoubledMobiusZeroPad, hyY]
  · rw [if_neg hxY]
    simp [coreGrowingShiftEndpointDoubledMobiusZeroPad, hxY]

/-- Parent-modulus real-space bulk packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c56354b8379fe9854dffc2ecfe92dddcb46f59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
