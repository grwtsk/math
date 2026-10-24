# H1CoresCoinf_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22c518b3-ed57-f69e-974d-46260cdcad73",
  "kind": "theorem",
  "lexical_name": "H1CoresCoinf_exact",
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
  "slug": "h1corescoinf-exact--544682783bffb2c3cc9292cb",
  "source": {
    "blob": "8e0b9a3f030f6296c8e9aad3fde22f5439e1007e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 630,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:544682783bffb2c3cc9292cbd43fe96e45f02eebc058f66089047c4731f10e7f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22c518b3-ed57-f69e-974d-46260cdcad73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 630–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem H1CoresCoinf_exact :
    (H1CoresCoinf A S).Exact := by
  rw [ShortComplex.moduleCat_exact_iff_ker_sub_range]
  intro x hx
  induction x using H1_induction_on with | @h x =>
  simp only [H1CoresCoinf_X₂, H1CoresCoinf_X₃, LinearMap.mem_ker, H1CoresCoinf_g,
    H1π_comp_map_apply (QuotientGroup.mk' S)] at hx
/- Let `x : Z₁(G, A)` map to 0 in `H₁(G, ⧸ S, A_S)`. Pick `y : C₂(G ⧸ S, A_S)` such that `d(y)`
equals `Z₁(π, π)(x) : Z₁(G ⧸ S, A_S)`. -/
  rcases (H1π_eq_zero_iff _).1 hx with ⟨y, hy⟩
/- Then `Z₁(π, Id)(x) : Z₁(G, A_S)` maps to 0 in `H₁(G ⧸ S, A_S)`. We know
`H₁(S, A_S) ⟶ H₁(G, A_S) ⟶ H₁(G ⧸ S, A_S)` is exact by `H1CoresCoinfOfTrivial_exact`, since
`S` acts trivially on `A_S`. So we can choose `z : Z₁(S, A_S)` with the same homology class as
`Z₁(π, Id)(π)` in `H₁(G, A_S)`. -/
  rcases @(ShortComplex.moduleCat_exact_iff_ker_sub_range _).1
    (H1CoresCoinfOfTrivial_exact (toCoinvariants A S) S)
    (H1π _ <| mapCycles₁ (MonoidHom.id G) (Rep.toCoinvariantsMkQ A S) x) (by
    simpa only [H1CoresCoinfOfTrivial_X₂, H1CoresCoinfOfTrivial_X₃, H1CoresCoinfOfTrivial_g,
      Iso.refl_inv, LinearMap.mem_ker, H1π_comp_map_apply (QuotientGroup.mk' S),
      ← mapCycles₁_comp_apply (x := x)] using! hx) with ⟨z, hz⟩
  induction z using H1_induction_on with | @h z =>
  simp only [H1CoresCoinfOfTrivial_X₂, H1CoresCoinfOfTrivial_X₁, H1CoresCoinfOfTrivial_f] at hz
  rw [H1π_comp_map_apply] at hz
/- Choose `w : C₂(G, A_S)` such that `d(w) = Z₁(i, Id)(z) - Z₁(Id, π)(x)`. -/
  rcases (H1π_eq_iff _ _).1 hz with ⟨w, hzw⟩
/- Choose `Z : C₁(S, A)` mapping to `z : C₁(S, A_S)`, and `W : C₂(G, A)` mapping to
`w : C₂(G, A_S)`. -/
  rcases mapRange_surjective (Coinvariants.mk _) (map_zero _)
    (Coinvariants.mk_surjective _) z.1 with ⟨Z, hZ⟩
  rcases mapRange_surjective (Coinvariants.mk _) (map_zero _)
    (Coinvariants.mk_surjective _) w with ⟨W, hW⟩
/- Let `b : C₁(G, A)` denote `x + d(W) - C₁(i, Id)(z)`. -/
  let b : G →₀ A := (x.1 : G →₀ A) + d₂₁ A W - lmapDomain _ k S.subtype Z
/- Then `b` has coefficients in `I(S)A := ⟨{ρ(s)(a) - a | s ∈ S, a ∈ A}⟩`, since
`C₁(G, I(S)(A)) ⟶ C₁(G, A) ⟶ C₁(G, A_S)` is exact, and `b` is in the kernel of the second map. -/
  have hb : ∀ g, b g ∈ Coinvariants.ker (A.ρ.comp S.subtype) :=
    fun g => (Coinvariants.mk_eq_iff _).1 <| by
      have := Finsupp.ext_iff.1 (congr($((mapShortComplexH1 (B := toCoinvariants A S)
        (MonoidHom.id G) (toCoinvariantsMkQ A S)).comm₁₂.symm) W)) g
      simp only [shortComplexH1, mapShortComplexH1_τ₂, ModuleCat.ofHom_comp, MonoidHom.coe_id,
        lmapDomain_id, ModuleCat.ofHom_id, res_obj_ρ, hom_ofHom, Category.id_comp,
        mapShortComplexH1_τ₁, Prod.map_id, ModuleCat.hom_comp, ModuleCat.hom_ofHom,
        LinearMap.coe_comp, Function.comp_apply, mapRange.linearMap_apply, mapRange_apply] at this
      simp only [← mapRange_apply (f := Coinvariants.mk <| A.ρ.comp S.subtype)
        (hf := map_zero _) (a := g), ← mapRange.linearMap_apply (R := k)]
      simp [← mapDomain_mapRange, hZ, this, hW, hzw, coe_mapCycles₁ S.subtype,
        coe_mapCycles₁ (MonoidHom.id G)]
/- Let `β` be `b` considered as an element of `C₁(G, I(S)(A))`, so that `C₁(Id, i)(β) = b`. -/
  let β : G →₀ Coinvariants.ker (A.ρ.comp S.subtype) :=
    mapRange (Function.invFun <| (Coinvariants.ker (A.ρ.comp S.subtype)).subtype)
    (Function.leftInverse_invFun Subtype.val_injective (0 : Coinvariants.ker _)) b
  have hβb : mapRange Subtype.val rfl β = b := Finsupp.ext fun g => Subtype.ext_iff.1 <|
    Function.leftInverse_invFun Subtype.val_injective ⟨b g, hb g⟩
/- Then, since the image of `C₁(G, I(S)A)` in `C₁(G, A)⧸B₁(G, A)` is contained in the image of
`C₁(S, A)` by `comap_coinvariantsKer_pOpcycles_range_subtype_pOpcycles_eq_top`, we can choose
`α : C₁(S, A)`, `δ : C₂(G, A)` such that `d(δ) = Z₁(i, Id)(α) - Z₁(Id, i)(β)`. -/
  rcases eq_top_iff.1 (comap_coinvariantsKer_pOpcycles_range_subtype_pOpcycles_eq_top A S)
    (by trivial : β ∈ ⊤) with ⟨(α : S →₀ A), hα⟩
  dsimp only [ModuleCat.hom_comp] at hα
  rcases (moduleCat_pOpcycles_eq_iff _ _ _).1 hα with ⟨(δ : G × G →₀ A), hβ⟩
/- Then, by assumption, `d(W + δ) = C₁(i, Id)(α + Z) - x`. -/
  have hαZ : d₂₁ A (W + δ) = mapDomain Subtype.val (α + Z) - x := by
    simp_all [shortComplexH1, coinvariantsShortComplex_X₁,
      ← sub_add, ← sub_sub, sub_add_eq_add_sub, mapDomain_add, b]
/- So we claim that `α + Z` is an element of `Z₁(S, A)` which differs from `x` by a boundary in
`Z₁(G, A)`. -/
  use H1π _ ⟨α + Z, ?_⟩
/- Indeed, by `hαZ`, `d(W + δ)` is the desired boundary: -/
  · simp only [H1CoresCoinf_X₂, H1CoresCoinf_X₁, H1CoresCoinf_f, H1π_comp_map_apply]
    refine (H1π_eq_iff _ _).2 ⟨W + δ, ?_⟩
    simp [hαZ, mapCycles₁_hom]
/- And `α + Z` is a cycle, since `d(W + δ) + x` is. -/
  · rw [mem_cycles₁_iff]
    have : x + d₂₁ A (W + δ) ∈ cycles₁ A := Submodule.add_mem _ x.2 (d₂₁_apply_mem_cycles₁ _)
    rwa [eq_sub_iff_add_eq'.1 hαZ, mem_cycles₁_iff, sum_mapDomain_index_inj
      Subtype.val_injective, sum_mapDomain_index_inj Subtype.val_injective] at this

end CoresCoinf

end H1

section H2

/-- Given a group homomorphism `f : G →* H` and a representation morphism `φ : A ⟶ Res(f)(B)`,
this is the induced map from the short complex
`(G × G × G →₀ A) --d₃₂--> (G × G →₀ A) --d₂₁--> (G →₀ A)` to
`(H × H × H →₀ B) --d₃₂--> (H × H →₀ B) --d₂₁--> (H →₀ B)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant2ab22df89253d7353cd8382ef46307c590d21fdbe2e35f59fd3478a27b9ba4e1.lean#L630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e0b9a3f030f6296c8e9aad3fde22f5439e1007e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
