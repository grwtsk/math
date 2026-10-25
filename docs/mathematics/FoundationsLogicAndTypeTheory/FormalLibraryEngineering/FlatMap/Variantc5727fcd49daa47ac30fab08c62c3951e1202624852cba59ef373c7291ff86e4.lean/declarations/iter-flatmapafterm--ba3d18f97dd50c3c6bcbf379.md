# Iter.flatMapAfterM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d70f2e95bac0ce916d9906a3f57cc9e3fdf31376864d17fce2df7b246b20512c",
  "kind": "def",
  "lexical_name": "Iter.flatMapAfterM",
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
  "slug": "iter-flatmapafterm--ba3d18f97dd50c3c6bcbf379",
  "source": {
    "blob": "5ef274d9d8c44ef5967ad311d29a38f5453b4ef4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variantc5727fcd49daa47ac30fab08c62c3951e1202624852cba59ef373c7291ff86e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba3d18f97dd50c3c6bcbf379b1b1afc7f8b47e6f6f313cb7525c3ffe45b1c347",
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

Occurrence: `declaration:d70f2e95bac0ce916d9906a3f57cc9e3fdf31376864d17fce2df7b246b20512c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Iter.flatMapAfterM {α : Type w} {β : Type w} {α₂ : Type w}
    {γ : Type w} {m : Type w → Type w'} [Monad m] [MonadAttach m] [Iterator α Id β] [Iterator α₂ m γ]
    (f : β → m (IterM (α := α₂) m γ)) (it₁ : Iter (α := α) β) (it₂ : Option (IterM (α := α₂) m γ)) :=
  ((it₁.mapWithPostcondition pure).flatMapAfterM f it₂ : IterM m γ)

@[always_inline, expose, inherit_doc IterM.flatMapM]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variantc5727fcd49daa47ac30fab08c62c3951e1202624852cba59ef373c7291ff86e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variantc5727fcd49daa47ac30fab08c62c3951e1202624852cba59ef373c7291ff86e4.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ef274d9d8c44ef5967ad311d29a38f5453b4ef4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
