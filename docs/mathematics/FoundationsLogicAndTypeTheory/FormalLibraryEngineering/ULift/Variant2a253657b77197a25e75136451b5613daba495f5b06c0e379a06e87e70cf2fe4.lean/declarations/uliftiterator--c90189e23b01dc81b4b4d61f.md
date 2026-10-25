# ULiftIterator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16b93e6d143d779ce961c15e5dc3d2945024ab8d82deabaa1f45deec328732bf",
  "kind": "structure",
  "lexical_name": "ULiftIterator",
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
  "slug": "uliftiterator--c90189e23b01dc81b4b4d61f",
  "source": {
    "blob": "3d93c8d59313852a97b096d4bc66981974fdfa9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ULift/Variant2a253657b77197a25e75136451b5613daba495f5b06c0e379a06e87e70cf2fe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c90189e23b01dc81b4b4d61f60d455f9b981fcfa120f7da0a6ad95ff12533938",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ULift/Variant2a253657b77197a25e75136451b5613daba495f5b06c0e379a06e87e70cf2fe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16b93e6d143d779ce961c15e5dc3d2945024ab8d82deabaa1f45deec328732bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ULiftIterator (α : Type u) (m : Type u → Type u') (n : Type max u v → Type v')
    (β : Type u) (lift : ∀ ⦃γ : Type u⦄, m γ → ULiftT n γ) : Type max u v where
  inner : IterM (α := α) m β

variable {α : Type u} {m : Type u → Type u'} {n : Type max u v → Type v'}
    {β : Type u} {lift : ∀ ⦃γ : Type u⦄, m γ → ULiftT n γ}

/--
Transforms a step of the base iterator into a step of the `uLift` iterator.
-/
@[always_inline, inline, expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ULift/Variant2a253657b77197a25e75136451b5613daba495f5b06c0e379a06e87e70cf2fe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ULift/Variant2a253657b77197a25e75136451b5613daba495f5b06c0e379a06e87e70cf2fe4.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d93c8d59313852a97b096d4bc66981974fdfa9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
