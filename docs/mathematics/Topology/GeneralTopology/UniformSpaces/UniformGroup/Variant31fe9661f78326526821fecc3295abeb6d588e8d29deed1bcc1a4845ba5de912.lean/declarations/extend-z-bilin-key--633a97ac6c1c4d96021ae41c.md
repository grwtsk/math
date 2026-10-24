# extend_Z_bilin_key

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd42c6af-b392-dc09-998d-f0e2da0a84de",
  "kind": "theorem",
  "lexical_name": "extend_Z_bilin_key",
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
  "slug": "extend-z-bilin-key--633a97ac6c1c4d96021ae41c",
  "source": {
    "blob": "9806d296e7fa4c77a4cb143734ab3e4a722b7f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 846,
    "line": 793,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variant31fe9661f78326526821fecc3295abeb6d588e8d29deed1bcc1a4845ba5de912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:633a97ac6c1c4d96021ae41c4f2a661bfdf81343d4464a3356895a28bd48f03d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variant31fe9661f78326526821fecc3295abeb6d588e8d29deed1bcc1a4845ba5de912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd42c6af-b392-dc09-998d-f0e2da0a84de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 793–846.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem extend_Z_bilin_key (x₀ : α) (y₀ : γ) : ∃ U ∈ comap e (𝓝 x₀), ∃ V ∈ comap f (𝓝 y₀),
    ∀ (x) (_ : x ∈ U) (x') (_ : x' ∈ U), ∀ (y) (_ : y ∈ V) (y') (_ : y' ∈ V),
    (fun p : β × δ => φ p.1 p.2) (x', y') - (fun p : β × δ => φ p.1 p.2) (x, y) ∈ W' := by
  let ee := fun u : β × β => (e u.1, e u.2)
  let ff := fun u : δ × δ => (f u.1, f u.2)
  have lim_φ : Filter.Tendsto (fun p : β × δ => φ p.1 p.2) (𝓝 (0, 0)) (𝓝 0) := by
    simpa using hφ.tendsto (0, 0)
  have lim_φ_sub_sub :
    Tendsto (fun p : (β × β) × δ × δ => (fun p : β × δ => φ p.1 p.2) (p.1.2 - p.1.1, p.2.2 - p.2.1))
      ((comap ee <| 𝓝 (x₀, x₀)) ×ˢ (comap ff <| 𝓝 (y₀, y₀))) (𝓝 0) := by
    have lim_sub_sub :
      Tendsto (fun p : (β × β) × δ × δ => (p.1.2 - p.1.1, p.2.2 - p.2.1))
        (comap ee (𝓝 (x₀, x₀)) ×ˢ comap ff (𝓝 (y₀, y₀))) (𝓝 0 ×ˢ 𝓝 0) := by
      have := Filter.prod_mono (tendsto_sub_comap_self de x₀) (tendsto_sub_comap_self df y₀)
      rwa [prod_map_map_eq] at this
    rw [← nhds_prod_eq] at lim_sub_sub
    exact Tendsto.comp lim_φ lim_sub_sub
  rcases exists_nhds_zero_quarter W'_nhd with ⟨W, W_nhd, W4⟩
  have :
    ∃ U₁ ∈ comap e (𝓝 x₀), ∃ V₁ ∈ comap f (𝓝 y₀), ∀ (x) (_ : x ∈ U₁) (x') (_ : x' ∈ U₁),
      ∀ (y) (_ : y ∈ V₁) (y') (_ : y' ∈ V₁), (fun p : β × δ => φ p.1 p.2) (x' - x, y' - y) ∈ W := by
    rcases tendsto_prod_iff.1 lim_φ_sub_sub W W_nhd with ⟨U, U_in, V, V_in, H⟩
    rw [nhds_prod_eq, ← prod_comap_comap_eq, mem_prod_same_iff] at U_in V_in
    rcases U_in with ⟨U₁, U₁_in, HU₁⟩
    rcases V_in with ⟨V₁, V₁_in, HV₁⟩
    exists U₁, U₁_in, V₁, V₁_in
    intro x x_in x' x'_in y y_in y' y'_in
    exact H _ _ (HU₁ (mk_mem_prod x_in x'_in)) (HV₁ (mk_mem_prod y_in y'_in))
  rcases this with ⟨U₁, U₁_nhd, V₁, V₁_nhd, H⟩
  obtain ⟨x₁, x₁_in⟩ : U₁.Nonempty := (de.comap_nhds_neBot _).nonempty_of_mem U₁_nhd
  obtain ⟨y₁, y₁_in⟩ : V₁.Nonempty := (df.comap_nhds_neBot _).nonempty_of_mem V₁_nhd
  have cont_flip : Continuous fun p : δ × β => φ.flip p.1 p.2 := by
    show Continuous ((fun p : β × δ => φ p.1 p.2) ∘ Prod.swap)
    exact hφ.comp continuous_swap
  rcases extend_Z_bilin_aux de hφ W_nhd x₀ y₁ with ⟨U₂, U₂_nhd, HU⟩
  rcases extend_Z_bilin_aux df cont_flip W_nhd y₀ x₁ with ⟨V₂, V₂_nhd, HV⟩
  exists U₁ ∩ U₂, inter_mem U₁_nhd U₂_nhd, V₁ ∩ V₂, inter_mem V₁_nhd V₂_nhd
  rintro x ⟨xU₁, xU₂⟩ x' ⟨x'U₁, x'U₂⟩ y ⟨yV₁, yV₂⟩ y' ⟨y'V₁, y'V₂⟩
  have key_formula :
    φ x' y' - φ x y = φ (x' - x) y₁ + φ (x' - x) (y' - y₁) + φ x₁ (y' - y) + φ (x - x₁) (y' - y) :=
    by simp; abel
  rw [key_formula]
  have h₁ := HU x xU₂ x' x'U₂
  have h₂ := H x xU₁ x' x'U₁ y₁ y₁_in y' y'V₁
  have h₃ := HV y yV₂ y' y'V₂
  have h₄ := H x₁ x₁_in x xU₁ y yV₁ y' y'V₁
  exact W4 h₁ h₂ h₃ h₄
#noalign dense_inducing.extend_Z_bilin_key

open DenseInducing

/-- Bourbaki GT III.6.5 Theorem I:
ℤ-bilinear continuous maps from dense images into a complete Hausdorff group extend by continuity.
Note: Bourbaki assumes that α and β are also complete Hausdorff, but this is not necessary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variant31fe9661f78326526821fecc3295abeb6d588e8d29deed1bcc1a4845ba5de912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformGroup/Variant31fe9661f78326526821fecc3295abeb6d588e8d29deed1bcc1a4845ba5de912.lean#L793).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9806d296e7fa4c77a4cb143734ab3e4a722b7f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
