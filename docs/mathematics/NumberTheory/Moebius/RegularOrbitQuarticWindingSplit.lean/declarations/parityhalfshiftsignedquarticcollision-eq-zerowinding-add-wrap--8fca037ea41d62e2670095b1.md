# parityHalfShiftSignedQuarticCollision_eq_zeroWinding_add_wrap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b531bcc6-887e-9cba-721c-709848cc42f5",
  "kind": "theorem",
  "lexical_name": "parityHalfShiftSignedQuarticCollision_eq_zeroWinding_add_wrap",
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
  "slug": "parityhalfshiftsignedquarticcollision-eq-zerowinding-add-wrap--8fca037ea41d62e2670095b1",
  "source": {
    "blob": "a3164b46669481b8d417ad303aef0adfd06e6499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 129,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticWindingSplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fca037ea41d62e2670095b1688aeb9cf1ac9895b476fcc52d5e182a76848d0e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitQuarticWindingSplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b531bcc6-887e-9cba-721c-709848cc42f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityHalfShiftSignedQuarticCollision_eq_zeroWinding_add_wrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfShiftSignedQuarticCollision b d r H =
      parityHalfShiftSignedQuarticZeroWinding b d r H +
        parityHalfShiftSignedQuarticWrap b d r H := by
  unfold parityHalfShiftSignedQuarticCollision
    parityHalfShiftSignedQuarticZeroWinding
    parityHalfShiftSignedQuarticWrap
  change 4 * (∑ h ∈ H, ∑ g ∈ H, ∑ u ∈ parityAffineShiftBaseSet b r h,
    ∑ v ∈ parityAffineShiftBaseSet b r g,
      if parityAffineShiftResidueCoordinate d u h = parityAffineShiftResidueCoordinate d v g
      then regularQuarticMobiusCoefficient u h v g else 0) = _
  simp_rw [quarticCollisionTerm_eq_zeroWinding_add_wrap d]
  simp_rw [Finset.sum_add_distrib]
  ring

/-- Literal diagonal is contained inside the zero-winding class, but is not
split away from the other exact-coordinate collisions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitQuarticWindingSplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitQuarticWindingSplit.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3164b46669481b8d417ad303aef0adfd06e6499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
