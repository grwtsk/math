# quarticCollisionTerm_eq_diagonal_add_offDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f094eae2-1204-7eda-0e7c-900d0d51d182",
  "kind": "theorem",
  "lexical_name": "quarticCollisionTerm_eq_diagonal_add_offDiagonal",
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
  "slug": "quarticcollisionterm-eq-diagonal-add-offdiagonal--baf0e30b81376d11d464a624",
  "source": {
    "blob": "b20973c098b261c0c199d2b17671cbd34dc140a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 110,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baf0e30b81376d11d464a624a29fdc0cf2d41936eb13b7433752925d965c040a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f094eae2-1204-7eda-0e7c-900d0d51d182`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quarticCollisionTerm_eq_diagonal_add_offDiagonal
    (d u h v g : ℕ) [NeZero d] :
    (if parityAffineShiftResidueCoordinate d u h =
          parityAffineShiftResidueCoordinate d v g then
        regularQuarticMobiusCoefficient u h v g
      else 0) =
      (if h = g ∧ u = v then
        regularQuarticMobiusCoefficient u h v g
      else 0) +
      (if parityAffineShiftCollisionCoordinateNat u h ≡
              parityAffineShiftCollisionCoordinateNat v g [MOD d * d] ∧
            ¬ (h = g ∧ u = v) then
        regularQuarticMobiusCoefficient u h v g
      else 0) := by
  simp only [parityAffineShiftResidueCoordinate_eq_iff_modEq]
  by_cases hdiag : h = g ∧ u = v
  · rcases hdiag with ⟨rfl, rfl⟩
    simp [Nat.ModEq.refl]
  · by_cases hcoll :
      parityAffineShiftCollisionCoordinateNat u h ≡
        parityAffineShiftCollisionCoordinateNat v g [MOD d * d]
    · simp [hdiag, hcoll]
    · simp [hdiag, hcoll]

/-- Exact diagonal/off-diagonal decomposition of the signed quartic collision
surface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b20973c098b261c0c199d2b17671cbd34dc140a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
