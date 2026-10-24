# parityHalfShiftSignedQuarticOffDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68becc4fb35cd4056f5268a5caf1bea9117b38e5824ceddb65b5c5a54e32125b",
  "kind": "def",
  "lexical_name": "parityHalfShiftSignedQuarticOffDiagonal",
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
  "slug": "parityhalfshiftsignedquarticoffdiagonal--c1beb2a6dbd1a90c88452f5d",
  "source": {
    "blob": "b20973c098b261c0c199d2b17671cbd34dc140a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1beb2a6dbd1a90c88452f5d7337cb4f9f72c9645d8d5282f0387686175aed3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68becc4fb35cd4056f5268a5caf1bea9117b38e5824ceddb65b5c5a54e32125b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parityHalfShiftSignedQuarticOffDiagonal
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ h ∈ H,
    ∑ g ∈ H,
      ∑ u ∈ parityAffineShiftBaseSet b r h,
        ∑ v ∈ parityAffineShiftBaseSet b r g,
          if parityAffineShiftCollisionCoordinateNat u h ≡
                parityAffineShiftCollisionCoordinateNat v g [MOD d * d] ∧
              ¬ (h = g ∧ u = v) then
            regularQuarticMobiusCoefficient u h v g
          else 0

/-- Literal diagonal equality always implies the affine residue collision. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticDiagonalSplit.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b20973c098b261c0c199d2b17671cbd34dc140a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
