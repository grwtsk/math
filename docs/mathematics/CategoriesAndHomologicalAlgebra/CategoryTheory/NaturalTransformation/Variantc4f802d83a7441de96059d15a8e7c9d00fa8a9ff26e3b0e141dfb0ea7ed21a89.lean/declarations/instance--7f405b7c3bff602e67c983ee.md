# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d39b30eb67d167fa6123a794f0859ab41aad9399ab896fff13136145d4ba33c6",
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
  "slug": "instance--7f405b7c3bff602e67c983ee",
  "source": {
    "blob": "ab04785d4920da3dd41ec6d8fc24dd0a210ce37d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantc4f802d83a7441de96059d15a8e7c9d00fa8a9ff26e3b0e141dfb0ea7ed21a89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f405b7c3bff602e67c983ee7de24a966ca61111fdb2378fec7ee51941bdd6f6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantc4f802d83a7441de96059d15a8e7c9d00fa8a9ff26e3b0e141dfb0ea7ed21a89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d39b30eb67d167fa6123a794f0859ab41aad9399ab896fff13136145d4ba33c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {F G : C ⥤ D} {H K : C ⥤ E} (α : F ⟶ G) (β : H ⟶ K)
    [F.LaxMonoidal] [G.LaxMonoidal] [IsMonoidal α]
    [H.LaxMonoidal] [K.LaxMonoidal] [IsMonoidal β] :
    IsMonoidal (NatTrans.prod' α β) where
  unit := by
    ext
    · rw [prod_comp_fst, prod'_ε_fst, prod'_ε_fst, prod'_app_fst, IsMonoidal.unit]
    · rw [prod_comp_snd, prod'_ε_snd, prod'_ε_snd, prod'_app_snd, IsMonoidal.unit]
  tensor X Y := by
    ext
    · simp only [prod_comp_fst, prod'_μ_fst, prod'_app_fst,
        prodMonoidal_tensorHom, IsMonoidal.tensor]
    · simp only [prod_comp_snd, prod'_μ_snd, prod'_app_snd,
        prodMonoidal_tensorHom, IsMonoidal.tensor]

end NatTrans

namespace Iso

variable (e : F₁ ≅ F₂) [NatTrans.IsMonoidal e.hom]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantc4f802d83a7441de96059d15a8e7c9d00fa8a9ff26e3b0e141dfb0ea7ed21a89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantc4f802d83a7441de96059d15a8e7c9d00fa8a9ff26e3b0e141dfb0ea7ed21a89.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab04785d4920da3dd41ec6d8fc24dd0a210ce37d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
