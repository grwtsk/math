# sum_norm_sq_two_mul_centeredResidueFourier_eq_square_mul_squareMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee21af1c-cb65-fd2b-5192-cd378bb0d2e6",
  "kind": "theorem",
  "lexical_name": "sum_norm_sq_two_mul_centeredResidueFourier_eq_square_mul_squareMass",
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
  "slug": "sum-norm-sq-two-mul-centeredresiduefourier-eq-square-mul-squaremass--f6ae54abace6f22ed05d5dea",
  "source": {
    "blob": "67adcf3f0de8eaf3e1ec9fb960717a82f52dcb2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 337,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6ae54abace6f22ed05d5deaa40c0b3e55b2c3b5dd8759a3ac0ba058bde95550",
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

Occurrence: `result:ee21af1c-cb65-fd2b-5192-cd378bb0d2e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_norm_sq_two_mul_centeredResidueFourier_eq_square_mul_squareMass
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    (∑ k : ZMod (d * d),
      ‖(2 : ℂ) *
        parityHalfIndexCenteredResidueFourier b d r H k‖ ^ 2) =
      (((d * d : ℕ) : ℝ)) *
        parityHalfIndexCenteredResidueSquareMass b d r H := by
  have hparseval :=
    sum_norm_sq_parityHalfIndexCenteredResidueFourier b d r H
  calc
    (∑ k : ZMod (d * d),
      ‖(2 : ℂ) *
        parityHalfIndexCenteredResidueFourier b d r H k‖ ^ 2) =
        4 * ∑ k : ZMod (d * d),
          ‖parityHalfIndexCenteredResidueFourier b d r H k‖ ^ 2 := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k _hk
      rw [norm_mul]
      norm_num
      ring
    _ = 4 *
        ((((d * d : ℕ) : ℝ)) *
          ∑ s : ZMod (d * d),
            parityHalfIndexCenteredResidueFiberZMod b d r H s ^ 2) := by
      rw [hparseval]
    _ = (((d * d : ℕ) : ℝ)) *
        parityHalfIndexCenteredResidueSquareMassZMod b d r H := by
      unfold parityHalfIndexCenteredResidueSquareMassZMod
      ring
    _ = (((d * d : ℕ) : ℝ)) *
        parityHalfIndexCenteredResidueSquareMass b d r H := by
      rw [parityHalfIndexCenteredResidueSquareMassZMod_eq_nat]

/-- Full-frequency form of the centered winding dispersion for an arbitrary
half-shift family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingFourierBridge.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67adcf3f0de8eaf3e1ec9fb960717a82f52dcb2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
