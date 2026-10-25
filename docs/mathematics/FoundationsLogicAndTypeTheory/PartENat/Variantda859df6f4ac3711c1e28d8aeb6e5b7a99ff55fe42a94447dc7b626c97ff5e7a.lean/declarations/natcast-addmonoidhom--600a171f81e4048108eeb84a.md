# natCast_AddMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f46b132102dbaf92ffa41f9869e44f81a00104a1c714a061adfdc9101373e818",
  "kind": "def",
  "lexical_name": "natCast_AddMonoidHom",
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
  "slug": "natcast-addmonoidhom--600a171f81e4048108eeb84a",
  "source": {
    "blob": "89f5dd50628292f4f2b74830e287e00d0ff215b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/PartENat/Variantda859df6f4ac3711c1e28d8aeb6e5b7a99ff55fe42a94447dc7b626c97ff5e7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:600a171f81e4048108eeb84a86e16009d90443af8649a58b1b8412c62672aaa2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/PartENat/Variantda859df6f4ac3711c1e28d8aeb6e5b7a99ff55fe42a94447dc7b626c97ff5e7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f46b132102dbaf92ffa41f9869e44f81a00104a1c714a061adfdc9101373e818`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def natCast_AddMonoidHom : ℕ →+ PartENat where
  toFun := some
  map_zero' := Nat.cast_zero
  map_add' := Nat.cast_add
#align part_enat.coe_hom PartENat.natCast_AddMonoidHom

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/PartENat/Variantda859df6f4ac3711c1e28d8aeb6e5b7a99ff55fe42a94447dc7b626c97ff5e7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/PartENat/Variantda859df6f4ac3711c1e28d8aeb6e5b7a99ff55fe42a94447dc7b626c97ff5e7a.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f5dd50628292f4f2b74830e287e00d0ff215b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
