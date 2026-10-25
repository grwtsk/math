# _root_.AddAction.IsPreprimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5cac43ea14b39f0f73cdedef59faed38b6bbb3bf635ac18584ad85beabdc0dc",
  "kind": "class",
  "lexical_name": "_root_.AddAction.IsPreprimitive",
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
  "slug": "root-addaction-ispreprimitive--04409552d1945a19a81c486e",
  "source": {
    "blob": "f46eb6912bd9bb128c88d5d71b0e5779a9558a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04409552d1945a19a81c486ea0966fa7ed0608fd6f8c607a98dbb61e7046a362",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5cac43ea14b39f0f73cdedef59faed38b6bbb3bf635ac18584ad85beabdc0dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class _root_.AddAction.IsPreprimitive [VAdd G X] : Prop extends AddAction.IsPretransitive G X where
  /-- An action is preprimitive if it is pretransitive and
  the only blocks are the trivial ones -/
  isTrivialBlock_of_isBlock : ∀ {B : Set X}, AddAction.IsBlock G B → AddAction.IsTrivialBlock B

/-- An action is preprimitive if it is pretransitive and
the only blocks are the trivial ones -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46eb6912bd9bb128c88d5d71b0e5779a9558a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
