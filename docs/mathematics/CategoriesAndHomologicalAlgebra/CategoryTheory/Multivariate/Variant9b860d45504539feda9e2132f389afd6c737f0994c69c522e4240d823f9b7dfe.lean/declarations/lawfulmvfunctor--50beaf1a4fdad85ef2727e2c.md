# LawfulMvFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25fa220a86bd307971f8a1e61864454291ce50a32f9ab27532226ea34e63a4c6",
  "kind": "class",
  "lexical_name": "LawfulMvFunctor",
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
  "slug": "lawfulmvfunctor--50beaf1a4fdad85ef2727e2c",
  "source": {
    "blob": "f91eb096aafc0da25f85ddc7ae80d0f97f2dae5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50beaf1a4fdad85ef2727e2c3b3805537af8a8ca3ea22c8289343fe96a2a944a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25fa220a86bd307971f8a1e61864454291ce50a32f9ab27532226ea34e63a4c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulMvFunctor {n : ℕ} (F : TypeVec n → Type*) [MvFunctor F] : Prop where
  /-- `map` preserved identities, i.e., maps identity on `α` to identity on `F α` -/
  id_map : ∀ {α : TypeVec n} (x : F α), TypeVec.id <$$> x = x
  /-- `map` preserves compositions -/
  comp_map :
    ∀ {α β γ : TypeVec n} (g : α ⟹ β) (h : β ⟹ γ) (x : F α), (h ⊚ g) <$$> x = h <$$> g <$$> x
#align is_lawful_mvfunctor LawfulMvFunctor

open Nat TypeVec

namespace MvFunctor

export LawfulMvFunctor (comp_map)

open LawfulMvFunctor

variable {α β γ : TypeVec.{u} n}

variable {F : TypeVec.{u} n → Type v} [MvFunctor F]

variable (P : α ⟹ «repeat» n Prop) (R : α ⊗ α ⟹ «repeat» n Prop)

/-- adapt `MvFunctor.LiftP` to accept predicates as arrows -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f91eb096aafc0da25f85ddc7ae80d0f97f2dae5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
