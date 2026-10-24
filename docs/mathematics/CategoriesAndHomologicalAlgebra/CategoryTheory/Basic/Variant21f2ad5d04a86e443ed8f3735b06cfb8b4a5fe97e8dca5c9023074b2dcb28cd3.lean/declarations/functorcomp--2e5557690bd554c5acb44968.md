# functorComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0ba2101f0a3b1897c6be15b28aefae3753d3fd5cae0193863aba140139a04cb",
  "kind": "def",
  "lexical_name": "functorComp",
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
  "slug": "functorcomp--2e5557690bd554c5acb44968",
  "source": {
    "blob": "c69ee88ee41d3d447d83e8b81a7bfeb90f7de399",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 232,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21f2ad5d04a86e443ed8f3735b06cfb8b4a5fe97e8dca5c9023074b2dcb28cd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e5557690bd554c5acb4496842e2c7a0570ebb7e4d1084ae096d3c3d4aafc251",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21f2ad5d04a86e443ed8f3735b06cfb8b4a5fe97e8dca5c9023074b2dcb28cd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0ba2101f0a3b1897c6be15b28aefae3753d3fd5cae0193863aba140139a04cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorComp {I : Type u₁} {J : Type u₁'} (f : J → C) (g : I → J) :
    Discrete.functor (f ∘ g) ≅ Discrete.functor (Discrete.mk ∘ g) ⋙ Discrete.functor f :=
  NatIso.ofComponents fun _ => Iso.refl _

/-- For functors out of a discrete category,
a natural transformation is just a collection of maps,
as the naturality squares are trivial.
-/
@[simps, implicit_reducible, to_dual self]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21f2ad5d04a86e443ed8f3735b06cfb8b4a5fe97e8dca5c9023074b2dcb28cd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21f2ad5d04a86e443ed8f3735b06cfb8b4a5fe97e8dca5c9023074b2dcb28cd3.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c69ee88ee41d3d447d83e8b81a7bfeb90f7de399` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
