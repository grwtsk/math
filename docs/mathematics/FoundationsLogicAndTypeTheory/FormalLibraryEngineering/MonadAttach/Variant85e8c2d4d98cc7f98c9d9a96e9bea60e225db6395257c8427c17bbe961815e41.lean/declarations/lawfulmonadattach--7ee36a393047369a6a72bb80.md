# LawfulMonadAttach

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03c7d2d641e45fd786593562ed8539e37a2db4f0dd0797b3426280b764ae43dc",
  "kind": "class",
  "lexical_name": "LawfulMonadAttach",
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
  "slug": "lawfulmonadattach--7ee36a393047369a6a72bb80",
  "source": {
    "blob": "49d5167b240adbe58de952865f9383506b19c2d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ee36a393047369a6a72bb806eac6647a4215ec7661cd5a95322960948f4b740",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03c7d2d641e45fd786593562ed8539e37a2db4f0dd0797b3426280b764ae43dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public class LawfulMonadAttach (m : Type u → Type v) [Monad m] [MonadAttach m] extends
    WeaklyLawfulMonadAttach m where
  canReturn_map_imp {α : Type u} {P : α → Prop} {x : m (Subtype P)} {a : α} :
      MonadAttach.CanReturn (Subtype.val <$> x) a → P a

/--
Like {name}`Bind.bind`, {name}`pbind` sequences two computations {lean}`x : m α` and {lean}`f`,
allowing the second to depend on the value computed by the first.
But other than with {name}`Bind.bind`, the second computation can also depend on a proof that
the return value {given}`a` of {name}`x` satisfies {lean}`MonadAttach.CanReturn x a`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadAttach/Variant85e8c2d4d98cc7f98c9d9a96e9bea60e225db6395257c8427c17bbe961815e41.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49d5167b240adbe58de952865f9383506b19c2d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
