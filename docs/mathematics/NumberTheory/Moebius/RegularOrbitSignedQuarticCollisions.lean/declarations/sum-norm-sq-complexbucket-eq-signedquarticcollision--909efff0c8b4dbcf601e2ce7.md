# sum_norm_sq_complexBucket_eq_signedQuarticCollision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acf13058-3469-07b2-b430-81eb5cb402a6",
  "kind": "theorem",
  "lexical_name": "sum_norm_sq_complexBucket_eq_signedQuarticCollision",
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
  "slug": "sum-norm-sq-complexbucket-eq-signedquarticcollision--909efff0c8b4dbcf601e2ce7",
  "source": {
    "blob": "ebc689c713c4dbf69e54c97b594ba519c2f5bd4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 153,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:909efff0c8b4dbcf601e2ce7d70695cb27519736ce9594b2f2594acb38572946",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acf13058-3469-07b2-b430-81eb5cb402a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_norm_sq_complexBucket_eq_signedQuarticCollision
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    (∑ s : ZMod (d * d),
      ‖parityHalfShiftSignedResidueComplexBucket b d r H s‖ ^ 2) =
      parityHalfShiftSignedQuarticCollision b d r H := by
  simp_rw [parityHalfShiftSignedResidueComplexBucket_eq_real]
  simp only [Complex.norm_real, Real.norm_eq_abs, sq_abs]
  exact sum_sq_realBucket_eq_signedQuarticCollision b d r H

/-- Even-half-shift residue energy is exactly its signed quartic collision. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitSignedQuarticCollisions.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebc689c713c4dbf69e54c97b594ba519c2f5bd4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
