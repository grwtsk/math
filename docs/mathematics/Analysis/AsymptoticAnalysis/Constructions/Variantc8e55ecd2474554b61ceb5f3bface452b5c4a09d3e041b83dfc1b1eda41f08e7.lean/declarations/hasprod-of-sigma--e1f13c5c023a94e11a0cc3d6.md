# HasProd.of_sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06085734f73fdfbc85c22b70b2d812d357153a11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:061c6e65-c4c8-800b-7751-48fdf98cb006",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cefe9486-25a6-72b2-85ec-11883f6b4c79",
  "kind": "theorem",
  "lexical_name": "HasProd.of_sigma",
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
  "slug": "hasprod-of-sigma--e1f13c5c023a94e11a0cc3d6",
  "source": {
    "blob": "06085734f73fdfbc85c22b70b2d812d357153a11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 214,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1f13c5c023a94e11a0cc3d6a86cdc261919ef7b9581fc708ec544ac405416a9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cefe9486-25a6-72b2-85ec-11883f6b4c79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasProd.of_sigma {γ : β → Type*} {f : (Σ b : β, γ b) → α} {g : β → α} {a : α}
    (hf : ∀ b, HasProd (fun c ↦ f ⟨b, c⟩) (g b)) (hg : HasProd g a)
    (h : CauchySeq (fun (s : Finset (Σ b : β, γ b)) ↦ ∏ i ∈ s, f i)) :
    HasProd f a := by
  classical
  apply le_nhds_of_cauchy_adhp h
  simp only [← mapClusterPt_def, mapClusterPt_iff_frequently, frequently_atTop, ge_iff_le,
    le_eq_subset]
  intro u hu s
  rcases mem_nhds_iff.1 hu with ⟨v, vu, v_open, hv⟩
  obtain ⟨t0, st0, ht0⟩ : ∃ t0, ∏ i ∈ t0, g i ∈ v ∧ s.image Sigma.fst ⊆ t0 := by
    have A : ∀ᶠ t0 in (atTop : Filter (Finset β)), ∏ i ∈ t0, g i ∈ v := hg (v_open.mem_nhds hv)
    exact (A.and (Ici_mem_atTop _)).exists
  have L : Tendsto (fun t : Finset (Σ b, γ b) ↦ ∏ p ∈ t with p.1 ∈ t0, f p) atTop
      (𝓝 <| ∏ b ∈ t0, g b) := by
    simp only [← sigma_preimage_mk, prod_sigma]
    refine tendsto_finset_prod _ fun b _ ↦ ?_
    change
      Tendsto (fun t ↦ (fun t ↦ ∏ s ∈ t, f ⟨b, s⟩) (preimage t (Sigma.mk b) _)) atTop (𝓝 (g b))
    exact (hf b).comp (tendsto_finset_preimage_atTop_atTop (sigma_mk_injective))
  have : ∃ t, ∏ p ∈ t with p.1 ∈ t0, f p ∈ v ∧ s ⊆ t :=
    ((Tendsto.eventually_mem L (v_open.mem_nhds st0)).and (Ici_mem_atTop _)).exists
  obtain ⟨t, tv, st⟩ := this
  refine ⟨{p ∈ t | p.1 ∈ t0}, fun x hx ↦ ?_, vu tv⟩
  simpa only [mem_filter, st hx, true_and] using ht0 (mem_image_of_mem Sigma.fst hx)

variable [CompleteSpace α]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variantc8e55ecd2474554b61ceb5f3bface452b5c4a09d3e041b83dfc1b1eda41f08e7.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06085734f73fdfbc85c22b70b2d812d357153a11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
