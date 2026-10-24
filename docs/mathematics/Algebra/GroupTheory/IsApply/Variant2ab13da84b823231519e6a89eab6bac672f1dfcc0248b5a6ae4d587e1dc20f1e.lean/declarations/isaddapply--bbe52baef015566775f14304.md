# IsAddApply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:680f278b15fa2f869a20d6929d2c7c4ac11bbc811b06e432d98ba85f3c972947",
  "kind": "class",
  "lexical_name": "IsAddApply",
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
  "slug": "isaddapply--bbe52baef015566775f14304",
  "source": {
    "blob": "d9b9b006192de57bc2a2777f8649a1ef631848f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 107,
    "path": "GRWTSK/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbe52baef015566775f14304f6a83a8c78460afabe6d40a4d0414f2ce29a4957",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:680f278b15fa2f869a20d6929d2c7c4ac11bbc811b06e432d98ba85f3c972947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsAddApply (F : Type*) (α β : outParam Type*) [FunLike F α β] [Add β] [Add F] where
  add_apply (f g : F) (x : α) : (f + g) x = f x + g x

/-- `IsMulApply F α β` states for all `f g : F` and `x : α`, `(f * g) x = f x * g x`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsApply/Variant2ab13da84b823231519e6a89eab6bac672f1dfcc0248b5a6ae4d587e1dc20f1e.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9b9b006192de57bc2a2777f8649a1ef631848f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
