# coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex_eq_parent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e19d19d-b082-1f48-a9dd-b2fa2e892d2a",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex_eq_parent",
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
  "slug": "coregrowingshiftsignedendpointdoubleddifferencebulkzeropaddedpacketcompl--973c0be10578013e40b4480d",
  "source": {
    "blob": "69c56354b8379fe9854dffc2ecfe92dddcb46f59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 420,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:973c0be10578013e40b4480dbb4c178be01f67eb1c4d8fa13f1e4ac531ec50e1",
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

Occurrence: `result:6e19d19d-b082-1f48-a9dd-b2fa2e892d2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex_eq_parent
    (j : ℕ) :
    coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex j =
      coreGrowingShiftSignedEndpointDifferenceBulkZeroPaddedPacketComplex j := by
  classical
  let Y := coreGrowingShiftEndpointFourierModulus j
  let Q := coreGrowingShiftEndpointDoubledFourierModulus j
  have hYQ : Y ≤ Q := by
    unfold Y Q coreGrowingShiftEndpointDoubledFourierModulus
    omega
  unfold coreGrowingShiftSignedEndpointDoubledDifferenceBulkZeroPaddedPacketComplex
    coreGrowingShiftSignedEndpointDifferenceBulkZeroPaddedPacketComplex
  calc
    (∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
      ∑ y : CoreGrowingShiftEndpointDoubledFourierIndex j,
        coreGrowingShiftEndpointDoubledMobiusZeroPad j x *
          coreGrowingShiftEndpointDoubledMobiusZeroPad j y *
            coreGrowingShiftEndpointDoubledDifferenceBulkConvolutionKernel j x y) =
      ∑ x : CoreGrowingShiftEndpointDoubledFourierIndex j,
        ∑ y : CoreGrowingShiftEndpointDoubledFourierIndex j,
          if x.val < Y then
            if y.val < Y then
              coreGrowingShiftEndpointMobiusZeroPad j
                  (x.val : CoreGrowingShiftEndpointFourierIndex j) *
                coreGrowingShiftEndpointMobiusZeroPad j
                  (y.val : CoreGrowingShiftEndpointFourierIndex j) *
                coreGrowingShiftEndpointDifferenceBulkKernelZeroPad j
                  (x.val : CoreGrowingShiftEndpointFourierIndex j)
                  (y.val : CoreGrowingShiftEndpointFourierIndex j)
            else 0
          else 0 := by
            apply Fintype.sum_congr
            intro x
            apply Fintype.sum_congr
            intro y
            by_cases hxY : x.val < Y
            · by_cases hyY : y.val < Y
              · rw [if_pos hxY, if_pos hyY]
                exact coreGrowingShiftEndpointDoubledBulk_weighted_eq_parent
                  hxY hyY
              · rw [if_pos hxY, if_neg hyY]
                simp [coreGrowingShiftEndpointDoubledMobiusZeroPad, hyY]
            · rw [if_neg hxY]
              simp [coreGrowingShiftEndpointDoubledMobiusZeroPad, hxY]
    _ = ∑ x : CoreGrowingShiftEndpointFourierIndex j,
        ∑ y : CoreGrowingShiftEndpointFourierIndex j,
          coreGrowingShiftEndpointMobiusZeroPad j x *
            coreGrowingShiftEndpointMobiusZeroPad j y *
              coreGrowingShiftEndpointDifferenceBulkKernelZeroPad j x y := by
      exact sum_zmod_initial_zeroExtension₂ hYQ
        (fun x y =>
          coreGrowingShiftEndpointMobiusZeroPad j x *
            coreGrowingShiftEndpointMobiusZeroPad j y *
              coreGrowingShiftEndpointDifferenceBulkKernelZeroPad j x y)

/-- The doubled clipping lift changes no clipping bilinear form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c56354b8379fe9854dffc2ecfe92dddcb46f59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
