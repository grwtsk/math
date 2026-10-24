# ShiftMkCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:791e7ce0ef107f40f5f58aa37afd2f5c3f3d90f452636e5c3c0e1216dac318c1",
  "kind": "structure",
  "lexical_name": "ShiftMkCore",
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
  "slug": "shiftmkcore--2e735d959b6799fb12e31a52",
  "source": {
    "blob": "bb786d4a55e058897ddd79f445e6777af403446f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6d871b29b38b3c636c613d7e49354e0b9af5ad9850b4c0f9c748447919be6013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e735d959b6799fb12e31a529f650519054beaed9b697984dd8dba393e32ede9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6d871b29b38b3c636c613d7e49354e0b9af5ad9850b4c0f9c748447919be6013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:791e7ce0ef107f40f5f58aa37afd2f5c3f3d90f452636e5c3c0e1216dac318c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ShiftMkCore where
  /-- the family of shift functors -/
  F : A → C ⥤ C
  /-- the shift by 0 identifies to the identity functor -/
  zero : F 0 ≅ 𝟭 C
  /-- the composition of shift functors identifies to the shift by the sum -/
  add : ∀ n m : A, F (n + m) ≅ F n ⋙ F m
  /-- compatibility with the associativity -/
  assoc_hom_app : ∀ (m₁ m₂ m₃ : A) (X : C),
    (add (m₁ + m₂) m₃).hom.app X ≫ (F m₃).map ((add m₁ m₂).hom.app X) =
      eqToHom (by rw [add_assoc]) ≫ (add m₁ (m₂ + m₃)).hom.app X ≫
        (add m₂ m₃).hom.app ((F m₁).obj X) := by aesop_cat
  /-- compatibility with the left addition with 0 -/
  zero_add_hom_app : ∀ (n : A) (X : C), (add 0 n).hom.app X =
    eqToHom (by dsimp; rw [zero_add]) ≫ (F n).map (zero.inv.app X) := by aesop_cat
  /-- compatibility with the right addition with 0 -/
  add_zero_hom_app : ∀ (n : A) (X : C), (add n 0).hom.app X =
    eqToHom (by dsimp; rw [add_zero]) ≫ zero.inv.app ((F n).obj X) := by aesop_cat
#align category_theory.shift_mk_core CategoryTheory.ShiftMkCore

namespace ShiftMkCore

variable {C A}

attribute [reassoc] assoc_hom_app

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6d871b29b38b3c636c613d7e49354e0b9af5ad9850b4c0f9c748447919be6013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6d871b29b38b3c636c613d7e49354e0b9af5ad9850b4c0f9c748447919be6013.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb786d4a55e058897ddd79f445e6777af403446f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
