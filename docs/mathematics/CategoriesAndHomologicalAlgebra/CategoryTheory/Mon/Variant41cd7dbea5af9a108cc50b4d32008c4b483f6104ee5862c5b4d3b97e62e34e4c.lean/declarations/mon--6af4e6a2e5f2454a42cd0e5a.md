# Mon_

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f861435cb88e8be1d6700916176ba5bdb58c0ad4636059468d365542f40be38",
  "kind": "structure",
  "lexical_name": "Mon_",
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
  "slug": "mon--6af4e6a2e5f2454a42cd0e5a",
  "source": {
    "blob": "a24c902eff6112a61b8b3e122483a1035f2d2953",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant41cd7dbea5af9a108cc50b4d32008c4b483f6104ee5862c5b4d3b97e62e34e4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6af4e6a2e5f2454a42cd0e5ab061b8cb95a5962f19992436417cfad82bbc5995",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant41cd7dbea5af9a108cc50b4d32008c4b483f6104ee5862c5b4d3b97e62e34e4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f861435cb88e8be1d6700916176ba5bdb58c0ad4636059468d365542f40be38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Mon_ where
  /-- The underlying object in the ambient monoidal category -/
  X : C
  /-- The unit morphism of the monoid object -/
  one : 𝟙_ C ⟶ X
  /-- The multiplication morphism of a monoid object -/
  mul : X ⊗ X ⟶ X
  one_mul : (one ▷ X) ≫ mul = (λ_ X).hom := by aesop_cat
  mul_one : (X ◁ one) ≫ mul = (ρ_ X).hom := by aesop_cat
  -- Obviously there is some flexibility stating this axiom.
  -- This one has left- and right-hand sides matching the statement of `Monoid.mul_assoc`,
  -- and chooses to place the associator on the right-hand side.
  -- The heuristic is that unitors and associators "don't have much weight".
  mul_assoc : (mul ▷ X) ≫ mul = (α_ X X X).hom ≫ (X ◁ mul) ≫ mul := by aesop_cat

attribute [reassoc] Mon_.one_mul Mon_.mul_one

attribute [simp] Mon_.one_mul Mon_.mul_one

-- We prove a more general `@[simp]` lemma below.
attribute [reassoc (attr := simp)] Mon_.mul_assoc

namespace Mon_

/-- Construct an object of `Mon_ C` from an object `X : C` and `Mon_Class X` instance. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant41cd7dbea5af9a108cc50b4d32008c4b483f6104ee5862c5b4d3b97e62e34e4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant41cd7dbea5af9a108cc50b4d32008c4b483f6104ee5862c5b4d3b97e62e34e4c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a24c902eff6112a61b8b3e122483a1035f2d2953` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
