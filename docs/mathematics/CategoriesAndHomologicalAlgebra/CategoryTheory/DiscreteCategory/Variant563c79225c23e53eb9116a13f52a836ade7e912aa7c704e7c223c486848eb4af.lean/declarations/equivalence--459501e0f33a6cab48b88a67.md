# equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b566e4e27cdd79c319025f2eab50bd683dc44e6eb535ede1d1bfb66769daa90e",
  "kind": "def",
  "lexical_name": "equivalence",
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
  "slug": "equivalence--459501e0f33a6cab48b88a67",
  "source": {
    "blob": "1488454390b1a27ddbefc847ebfeaccfd4ac0e28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 251,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant563c79225c23e53eb9116a13f52a836ade7e912aa7c704e7c223c486848eb4af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:459501e0f33a6cab48b88a67958101c2308c95ff19e2e84557c700bacdba7681",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant563c79225c23e53eb9116a13f52a836ade7e912aa7c704e7c223c486848eb4af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b566e4e27cdd79c319025f2eab50bd683dc44e6eb535ede1d1bfb66769daa90e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalence {I : Type u₁} {J : Type u₂} (e : I ≃ J) : Discrete I ≌ Discrete J where
  functor := Discrete.functor (Discrete.mk ∘ (e : I → J))
  inverse := Discrete.functor (Discrete.mk ∘ (e.symm : J → I))
  unitIso :=
    Discrete.natIso fun i => eqToIso (by aesop_cat)
  counitIso :=
    Discrete.natIso fun j => eqToIso (by aesop_cat)
#align category_theory.discrete.equivalence CategoryTheory.Discrete.equivalence

/-- We can convert an equivalence of `discrete` categories to a type-level `Equiv`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant563c79225c23e53eb9116a13f52a836ade7e912aa7c704e7c223c486848eb4af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DiscreteCategory/Variant563c79225c23e53eb9116a13f52a836ade7e912aa7c704e7c223c486848eb4af.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1488454390b1a27ddbefc847ebfeaccfd4ac0e28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
