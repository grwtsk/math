# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a26d10cd4bb27f4956d9262f1e5d2cee4113fce9f93b69e70490588bdee23e5b",
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
  "slug": "instance--3c7e40e1feabdf78a9f3c79a",
  "source": {
    "blob": "7d1c465cf1145916d4d1e38cdad57c527c569b30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c7e40e1feabdf78a9f3c79a8da9d1bfa8313dfc6794ac3260168e722fd6a3e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a26d10cd4bb27f4956d9262f1e5d2cee4113fce9f93b69e70490588bdee23e5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HasExplicitFiniteCoproducts.{w, u} (fun Y ↦ ExtremallyDisconnected Y) where
  hasProp _ := { hasProp := show ExtremallyDisconnected (Σ (_a : _), _) from inferInstance}

variable {X Y Z : Stonean} {f : X ⟶ Z} (i : Y ⟶ Z) (hi : IsOpenEmbedding f)
include hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d1c465cf1145916d4d1e38cdad57c527c569b30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
