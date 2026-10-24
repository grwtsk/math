# coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex_eq_parent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3f08e56-b504-d598-3362-1055025af82f",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex_eq_parent",
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
  "slug": "coregrowingshiftsignedendpointdoubledprefixclippingzeropaddedpacketcompl--83cca1f992d2ff4aed2bf443",
  "source": {
    "blob": "69c56354b8379fe9854dffc2ecfe92dddcb46f59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 476,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83cca1f992d2ff4aed2bf443ff511efcd7d560b84f5d84c2f1dedd4d074da544",
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

Occurrence: `result:b3f08e56-b504-d598-3362-1055025af82f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex j =
      coreGrowingShiftSignedEndpointPrefixClippingZeroPaddedPacketComplex j := by
  classical
  let Y := coreGrowingShiftEndpointFourierModulus j
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  have hYQ : Y ≤ Q := by
    unfold Y Q coreGrowingShiftEndpointDoubledFourierModulus
    omega
  unfold coreGrowingShiftSignedEndpointDoubledPrefixClippingZeroPaddedPacketComplex
    coreGrowingShiftSignedEndpointPrefixClippingZeroPaddedPacketComplex
  calc
    (∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
      ∑ y : CoreGrowingShiftEndpointDoubledFourierIndex j,
        coreGrowingShiftEndpointDoubledMobiusZeroPad j x *
          coreGrowingShiftEndpointDoubledMobiusZeroPad j y *
            coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad j x y) =
      ∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ∑ y : CoreGrowingShiftEndpointDoubledFourierIndex j,
          if x.val < Y then
            if y.val < Y then
              coreGrowingShiftEndpointMobiusZeroPad j
                  (x.val : CoreGrowingShiftEndpointFourierIndex j) *
                coreGrowingShiftEndpointMobiusZeroPad j
                  (y.val : CoreGrowingShiftEndpointFourierIndex j) *
                coreGrowingShiftEndpointPrefixClippingKernelZeroPad j
                  (x.val : CoreGrowingShiftEndpointFourierIndex j)
                  (y.val : CoreGrowingShiftEndpointFourierIndex j)
            else 0
          else 0 := by
            apply Fintype.sum_congr
            intro x
            apply Fintype.sum_congr
            intro y
            by_cases hxY : x.val < Y <;>
              by_cases hyY : y.val < Y <;>
                simp [coreGrowingShiftEndpointDoubledMobiusZeroPad,
                  coreGrowingShiftEndpointDoubledPrefixClippingKernelZeroPad,
                  hxY, hyY]
    _ = ∑ x : CoreGrowingShiftEndpointFourierIndex j,
        ∑ y : CoreGrowingShiftEndpointFourierIndex j,
          coreGrowingShiftEndpointMobiusZeroPad j x *
            coreGrowingShiftEndpointMobiusZeroPad j y *
              coreGrowingShiftEndpointPrefixClippingKernelZeroPad j x y := by
      exact sum_zmod_initial_zeroExtension₂ hYQ
        (fun x y =>
          coreGrowingShiftEndpointMobiusZeroPad j x *
            coreGrowingShiftEndpointMobiusZeroPad j y *
              coreGrowingShiftEndpointPrefixClippingKernelZeroPad j x y)

/-- The complete doubled signed real-space packet is exactly the parent signed
real-space packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c56354b8379fe9854dffc2ecfe92dddcb46f59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
