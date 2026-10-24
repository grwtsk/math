# Coalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:970285839dcaf5db424e9320becf2aea7be2d26fd187530847f042bb76fe7e25",
  "kind": "structure",
  "lexical_name": "Coalgebra",
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
  "slug": "coalgebra--f0c81f2e2028dc8d3f126db8",
  "source": {
    "blob": "0edc2705521d97ed13f9b42d2cec0362d86bfee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 322,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0c81f2e2028dc8d3f126db88c5f132ee41d88aee6ada9408aaf339018bab8ec",
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

Occurrence: `declaration:970285839dcaf5db424e9320becf2aea7be2d26fd187530847f042bb76fe7e25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Coalgebra (G : Comonad C) : Type max u₁ v₁ where
  /-- The underlying object associated to a coalgebra. -/
  A : C
  /-- The structure morphism associated to a coalgebra. -/
  a : A ⟶ (G : C ⥤ C).obj A
  /-- The counit axiom associated to a coalgebra. -/
  counit : a ≫ G.ε.app A = 𝟙 A := by aesop_cat
  /-- The coassociativity axiom associated to a coalgebra. -/
  coassoc : a ≫ G.δ.app A = a ≫ G.map a := by aesop_cat
#align category_theory.comonad.coalgebra CategoryTheory.Comonad.Coalgebra

-- Porting note: manually adding aligns.
set_option linter.uppercaseLean3 false in
#align category_theory.comonad.coalgebra.A CategoryTheory.Comonad.Coalgebra.A

#align category_theory.comonad.coalgebra.a CategoryTheory.Comonad.Coalgebra.a
#align category_theory.comonad.coalgebra.counit CategoryTheory.Comonad.Coalgebra.counit
#align category_theory.comonad.coalgebra.coassoc CategoryTheory.Comonad.Coalgebra.coassoc


-- Porting note: no need to restate axioms in lean4.

--restate_axiom coalgebra.counit'

--restate_axiom coalgebra.coassoc'

attribute [reassoc] Coalgebra.counit Coalgebra.coassoc

namespace Coalgebra

variable {G : Comonad C}

/-- A morphism of Eilenberg-Moore coalgebras for the comonad `G`. -/
--@[ext, nolint has_nonempty_instance]
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0edc2705521d97ed13f9b42d2cec0362d86bfee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
