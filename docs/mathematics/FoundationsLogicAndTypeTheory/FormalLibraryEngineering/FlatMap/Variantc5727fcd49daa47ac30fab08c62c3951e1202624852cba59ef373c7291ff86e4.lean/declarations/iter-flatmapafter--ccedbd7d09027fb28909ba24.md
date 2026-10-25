# Iter.flatMapAfter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f84ea4ffb7cc6bfdbc19ff6f74c5b229727134e2ed15e6c9e2a7715868814fa",
  "kind": "def",
  "lexical_name": "Iter.flatMapAfter",
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
  "slug": "iter-flatmapafter--ccedbd7d09027fb28909ba24",
  "source": {
    "blob": "5ef274d9d8c44ef5967ad311d29a38f5453b4ef4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variantc5727fcd49daa47ac30fab08c62c3951e1202624852cba59ef373c7291ff86e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccedbd7d09027fb28909ba24119837822a74544cee1b53ddffe979f9da90e566",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variantc5727fcd49daa47ac30fab08c62c3951e1202624852cba59ef373c7291ff86e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f84ea4ffb7cc6bfdbc19ff6f74c5b229727134e2ed15e6c9e2a7715868814fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Iter.flatMapAfter {α : Type w} {β : Type w} {α₂ : Type w}
    {γ : Type w} [Iterator α Id β] [Iterator α₂ Id γ]
    (f : β → Iter (α := α₂) γ) (it₁ : Iter (α := α) β) (it₂ : Option (Iter (α := α₂) γ)) :=
  ((it₁.toIterM.flatMapAfter (fun b => (f b).toIterM) (Iter.toIterM <$> it₂)).toIter : Iter γ)

@[cbv_opaque, always_inline, expose, inherit_doc IterM.flatMap]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variantc5727fcd49daa47ac30fab08c62c3951e1202624852cba59ef373c7291ff86e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variantc5727fcd49daa47ac30fab08c62c3951e1202624852cba59ef373c7291ff86e4.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ef274d9d8c44ef5967ad311d29a38f5453b4ef4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
