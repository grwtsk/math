# parityOddHalfShiftSignedResidueFourier_eq_two_mul_centered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b731faad-65e8-b0e4-e950-8f0f2224e375",
  "kind": "theorem",
  "lexical_name": "parityOddHalfShiftSignedResidueFourier_eq_two_mul_centered",
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
  "slug": "parityoddhalfshiftsignedresiduefourier-eq-two-mul-centered--d787d689daf50320ef7e77c8",
  "source": {
    "blob": "67adcf3f0de8eaf3e1ec9fb960717a82f52dcb2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 286,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d787d689daf50320ef7e77c89440391bf3ba9124abf13fddb1ab13bb88641e7a",
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

Occurrence: `result:b731faad-65e8-b0e4-e950-8f0f2224e375`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityOddHalfShiftSignedResidueFourier_eq_two_mul_centered
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (k : ZMod (d * d)) :
    parityOddHalfShiftSignedResidueFourier b d r k =
      (2 : ℂ) *
        parityHalfIndexCenteredResidueFourier
          b d r (positiveEndpointOddShiftSet b) k := by
  unfold parityOddHalfShiftSignedResidueFourier
    parityHalfIndexCenteredResidueFourier
  calc
    (∑ s : ZMod (d * d),
      parityOddHalfShiftSignedResidueBucket b d r s *
        ZMod.stdAddChar (k * s)) =
      ∑ s : ZMod (d * d),
        ((2 : ℂ) *
          (parityHalfIndexCenteredResidueFiberZMod
            b d r (positiveEndpointOddShiftSet b) s : ℂ)) *
          ZMod.stdAddChar (k * s) := by
      apply Finset.sum_congr rfl
      intro s _hs
      rw [parityOddHalfShiftSignedResidueBucket_eq_two_mul_centeredFiberZMod
        b d r hr s]
    _ = (2 : ℂ) *
        ∑ s : ZMod (d * d),
          (parityHalfIndexCenteredResidueFiberZMod
            b d r (positiveEndpointOddShiftSet b) s : ℂ) *
            ZMod.stdAddChar (k * s) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro s _hs
      ring

/-- Parseval for the centered residue Fourier transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67adcf3f0de8eaf3e1ec9fb960717a82f52dcb2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
