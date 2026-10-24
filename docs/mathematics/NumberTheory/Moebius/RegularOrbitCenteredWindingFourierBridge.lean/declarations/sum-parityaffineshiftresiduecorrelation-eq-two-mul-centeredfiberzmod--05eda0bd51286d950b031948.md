# sum_parityAffineShiftResidueCorrelation_eq_two_mul_centeredFiberZMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a1513cd-5a96-356b-5304-bf9451815706",
  "kind": "theorem",
  "lexical_name": "sum_parityAffineShiftResidueCorrelation_eq_two_mul_centeredFiberZMod",
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
  "slug": "sum-parityaffineshiftresiduecorrelation-eq-two-mul-centeredfiberzmod--05eda0bd51286d950b031948",
  "source": {
    "blob": "67adcf3f0de8eaf3e1ec9fb960717a82f52dcb2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 164,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05eda0bd51286d950b031948b3241140ecd39d8d0b4a6e4fc0632848321577f5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a1513cd-5a96-356b-5304-bf9451815706`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_parityAffineShiftResidueCorrelation_eq_two_mul_centeredFiberZMod
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ)
    (hr : r < 2)
    (s : ZMod (d * d)) :
    (∑ h ∈ H,
      parityAffineShiftResidueCorrelation b d r h s) =
      (2 : ℂ) *
        (parityHalfIndexCenteredResidueFiberZMod b d r H s : ℂ) := by
  classical
  calc
    (∑ h ∈ H,
      parityAffineShiftResidueCorrelation b d r h s) =
        ∑ h ∈ H,
          (2 : ℂ) *
            ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
              if (halfIndexZeroWindingCoordinate m h : ZMod (d * d)) = s then
                (halfIndexBinaryMobiusCoefficient r m h : ℂ)
              else 0 := by
      apply Finset.sum_congr rfl
      intro h _hh
      unfold parityAffineShiftResidueCorrelation
      rw [sum_parityAffineShiftBaseSet_eq_halfIndex b r h hr]
      apply congrArg (fun z : ℂ => (2 : ℂ) * z)
      apply Finset.sum_congr rfl
      intro m _hm
      have hcoord :
          parityAffineShiftResidueCoordinate d (2 * m + r) h =
            (halfIndexZeroWindingCoordinate m h : ZMod (d * d)) := by
        rw [parityAffineShiftResidueCoordinate_reconstructed d m r h hr]
        unfold halfIndexZeroWindingCoordinate
        push_cast
        ring
      rw [hcoord]
      simp [halfIndexBinaryMobiusCoefficient]
    _ = (2 : ℂ) *
        ∑ h ∈ H,
          ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
            if (halfIndexZeroWindingCoordinate m h : ZMod (d * d)) = s then
              (halfIndexBinaryMobiusCoefficient r m h : ℂ)
            else 0 := by
      rw [Finset.mul_sum]
    _ = (2 : ℂ) *
        (parityHalfIndexCenteredResidueFiberZMod b d r H s : ℂ) := by
      unfold parityHalfIndexCenteredResidueFiberZMod
      push_cast
      simp_rw [apply_ite (fun x : ℝ => (x : ℂ)), Complex.ofReal_zero]

/-- Exact factor-two bridge for the even half-shift residue bucket. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67adcf3f0de8eaf3e1ec9fb960717a82f52dcb2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
