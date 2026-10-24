# Scheme.Hom.dense_smoothLocus_of_perfectField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36147868-062e-766e-9ef5-7b48ce9d3770",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.dense_smoothLocus_of_perfectField",
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
  "slug": "scheme-hom-dense-smoothlocus-of-perfectfield--e03bac0b20b2be1bdfe9d2e3",
  "source": {
    "blob": "d5d4198b84337a3a5f5f38945cd0e541cebbd76e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 360,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e03bac0b20b2be1bdfe9d2e3b534eb0c8332ce8dc0d5ee1a3762e9ea6c2c2dfa",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36147868-062e-766e-9ef5-7b48ce9d3770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.dense_smoothLocus_of_perfectField
    {K : Type u} [Field K] [PerfectField K] [IsReduced X]
    (f : X ⟶ Spec (.of K)) [LocallyOfFinitePresentation f] : Dense (f.smoothLocus : Set X) := by
  wlog H : CompactSpace X generalizing X
  · rw [dense_iff_closure_eq, Set.eq_univ_iff_forall]
    intro x
    obtain ⟨_, ⟨U : X.Opens, hU, rfl⟩, hxU, -⟩ :=
      X.isBasis_affineOpens.exists_subset_of_mem_open (Set.mem_univ x) isOpen_univ
    have := this (U.ι ≫ f) (isCompact_iff_compactSpace.mp hU.isCompact) ⟨x, hxU⟩
    rwa [← preimage_smoothLocus_eq, Scheme.Hom.coe_preimage,
      ← U.ι.isOpenEmbedding.isOpenMap.preimage_closure_eq_closure_preimage U.ι.continuous,
      Set.mem_preimage, U.ι_apply] at this
  have : IsNoetherian X := { __ := LocallyOfFiniteType.isLocallyNoetherian f }
  rw [dense_iff_closure_eq, Set.eq_univ_iff_forall]
  intro x
  let U : X.Opens :=
    ⟨(⋃₀ (irreducibleComponents X \ {irreducibleComponent x}))ᶜ, by
      rw [Set.sUnion_eq_biUnion, isOpen_compl_iff]
      exact TopologicalSpace.NoetherianSpace.finite_irreducibleComponents.sdiff.isClosed_biUnion
        fun W hW ↦ isClosed_of_mem_irreducibleComponents W hW.1⟩
  have hU : closure U = irreducibleComponent x :=
    closure_sUnion_irreducibleComponents_sdiff_singleton
      TopologicalSpace.NoetherianSpace.finite_irreducibleComponents
      _ (irreducibleComponent_mem_irreducibleComponents x)
  have : AlgebraicGeometry.IsIntegral U :=
    have : IrreducibleSpace U := isIrreducible_iff_irreducibleSpace.mp
      (isIrreducible_iff_closure.mp (hU ▸ isIrreducible_irreducibleComponent))
    isIntegral_of_irreducibleSpace_of_isReduced _
  have : U.ι (genericPoint U) ∈ f.smoothLocus := by
    have := (U.ι ≫ f).genericPoint_mem_smoothLocus_of_perfectField
    rwa [← preimage_smoothLocus_eq, Scheme.Hom.mem_preimage] at this
  exact (((genericPoint_spec U).image U.ι.continuous).specializes (y := x)
    (by rw [Set.image_univ, U.range_ι, hU]; exact mem_irreducibleComponent)).mem_closed
    isClosed_closure (subset_closure this)

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5d4198b84337a3a5f5f38945cd0e541cebbd76e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
