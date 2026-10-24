# image_multilinear'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3533ced7229f279041dea02d1d9968e9b68acf37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/0537ff5b076644c63da6025f47ab57529228feb9bac56cbca7e1cb3effbc6659.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ef59e2e-72f1-a1fe-7810-b3e6ff5305f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a1ed455-5772-4b27-6e47-a874555fcbbb",
  "kind": "theorem",
  "lexical_name": "image_multilinear'",
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
  "slug": "image-multilinear--86b5600e9839254ac90f84b2",
  "source": {
    "blob": "3533ced7229f279041dea02d1d9968e9b68acf37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant0537ff5b076644c63da6025f47ab57529228feb9bac56cbca7e1cb3effbc6659.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86b5600e9839254ac90f84b220969d57e04be067a83d1ddc3f48c9c9599e08ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant0537ff5b076644c63da6025f47ab57529228feb9bac56cbca7e1cb3effbc6659.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a1ed455-5772-4b27-6e47-a874555fcbbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_multilinear' [Nonempty ι] {s : Set (∀ i, E i)} (hs : IsVonNBounded 𝕜 s)
    (f : ContinuousMultilinearMap 𝕜 E F) : IsVonNBounded 𝕜 (f '' s) := fun V hV ↦ by
  classical
  if h₁ : ∀ c : 𝕜, ‖c‖ ≤ 1 then
    exact absorbs_iff_norm.2 ⟨2, fun c hc ↦ by linarith [h₁ c]⟩
  else
    let _ : NontriviallyNormedField 𝕜 := ⟨by simpa using h₁⟩
    obtain ⟨I, t, ht₀, hft⟩ :
        ∃ (I : Finset ι) (t : ∀ i, Set (E i)), (∀ i, t i ∈ 𝓝 0) ∧ Set.pi I t ⊆ f ⁻¹' V := by
      have hfV : f ⁻¹' V ∈ 𝓝 0 := (map_continuous f).tendsto' _ _ f.map_zero hV
      rwa [nhds_pi, Filter.mem_pi, exists_finite_iff_finset] at hfV
    have : ∀ i, ∃ c : 𝕜, c ≠ 0 ∧ ∀ c' : 𝕜, ‖c'‖ ≤ ‖c‖ → ∀ x ∈ s, c' • x i ∈ t i := fun i ↦ by
      rw [isVonNBounded_pi_iff] at hs
      have := (hs i).tendsto_smallSets_nhds.eventually (mem_lift' (ht₀ i))
      rcases NormedAddCommGroup.nhds_zero_basis_norm_lt.eventually_iff.1 this with ⟨r, hr₀, hr⟩
      rcases NormedField.exists_norm_lt 𝕜 hr₀ with ⟨c, hc₀, hc⟩
      refine ⟨c, norm_pos_iff.1 hc₀, fun c' hle x hx ↦ ?_⟩
      exact hr (hle.trans_lt hc) ⟨_, ⟨x, hx, rfl⟩, rfl⟩
    choose c hc₀ hc using this
    rw [absorbs_iff_eventually_nhds_zero (mem_of_mem_nhds hV),
      NormedAddCommGroup.nhds_zero_basis_norm_lt.eventually_iff]
    have hc₀' : ∏ i ∈ I, c i ≠ 0 := Finset.prod_ne_zero_iff.2 fun i _ ↦ hc₀ i
    refine ⟨‖∏ i ∈ I, c i‖, norm_pos_iff.2 hc₀', fun a ha ↦ mapsTo_image_iff.2 fun x hx ↦ ?_⟩
    let ⟨i₀⟩ := ‹Nonempty ι›
    set y := I.piecewise (fun i ↦ c i • x i) x
    calc
      f (update y i₀ ((a / ∏ i ∈ I, c i) • y i₀)) ∈ V := hft fun i hi => by
        rcases eq_or_ne i i₀ with rfl | hne
        · simp_rw [update_self, y, I.piecewise_eq_of_mem _ _ hi, smul_smul]
          refine hc _ _ ?_ _ hx
          calc
            ‖(a / ∏ i ∈ I, c i) * c i‖ ≤ (‖∏ i ∈ I, c i‖ / ‖∏ i ∈ I, c i‖) * ‖c i‖ := by
              rw [norm_mul, norm_div]; gcongr; exact ha.out.le
            _ ≤ 1 * ‖c i‖ := by gcongr; apply div_self_le_one
            _ = ‖c i‖ := one_mul _
        · simp_rw [update_of_ne hne, y, I.piecewise_eq_of_mem _ _ hi]
          exact hc _ _ le_rfl _ hx
      _ = a • f x := by
        rw [f.map_update_smul, update_eq_self, f.map_piecewise_smul, div_eq_mul_inv, mul_smul,
          inv_smul_smul₀ hc₀']

/-- The image of a von Neumann bounded set under a continuous multilinear map
is von Neumann bounded.

This version assumes that the codomain is a topological vector space.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant0537ff5b076644c63da6025f47ab57529228feb9bac56cbca7e1cb3effbc6659.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant0537ff5b076644c63da6025f47ab57529228feb9bac56cbca7e1cb3effbc6659.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3533ced7229f279041dea02d1d9968e9b68acf37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
