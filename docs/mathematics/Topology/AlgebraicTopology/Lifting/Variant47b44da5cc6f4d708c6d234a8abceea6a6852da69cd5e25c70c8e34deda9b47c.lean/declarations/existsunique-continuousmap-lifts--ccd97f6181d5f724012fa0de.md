# existsUnique_continuousMap_lifts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5a47dfa109fb307cf105a6bfef0da78a03d6d21",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9acf7db-935b-4836-9a00-39e7acfd1977",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7dce86e1-9637-7a3e-f68f-ed11f8ccd258",
  "kind": "theorem",
  "lexical_name": "existsUnique_continuousMap_lifts",
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
  "slug": "existsunique-continuousmap-lifts--ccd97f6181d5f724012fa0de",
  "source": {
    "blob": "f5a47dfa109fb307cf105a6bfef0da78a03d6d21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 171,
    "path": "GRWTSK/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccd97f6181d5f724012fa0dea36729f4bf890c5d3451a8ede9ecefbb40d84ece",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dce86e1-9637-7a3e-f68f-ed11f8ccd258`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_continuousMap_lifts [PathConnectedSpace A] [LocallyPathConnectedSpace A]
    (f : C(A, X)) (a₀ : A) (e₀ : E) (he : p e₀ = f a₀)
    (ex : ∀ γ : C(I, A), γ 0 = a₀ → ∃ Γ : C(I, E), Γ 0 = e₀ ∧ p ∘ Γ = f.comp γ)
    (uniq : ∀ γ γ' : C(I, A), ∀ Γ Γ' : C(I, E), γ 0 = a₀ → γ' 0 = a₀ → Γ 0 = e₀ → Γ' 0 = e₀ →
      p ∘ Γ = f.comp γ → p ∘ Γ' = f.comp γ' → γ 1 = γ' 1 → Γ 1 = Γ' 1) :
    ∃! F : C(A, E), F a₀ = e₀ ∧ p ∘ F = f := by
  choose Γ Γ_0 Γ_lifts using ex
  let F (a : A) : E := Γ _ (somePath a₀ a).source 1
  have (a : A) : p (F a) = f a := by simpa using congr_fun (Γ_lifts _ (Path.source _)) 1
  refine ⟨⟨F, continuous_iff_continuousAt.mpr fun a ↦ ?_⟩, ⟨?_, funext this⟩, fun F' ⟨F'_0, hpF'⟩ ↦
    DFunLike.ext _ _ fun a ↦ ?_⟩
  · obtain ⟨p, hep, rfl⟩ := homeo (F a)
    have hfap : f a ∈ p.target := by rw [← this]; exact p.map_source hep
    refine ContinuousAt.congr (f := p.symm ∘ f)
      ((p.continuousAt_symm hfap).comp f.2.continuousAt) ?_
    have ⟨U, ⟨haU, U_conn⟩, hUp⟩ := (path_connected_basis a).mem_iff.mp
      ((p.open_target.preimage f.continuous).mem_nhds hfap)
    refine Filter.mem_of_superset haU fun x hxU ↦ ?_
    have ⟨γ, hγ⟩ := U_conn.joinedIn _ (mem_of_mem_nhds haU) _ hxU
    let Γ' : Path e₀ ((p.symm ∘ f) a) :=
      ⟨Γ _ (somePath a₀ a).source, Γ_0 .., by simp [← this, hep, F]⟩
    specialize uniq ((somePath a₀ a).trans γ) _ (Γ'.trans <| γ.map' <| p.continuousOn_symm.comp
      f.2.continuousOn <| by rintro _ ⟨t, rfl⟩; exact hUp (hγ _)) _ (by simp) (somePath a₀ x).source
      (by simp) (Γ_0 _ (somePath a₀ x).source) _ (Γ_lifts ..) (by simp)
    · ext
      simp only [Function.comp, ContinuousMap.coe_coe, Path.trans_apply, ContinuousMap.coe_comp]
      split_ifs
      · apply congr_fun (Γ_lifts ..)
      · simp [Path.map', p.right_inv (hUp (hγ _))]
    simpa using uniq
  · exact uniq _ (.const I a₀) _ (.const I e₀) (somePath a₀ a₀).source rfl (Γ_0 ..) rfl (Γ_lifts ..)
      (by simpa) (Path.target _)
  · let γ := somePath a₀ a
    simpa using uniq _ _ (F'.comp γ) (Γ _ γ.source) γ.source γ.source (by simpa) (Γ_0 ..)
      (by simp [← Function.comp_assoc, hpF']) (Γ_lifts ..) rfl

end IsLocalHomeomorph

namespace IsCoveringMap
variable (cov : IsCoveringMap p)
include cov

section path_lifting
variable (γ : C(I, X)) (e : E) (γ_0 : γ 0 = p e)
include γ_0

/-- The path lifting property (existence) for covering maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a47dfa109fb307cf105a6bfef0da78a03d6d21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
