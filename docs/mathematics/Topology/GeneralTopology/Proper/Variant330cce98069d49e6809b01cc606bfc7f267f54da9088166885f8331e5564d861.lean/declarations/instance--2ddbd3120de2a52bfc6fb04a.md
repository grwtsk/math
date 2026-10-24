# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd6639994393bbf4e71c7617cda4bfe0a178a93bb0d4c7e2af5e29c428691fca",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--2ddbd3120de2a52bfc6fb04a",
  "source": {
    "blob": "9cefd9b847b658317b434975d1d707b3eadc676a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/Proper/Variant330cce98069d49e6809b01cc606bfc7f267f54da9088166885f8331e5564d861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ddbd3120de2a52bfc6fb04afc4b33095b0d434bd3e97c5ca947e7212ac72ee6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Proper/Variant330cce98069d49e6809b01cc606bfc7f267f54da9088166885f8331e5564d861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd6639994393bbf4e71c7617cda4bfe0a178a93bb0d4c7e2af5e29c428691fca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Coe (ProperCone 𝕜 E) (ConvexCone 𝕜 E) :=
  ⟨fun K => K.1⟩

-- Porting note: now a syntactic tautology
-- @[simp]
-- theorem toConvexCone_eq_coe (K : ProperCone 𝕜 E) : K.toConvexCone = K :=
--   rfl
-- #align proper_cone.to_convex_cone_eq_coe ProperCone.toConvexCone_eq_coe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Proper/Variant330cce98069d49e6809b01cc606bfc7f267f54da9088166885f8331e5564d861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Proper/Variant330cce98069d49e6809b01cc606bfc7f267f54da9088166885f8331e5564d861.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cefd9b847b658317b434975d1d707b3eadc676a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
