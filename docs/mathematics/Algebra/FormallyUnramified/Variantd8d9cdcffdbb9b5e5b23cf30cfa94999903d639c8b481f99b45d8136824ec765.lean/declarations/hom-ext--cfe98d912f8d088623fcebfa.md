# hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0514f4a1-1dfd-ee69-c576-f129c26adda4",
  "kind": "lemma",
  "lexical_name": "hom_ext",
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
  "slug": "hom-ext--cfe98d912f8d088623fcebfa",
  "source": {
    "blob": "7cae1f37c7a807e19f1382e90c51d11389c0f56b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 198,
    "path": "GRWTSK/Algebra/FormallyUnramified/Variantd8d9cdcffdbb9b5e5b23cf30cfa94999903d639c8b481f99b45d8136824ec765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfe98d912f8d088623fcebfaa6a6aa830fbf31cca47c76847e4020b8890e4758",
  "verification": {
    "reference": "docs/verification/Algebra/FormallyUnramified/Variantd8d9cdcffdbb9b5e5b23cf30cfa94999903d639c8b481f99b45d8136824ec765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0514f4a1-1dfd-ee69-c576-f129c26adda4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
protected lemma hom_ext {Z' Z : Scheme} (i : Z' ⟶ Z) (hi : IsNilpotent i.ker) [IsClosedImmersion i]
    (f : X ⟶ Y) [FormallyUnramified f]
    {g₁ g₂ : Z ⟶ X} (hig : i ≫ g₁ = i ≫ g₂) (hgf : g₁ ≫ f = g₂ ≫ f) : g₁ = g₂ := by
  have : IsDominant i := by
    obtain ⟨n, hn⟩ := hi
    rw [isDominant_iff, denseRange_iff_closure_range, ← i.support_ker,
      ← i.ker.support_pow (n + 1) (by simp), pow_succ, hn]
    simp
  refine Scheme.hom_ext_of_forall _ _ fun x ↦ ?_
  obtain ⟨_, ⟨U, hU, rfl⟩, hxU, -⟩ :=
    Y.isBasis_affineOpens.exists_subset_of_mem_open (Set.mem_univ (f (g₁ x))) isOpen_univ
  obtain ⟨_, ⟨V, hV, rfl⟩, hxV, hVU : V ≤ f ⁻¹ᵁ U⟩ :=
    X.isBasis_affineOpens.exists_subset_of_mem_open hxU (f ⁻¹ᵁ U).isOpen
  have : g₁.base = g₂.base := by ext x; obtain ⟨x, rfl⟩ := i.surjective x; exact congr($hig x)
  obtain ⟨_, ⟨W, hW, rfl⟩, hxW, hWV : W ≤ _⟩ := Z.isBasis_affineOpens.exists_subset_of_mem_open
    (And.intro hxV (by simpa [← this])) (g₁ ⁻¹ᵁ V ⊓ g₂ ⁻¹ᵁ V).isOpen
  refine ⟨W, hxW, ?_⟩
  have := f.formallyUnramified_appLE hU hV hVU
  algebraize [(f.appLE U V hVU).hom,
    ((g₁ ≫ f).appLE U W (by grw [hWV, inf_le_left, hVU]; rfl)).hom]
  let ψ₁ : Γ(X, V) →ₐ[Γ(Y, U)] Γ(Z, W) := ⟨(g₁.appLE _ _ (hWV.trans inf_le_left)).hom, fun r ↦ by
    simp [RingHom.algebraMap_toAlgebra, ← CategoryTheory.comp_apply, -CommRingCat.hom_comp,
      Scheme.Hom.appLE_comp_appLE]⟩
  let ψ₂ : Γ(X, V) →ₐ[Γ(Y, U)] Γ(Z, W) := ⟨(g₂.appLE _ _ (hWV.trans inf_le_right)).hom, fun r ↦ by
    simp [RingHom.algebraMap_toAlgebra, ← CategoryTheory.comp_apply, -CommRingCat.hom_comp,
      Scheme.Hom.appLE_comp_appLE, hgf, -Scheme.Hom.comp_appLE]⟩
  suffices ψ₁ = ψ₂ by
    simpa [ψ₁, ψ₂, -Iso.cancel_iso_hom_left, IsAffineOpen.isoSpec_hom] using
      congr(hW.isoSpec.hom ≫ Spec.map (CommRingCat.ofHom ($this).toRingHom) ≫ hV.fromSpec)
  refine Algebra.FormallyUnramified.ext' (i.app W).hom ?_ ψ₁ ψ₂ ?_
  · obtain ⟨n, hn⟩ := hi
    exact ⟨n, by simpa using congr(($hn).ideal ⟨W, hW⟩)⟩
  · simp [ψ₁, ψ₂, ← CategoryTheory.comp_apply, -CommRingCat.hom_comp, hig,
      Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE, -Scheme.Hom.comp_appLE]

/--
To show that `f : X ⟶ Y` is formally unramified,
it suffices to check for that every following commuting diagram
```
Spec R --→ X
  |        |
  ↓        ↓
Spec S --→ Y
```
with `S = R/I` for some `I² = 0`, there exists at most one arrow `Spec S ⟶ X` making
the diagram commute.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FormallyUnramified/Variantd8d9cdcffdbb9b5e5b23cf30cfa94999903d639c8b481f99b45d8136824ec765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FormallyUnramified/Variantd8d9cdcffdbb9b5e5b23cf30cfa94999903d639c8b481f99b45d8136824ec765.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cae1f37c7a807e19f1382e90c51d11389c0f56b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
