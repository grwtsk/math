# hasMFDerivWithinAt_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd6d9393-3f6f-d732-1d5c-af6bf558a1b2",
  "kind": "theorem",
  "lexical_name": "hasMFDerivWithinAt_id",
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
  "slug": "hasmfderivwithinat-id--24d8b137934d1a69eddb2e15",
  "source": {
    "blob": "3059d261aa559865c043589ed73a1c3e5078e16d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1297,
    "line": 1293,
    "path": "GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant6b51c1c5912a22c675db95b05d61e98fcf3e1f4d38ac015809c3d34f8eb26be8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24d8b137934d1a69eddb2e15a953c92471eb367a8def29d33bdde565683e11a1",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/MFDeriv/Variant6b51c1c5912a22c675db95b05d61e98fcf3e1f4d38ac015809c3d34f8eb26be8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd6d9393-3f6f-d732-1d5c-af6bf558a1b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1293–1297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasMFDerivWithinAt_id (s : Set M) (x : M) :
    HasMFDerivWithinAt I I (@id M) s x (ContinuousLinearMap.id 𝕜 (TangentSpace I x)) :=
  (hasMFDerivAt_id I x).hasMFDerivWithinAt
#align has_mfderiv_within_at_id hasMFDerivWithinAt_id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/MFDeriv/Variant6b51c1c5912a22c675db95b05d61e98fcf3e1f4d38ac015809c3d34f8eb26be8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant6b51c1c5912a22c675db95b05d61e98fcf3e1f4d38ac015809c3d34f8eb26be8.lean#L1293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3059d261aa559865c043589ed73a1c3e5078e16d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
