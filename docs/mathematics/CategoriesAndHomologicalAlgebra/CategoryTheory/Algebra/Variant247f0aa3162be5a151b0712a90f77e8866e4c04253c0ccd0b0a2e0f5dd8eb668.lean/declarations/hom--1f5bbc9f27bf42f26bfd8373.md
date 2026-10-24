# Hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97e7a8e05644f1d62b7c5d437cfd65a225f69d324eb7350c4b673672dc2a51a4",
  "kind": "structure",
  "lexical_name": "Hom",
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
  "slug": "hom--1f5bbc9f27bf42f26bfd8373",
  "source": {
    "blob": "0edc2705521d97ed13f9b42d2cec0362d86bfee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f5bbc9f27bf42f26bfd83730852ed9564ad5ab086a488ed0c8b4db7d738c2a4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97e7a8e05644f1d62b7c5d437cfd65a225f69d324eb7350c4b673672dc2a51a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Hom (A B : Algebra T) where
  /-- The underlying morphism associated to a morphism of algebras. -/
  f : A.A ⟶ B.A
  /-- Compatibility with the structure morphism, for a morphism of algebras. -/
  h : (T : C ⥤ C).map f ≫ B.a = A.a ≫ f := by aesop_cat
#align category_theory.monad.algebra.hom CategoryTheory.Monad.Algebra.Hom

-- Porting note: Manually adding aligns.
#align category_theory.monad.algebra.hom.f CategoryTheory.Monad.Algebra.Hom.f
#align category_theory.monad.algebra.hom.h CategoryTheory.Monad.Algebra.Hom.h

-- Porting note: no need to restate axioms in lean4.
--restate_axiom hom.h

attribute [reassoc (attr := simp)] Hom.h

namespace Hom

/-- The identity homomorphism for an Eilenberg–Moore algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0edc2705521d97ed13f9b42d2cec0362d86bfee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
