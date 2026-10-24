# nhdsGE_neBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70de713e07f2acef231febcb46f0349dd23e9dc60ffd4101e683de1f57160946",
  "kind": "instance",
  "lexical_name": "nhdsGE_neBot",
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
  "slug": "nhdsge-nebot--e0a19561106f19a0daa9462b",
  "source": {
    "blob": "e65ba29d854c310ec5a3eadcb53bb92417cc8d14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRight/Variant124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0a19561106f19a0daa9462b078a6b7742301ec4ffbe46b864dfb6a6da829a07",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRight/Variant124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70de713e07f2acef231febcb46f0349dd23e9dc60ffd4101e683de1f57160946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nhdsGE_neBot (a : α) : NeBot (𝓝[≥] a) := nhdsWithin_Ici_neBot (le_refl a)

@[deprecated nhdsGE_neBot (since := "2024-12-21")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRight/Variant124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRight/Variant124fd45001d34d163b7f4ae99c89bfc8d52c81ba577b902b72a3fe6f34ae05d9.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e65ba29d854c310ec5a3eadcb53bb92417cc8d14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
