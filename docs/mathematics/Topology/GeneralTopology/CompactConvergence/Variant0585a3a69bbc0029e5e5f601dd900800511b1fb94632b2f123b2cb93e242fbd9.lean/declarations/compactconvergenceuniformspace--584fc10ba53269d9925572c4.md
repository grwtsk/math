# compactConvergenceUniformSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:071a24e0d69a1242a1e73c38ba00ef1031dda7ce7b5db63167af73d2502a92af",
  "kind": "instance",
  "lexical_name": "compactConvergenceUniformSpace",
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
  "slug": "compactconvergenceuniformspace--584fc10ba53269d9925572c4",
  "source": {
    "blob": "0788ac245737c102988379e8f3697a91ffdef77f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 326,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:584fc10ba53269d9925572c4dcc6fac83f56ea365b2f381d785bacc37abeb1e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:071a24e0d69a1242a1e73c38ba00ef1031dda7ce7b5db63167af73d2502a92af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance compactConvergenceUniformSpace : UniformSpace C(α, β)
    where
  uniformity := compactConvergenceUniformity
  refl := by
    simp only [compactConvergenceUniformity, and_imp, Filter.le_principal_iff, Prod.forall,
      Filter.mem_principal, mem_setOf_eq, le_iInf_iff, idRel_subset]
    exact fun K V _hK hV f x _hx => refl_mem_uniformity hV
  symm := by
    simp only [compactConvergenceUniformity, and_imp, Prod.forall, mem_setOf_eq, Prod.fst_swap,
      Filter.tendsto_principal, Prod.snd_swap, Filter.tendsto_iInf]
    intro K V hK hV
    obtain ⟨V', hV', hsymm, hsub⟩ := symm_of_uniformity hV
    let X := { fg : C(α, β) × C(α, β) | ∀ x : α, x ∈ K → (fg.1 x, fg.2 x) ∈ V' }
    have hX : X ∈ compactConvergenceUniformity :=
      (mem_compactConvergenceUniformity X).mpr ⟨K, V', hK, hV', by simp⟩
    exact Filter.eventually_of_mem hX fun fg hfg x hx => hsub (hsymm _ _ (hfg x hx))
  comp X hX := by
    obtain ⟨K, V, hK, hV, hX⟩ := (mem_compactConvergenceUniformity X).mp hX
    obtain ⟨V', hV', hcomp⟩ := comp_mem_uniformity_sets hV
    let h := fun s : Set (C(α, β) × C(α, β)) => s ○ s
    suffices h { fg : C(α, β) × C(α, β) | ∀ x ∈ K, (fg.1 x, fg.2 x) ∈ V' } ∈
        compactConvergenceUniformity.lift' h by
      apply Filter.mem_of_superset this
      rintro ⟨f, g⟩ ⟨z, hz₁, hz₂⟩
      refine' hX fun x hx => hcomp _
      exact ⟨z x, hz₁ x hx, hz₂ x hx⟩
    apply Filter.mem_lift'
    exact (mem_compactConvergenceUniformity _).mpr ⟨K, V', hK, hV', Subset.refl _⟩
  isOpen_uniformity := by
    rw [compactOpen_eq_compactConvergence]
    refine' fun Y => forall₂_congr fun f hf => _
    simp only [mem_compactConvergence_nhd_filter, mem_compactConvergenceUniformity, Prod.forall,
      setOf_subset_setOf, compactConvNhd]
    refine' exists₄_congr fun K V _hK _hV => ⟨_, fun hY g hg => hY f g hg rfl⟩
    rintro hY g₁ g₂ hg₁ rfl
    exact hY hg₁
#align continuous_map.compact_convergence_uniform_space ContinuousMap.compactConvergenceUniformSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0788ac245737c102988379e8f3697a91ffdef77f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
