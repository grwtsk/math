# to_singleFunctor_obj_eq_zero_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bb8ca74-7dad-3b05-343b-0c16d600a05a",
  "kind": "lemma",
  "lexical_name": "to_singleFunctor_obj_eq_zero_of_injective",
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
  "slug": "to-singlefunctor-obj-eq-zero-of-injective--f47ca329cf007bf3bb8acee8",
  "source": {
    "blob": "672f478cf57345f134ee42f425dee9cfa7a1f7db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variantfd4b39966679a9360c77eb2201e5b3ed37b3f5589b4e48834f04856287a18705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f47ca329cf007bf3bb8acee87521f3a252b29979b220aacef6dfc52c5112b264",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variantfd4b39966679a9360c77eb2201e5b3ed37b3f5589b4e48834f04856287a18705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bb8ca74-7dad-3b05-343b-0c16d600a05a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma to_singleFunctor_obj_eq_zero_of_injective {I : C} [Injective I]
    {K : CochainComplex C ℤ} {i : ℤ}
    (φ : Q.obj K ⟶ Q.obj ((CochainComplex.singleFunctor C i).obj I))
    (n : ℤ) (hn : i < n) [K.IsStrictlyGE n] :
    φ = 0 := by
  obtain ⟨L, _, g, ι, h, rfl⟩ := left_fac_of_isStrictlyGE φ i
  have hπ : IsSplitMono ι := by
    rw [isIso_Q_map_iff_quasiIso] at h
    exact CochainComplex.isSplitMono_from_singleFunctor_obj_of_injective ι
  have h₁ : inv (Q.map ι) = Q.map (retraction ι) := by
    rw [← cancel_epi (Q.map ι), IsIso.hom_inv_id, ← Q.map_comp, IsSplitMono.id, Q.map_id]
  have h₂ : g ≫ retraction ι = 0 := by
    apply HomologicalComplex.to_single_hom_ext
    apply (K.isZero_of_isStrictlyGE n i hn).eq_of_src
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variantfd4b39966679a9360c77eb2201e5b3ed37b3f5589b4e48834f04856287a18705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variantfd4b39966679a9360c77eb2201e5b3ed37b3f5589b4e48834f04856287a18705.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `672f478cf57345f134ee42f425dee9cfa7a1f7db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
