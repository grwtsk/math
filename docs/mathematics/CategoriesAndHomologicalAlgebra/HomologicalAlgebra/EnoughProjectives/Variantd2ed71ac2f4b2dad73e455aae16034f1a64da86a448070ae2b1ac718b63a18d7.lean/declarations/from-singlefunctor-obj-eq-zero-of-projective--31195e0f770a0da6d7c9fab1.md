# from_singleFunctor_obj_eq_zero_of_projective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2e1d03cfc2422a5e26fe2c2fdf73c719040932e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2ed71ac2f4b2dad73e455aae16034f1a64da86a448070ae2b1ac718b63a18d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d87c10a-bd4f-33f5-83a5-c1482cff095c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5e59ca4-24a4-e561-5ff0-6df7032392b5",
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
  "slug": "from-singlefunctor-obj-eq-zero-of-projective--31195e0f770a0da6d7c9fab1",
  "source": {
    "blob": "a2e1d03cfc2422a5e26fe2c2fdf73c719040932e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variantd2ed71ac2f4b2dad73e455aae16034f1a64da86a448070ae2b1ac718b63a18d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31195e0f770a0da6d7c9fab1f7414e84de7de77e0d1821352523bf7d569a5c6d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variantd2ed71ac2f4b2dad73e455aae16034f1a64da86a448070ae2b1ac718b63a18d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5e59ca4-24a4-e561-5ff0-6df7032392b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma from_singleFunctor_obj_eq_zero_of_projective {P : C} [Projective P]
    {L : CochainComplex C ℤ} {i : ℤ}
    (φ : Q.obj ((CochainComplex.singleFunctor C i).obj P) ⟶ Q.obj L)
    (n : ℤ) (hn : n < i) [L.IsStrictlyLE n] :
    φ = 0 := by
  obtain ⟨K, _, π, h, g, rfl⟩ := right_fac_of_isStrictlyLE φ i
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variantd2ed71ac2f4b2dad73e455aae16034f1a64da86a448070ae2b1ac718b63a18d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughProjectives/Variantd2ed71ac2f4b2dad73e455aae16034f1a64da86a448070ae2b1ac718b63a18d7.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2e1d03cfc2422a5e26fe2c2fdf73c719040932e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
