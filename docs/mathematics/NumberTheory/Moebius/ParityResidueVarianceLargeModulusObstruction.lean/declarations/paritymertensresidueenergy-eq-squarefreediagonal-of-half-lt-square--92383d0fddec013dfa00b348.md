# parityMertensResidueEnergy_eq_squarefreeDiagonal_of_half_lt_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c652535d-6e88-91e6-baf4-69261a1775db",
  "kind": "theorem",
  "lexical_name": "parityMertensResidueEnergy_eq_squarefreeDiagonal_of_half_lt_square",
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
  "slug": "paritymertensresidueenergy-eq-squarefreediagonal-of-half-lt-square--92383d0fddec013dfa00b348",
  "source": {
    "blob": "1d1ec38cf19de026fec5a6303c686037851a750f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 195,
    "path": "GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92383d0fddec013dfa00b348fe5d3ac8a4a7e8b79264966736200c6353f5078b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c652535d-6e88-91e6-baf4-69261a1775db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityMertensResidueEnergy_eq_squarefreeDiagonal_of_half_lt_square
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (hq : b / 2 < d * d) :
    parityMertensResidueEnergy b d r =
      paritySquarefreeDiagonal b r := by
  classical
  unfold parityMertensResidueEnergy
    parityMertensResidueBucket
    paritySquarefreeDiagonal
  have hinj :=
    parityHalfResidue_injective_of_half_lt_square b d r hr hq
  have hreal :=
    sum_sq_indicatorFibres_eq_of_injOn
      (endpointParitySet b r)
      (fun u : ℕ => ((u / 2 : ℕ) : ZMod (d * d)))
      moebiusReal
      hinj
  have hcast (a : ZMod (d * d)) :
      (∑ u ∈ endpointParitySet b r, if ((u / 2 : ℕ) : ZMod (d * d)) = a then
        (moebiusReal u : ℂ) else 0) =
      ((∑ u ∈ endpointParitySet b r, if ((u / 2 : ℕ) : ZMod (d * d)) = a then
        moebiusReal u else 0 : ℝ) : ℂ) := by
    push_cast
    apply Finset.sum_congr rfl
    intro u _
    split_ifs <;> rfl
  simpa only [hcast, Complex.norm_real, Real.norm_eq_abs, sq_abs] using hreal

/-- Explicit arithmetic input used by the large-modulus obstruction.

It is kept separate from the finite Fourier algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1ec38cf19de026fec5a6303c686037851a750f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
