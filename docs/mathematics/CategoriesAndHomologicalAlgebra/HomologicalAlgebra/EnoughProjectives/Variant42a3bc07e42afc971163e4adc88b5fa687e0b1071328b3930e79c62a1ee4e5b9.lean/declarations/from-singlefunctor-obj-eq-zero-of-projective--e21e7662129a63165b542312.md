# from_singleFunctor_obj_eq_zero_of_projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ae7e0fb-f450-88d0-9d91-ecd3cba84392",
  "kind": "lemma",
  "lexical_name": "from_singleFunctor_obj_eq_zero_of_projective",
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
  "slug": "from-singlefunctor-obj-eq-zero-of-projective--e21e7662129a63165b542312",
  "source": {
    "blob": "5c6842cd9cdf5d90a3d19ce07e38f735dd1abbc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variant42a3bc07e42afc971163e4adc88b5fa687e0b1071328b3930e79c62a1ee4e5b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e21e7662129a63165b542312eb086c1cd12240636a225e3c9f26f90da4f52f7e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variant42a3bc07e42afc971163e4adc88b5fa687e0b1071328b3930e79c62a1ee4e5b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ae7e0fb-f450-88d0-9d91-ecd3cba84392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma from_singleFunctor_obj_eq_zero_of_projective {P : C} [Projective P]
    {L : CochainComplex C ℤ} {i : ℤ}
    (φ : Q.obj ((CochainComplex.singleFunctor C i).obj P) ⟶ Q.obj L)
    (n : ℤ) (hn : n < i) [L.IsStrictlyLE n] :
    φ = 0 := by
  obtain ⟨K, _, π, h, g, rfl⟩:= right_fac_of_isStrictlyLE φ i
  have hπ : IsSplitEpi π := by
    rw [isIso_Q_map_iff_quasiIso] at h
    exact CochainComplex.isSplitEpi_to_singleFunctor_obj_of_projective π
  have h₁ : inv (Q.map π) = Q.map (section_ π) := by
    rw [← cancel_mono (Q.map π), IsIso.inv_hom_id, ← Q.map_comp, IsSplitEpi.id, Q.map_id]
  have h₂ : section_ π ≫ g = 0 := by
    apply HomologicalComplex.from_single_hom_ext
    apply (L.isZero_of_isStrictlyLE n i hn).eq_of_tgt
  rw [h₁, ← Q.map_comp, h₂, Q.map_zero]

end DerivedCategory

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C] [Abelian C]

namespace Abelian.Ext

open DerivedCategory

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variant42a3bc07e42afc971163e4adc88b5fa687e0b1071328b3930e79c62a1ee4e5b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variant42a3bc07e42afc971163e4adc88b5fa687e0b1071328b3930e79c62a1ee4e5b9.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c6842cd9cdf5d90a3d19ce07e38f735dd1abbc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
