# Abelian.tfae_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aeadad58-9048-353f-4a80-930b4c98e319",
  "kind": "theorem",
  "lexical_name": "Abelian.tfae_epi",
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
  "slug": "abelian-tfae-epi--bf9c3c07787913561fdf0466",
  "source": {
    "blob": "9d61bc66107b5a0cb6a82ed9ae8aea839662dd0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf9c3c07787913561fdf0466207e696157c69f15667abf7ff810102527a535bb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aeadad58-9048-353f-4a80-930b4c98e319`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Abelian.tfae_epi {X Y : C} (f : X ⟶ Y) (Z : C) :
    TFAE [Epi f, cokernel.π f = 0, (ShortComplex.mk f (0 : Y ⟶ Z) comp_zero).Exact] := by
  tfae_have 2 → 1 := epi_of_cokernel_π_eq_zero _
  tfae_have 1 → 2
  | _ => by rw [← cancel_epi f, cokernel.condition, comp_zero]
  tfae_have 3 ↔ 1 := ShortComplex.exact_iff_epi _ (by simp)
  tfae_finish

end

namespace Functor

section

variable {D : Type u₂} [Category.{v₂} D] [Abelian D]
variable (F : C ⥤ D) [PreservesZeroMorphisms F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variante1567440e0c5c5f26228c17b75152c77062316f0094b85c5bdeec4aa64a91328.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d61bc66107b5a0cb6a82ed9ae8aea839662dd0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
