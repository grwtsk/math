# Cover.ofQuasiCompactCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68348c3d70d03614a5d4d6a9dd23e1212c59063c97f84288b14c8014680d26d7",
  "kind": "def",
  "lexical_name": "Cover.ofQuasiCompactCover",
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
  "slug": "cover-ofquasicompactcover--808f86537d6ebc4a4c81c7c8",
  "source": {
    "blob": "91435d8ad3e3f80a548e5df18fbb81c266400e42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 152,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:808f86537d6ebc4a4c81c7c841101307b5b3e0eb3e68d153b26c1a3e102d3c68",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68348c3d70d03614a5d4d6a9dd23e1212c59063c97f84288b14c8014680d26d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cover.ofQuasiCompactCover {S : Scheme.{u}} (𝒰 : Scheme.Cover (precoverage P) S)
    [qc : QuasiCompactCover 𝒰.1] :
    Scheme.Cover (propQCPrecoverage P) S where
  __ := 𝒰.toPreZeroHypercover
  mem₀ := ⟨Scheme.presieve₀_mem_qcPrecoverage_iff.mpr ‹_›, 𝒰.mem₀⟩

/-- Lift a quasi-compact `P`-cover of a `u`-scheme in an arbitrary universe to universe `u`.
This is again quasi-compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91435d8ad3e3f80a548e5df18fbb81c266400e42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
