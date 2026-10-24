# isoindexConeLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54eeaff544081208e0e3e96035320e2ae0be735495b4ca9b1fc7b4b830aead2a",
  "kind": "def",
  "lexical_name": "isoindexConeLift",
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
  "slug": "isoindexconelift--036b1bcdf6dc36fe0856be55",
  "source": {
    "blob": "d2db24307e1ac293e2dbdf1f6e551e9b89d53552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 144,
    "path": "GRWTSK/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:036b1bcdf6dc36fe0856be5582029cece073d87cd234299225141737f7e49336",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54eeaff544081208e0e3e96035320e2ae0be735495b4ca9b1fc7b4b830aead2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoindexConeLift :
    @Profinite.of C _ (by rwa [← isCompact_iff_compactSpace]) _ _ ≅
    (Profinite.limitCone.{u, u} (indexFunctor hC)).pt :=
  asIso <| (Profinite.limitConeIsLimit.{u, u} _).lift (indexCone hC)

/-- The isomorphism of cones induced by `isoindexConeLift`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2db24307e1ac293e2dbdf1f6e551e9b89d53552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
