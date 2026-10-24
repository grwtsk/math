# coreGrowingShiftSignedEndpointBilinearSlice_eq_zeroPadded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2819456a-6186-086b-e5ec-5cd39c3d4940",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftSignedEndpointBilinearSlice_eq_zeroPadded",
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
  "slug": "coregrowingshiftsignedendpointbilinearslice-eq-zeropadded--a4a7f7eedf9d78eb17bcc682",
  "source": {
    "blob": "b9deb36196c1e5f3414f44dfba228190f2f45900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 146,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4a7f7eedf9d78eb17bcc682cf708962f0e121bc0889b1a3d22f04c770531600",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2819456a-6186-086b-e5ec-5cd39c3d4940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftSignedEndpointBilinearSlice_eq_zeroPadded
    {j N : ℕ}
    (hN : N ∈ coreGrowingShiftSignedStaircasePrefixSet j) :
    (coreGrowingShiftSignedEndpointBilinearSlice j N : ℂ) =
      coreGrowingShiftSignedEndpointZeroPaddedSlice j N := by
  classical
  let Y : ℕ := coreGrowingShiftEndpointFourierModulus j
  have hNrange := hN
  simp only [coreGrowingShiftSignedStaircasePrefixSet,
    Finset.mem_Ico] at hNrange
  have hNY : N < Y := by
    unfold Y coreGrowingShiftEndpointFourierModulus
    omega
  have hsupport :
      ∀ p ∈ coreGrowingShiftSignedEndpointPairSet j N,
        p.1 < Y ∧ p.2 < Y := by
    intro p hp
    obtain ⟨hn1, hnN, hnm, hmY, _hlo, _hhi⟩ :=
      coreGrowingShiftSignedEndpointPair_support hp
    constructor
    · exact lt_of_le_of_lt hnN hNY
    · simpa [Y, coreGrowingShiftEndpointFourierModulus] using hmY
  symm
  unfold coreGrowingShiftSignedEndpointZeroPaddedSlice
  rw [sum_zmod_eq_sum_fin]
  simp_rw [sum_zmod_eq_sum_fin]
  calc
    (∑ x : Fin Y, ∑ y : Fin Y,
      coreGrowingShiftEndpointMobiusZeroPad j
          (x.val : CoreGrowingShiftEndpointFourierIndex j) *
        coreGrowingShiftEndpointMobiusZeroPad j
          (y.val : CoreGrowingShiftEndpointFourierIndex j) *
        coreGrowingShiftEndpointKernelZeroPad j N
          (x.val : CoreGrowingShiftEndpointFourierIndex j)
          (y.val : CoreGrowingShiftEndpointFourierIndex j)) =
      ∑ x : Fin Y, ∑ y : Fin Y,
        if (x.val, y.val) ∈
            coreGrowingShiftSignedEndpointPairSet j N then
          (moebiusReal x.val : ℂ) *
            (moebiusReal y.val : ℂ) *
              (coreGrowingShiftSignedEndpointKernel
                j N x.val y.val : ℂ)
        else 0 := by
          apply Fintype.sum_congr
          intro x
          apply Fintype.sum_congr
          intro y
          have hxval :
              ZMod.val
                (x.val : CoreGrowingShiftEndpointFourierIndex j) = x.val := by
            exact ZMod.val_cast_of_lt x.isLt
          have hyval :
              ZMod.val
                (y.val : CoreGrowingShiftEndpointFourierIndex j) = y.val := by
            exact ZMod.val_cast_of_lt y.isLt
          rw [hxval, hyval]
          by_cases hp :
              (x.val, y.val) ∈
                coreGrowingShiftSignedEndpointPairSet j N
          · obtain ⟨hn1, _hnN, hnm, _hmY, _hlo, _hhi⟩ :=
              coreGrowingShiftSignedEndpointPair_support hp
            have hm1 : 1 ≤ y.val := by omega
            simp [coreGrowingShiftEndpointMobiusZeroPad,
              coreGrowingShiftEndpointKernelZeroPad, hp, hn1, hm1]
          · simp [coreGrowingShiftEndpointKernelZeroPad, hp]
    _ = ∑ p ∈ coreGrowingShiftSignedEndpointPairSet j N,
        (moebiusReal p.1 : ℂ) * (moebiusReal p.2 : ℂ) *
          (coreGrowingShiftSignedEndpointKernel j N p.1 p.2 : ℂ) := by
      exact sum_fin_pair_indicator_eq
        (coreGrowingShiftSignedEndpointPairSet j N)
        hsupport
        (fun p =>
          (moebiusReal p.1 : ℂ) * (moebiusReal p.2 : ℂ) *
            (coreGrowingShiftSignedEndpointKernel j N p.1 p.2 : ℂ))
    _ = (coreGrowingShiftSignedEndpointBilinearSlice j N : ℂ) := by
      simp [coreGrowingShiftSignedEndpointBilinearSlice,
        map_mul, map_sum]

/-- Exact finite Fourier pairing with Mathlib's `ZMod.dft` sign convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9deb36196c1e5f3414f44dfba228190f2f45900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
