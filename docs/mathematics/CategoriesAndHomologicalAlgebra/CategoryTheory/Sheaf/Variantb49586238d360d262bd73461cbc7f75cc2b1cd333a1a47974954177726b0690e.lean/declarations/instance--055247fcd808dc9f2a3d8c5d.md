# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:975152c1ed0f3620c350125b4e401ac9d0fbb347f77f557b7b5b558f01e43470",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--055247fcd808dc9f2a3d8c5d",
  "source": {
    "blob": "6480f3063939ca085691c063fbfc1eebe3957573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 457,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:055247fcd808dc9f2a3d8c5d146d7f25ec1dbd83c3024a3d4b00bd5afe2c6381",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:975152c1ed0f3620c350125b4e401ac9d0fbb347f77f557b7b5b558f01e43470`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Preadditive (Sheaf J A) where
  homGroup P Q := Sheaf.Hom.addCommGroup

end Preadditive

end CategoryTheory

namespace CategoryTheory

open Opposite CategoryTheory Category Limits Sieve

namespace Presheaf

-- Under here is the equalizer story, which is equivalent if A has products (and doesn't
-- make sense otherwise). It's described in https://stacks.math.columbia.edu/tag/00VL,
-- between 00VQ and 00VR.
variable {C : Type u₁} [Category.{v₁} C]

-- `A` is a general category; `A'` is a variant where the morphisms live in a large enough
-- universe to guarantee that we can take limits in A of things coming from C.
-- I would have liked to use something like `UnivLE.{max v₁ u₁, v₂}` as a hypothesis on
-- `A`'s morphism universe rather than introducing `A'` but I can't get it to work.
-- So, for now, results which need max v₁ u₁ ≤ v₂ are just stated for `A'` and `P' : Cᵒᵖ ⥤ A'`
-- instead.
variable {A : Type u₂} [Category.{v₂} A]
variable {A' : Type u₂} [Category.{max v₁ u₁} A']

variable (J : GrothendieckTopology C)

variable {U : C} (R : Presieve U)

variable (P : Cᵒᵖ ⥤ A) (P' : Cᵒᵖ ⥤ A')

section MultiequalizerConditions

/-- When `P` is a sheaf and `S` is a cover, the associated multifork is a limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6480f3063939ca085691c063fbfc1eebe3957573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
