# HasProd.of_sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8624eedf8a63c1e2c2a02575f65c916f49c5e583",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5dee1d7b-98bf-927e-cd02-f9fd78a71e20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6158094-d5ea-1413-6f2d-e9183d64886a",
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
  "slug": "hasprod-of-sigma--3161292eb33c790fc9947e9e",
  "source": {
    "blob": "8624eedf8a63c1e2c2a02575f65c916f49c5e583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 193,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3161292eb33c790fc9947e9e30921c55b201d361d367db0c359abe4bd36bafdc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6158094-d5ea-1413-6f2d-e9183d64886a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasProd.of_sigma {γ : β → Type*} {f : (Σ b : β, γ b) → α} {g : β → α} {a : α}
    (hf : ∀ b, HasProd (fun c ↦ f ⟨b, c⟩) (g b)) (hg : HasProd g a)
    (h : CauchySeq (fun (s : Finset (Σ b : β, γ b)) ↦ ∏ i ∈ s, f i)) :
    HasProd f a := by
  classical
  apply le_nhds_of_cauchy_adhp h
  simp only [← mapClusterPt_def, mapClusterPt_iff_frequently, frequently_atTop]
  intro u hu s
  rcases mem_nhds_iff.1 hu with ⟨v, vu, v_open, hv⟩
  obtain ⟨t0, st0, ht0⟩ : ∃ t0, ∏ i ∈ t0, g i ∈ v ∧ s.image Sigma.fst ⊆ t0 := by
    have A : ∀ᶠ t0 in (atTop : Filter (Finset β)), ∏ i ∈ t0, g i ∈ v := hg (v_open.mem_nhds hv)
    exact (A.and (Ici_mem_atTop _)).exists
  have L : Tendsto (fun t : Finset (Σ b, γ b) ↦ ∏ p ∈ t with p.1 ∈ t0, f p) atTop
      (𝓝 <| ∏ b ∈ t0, g b) := by
    simp only [← sigma_preimage_mk, prod_sigma]
    refine tendsto_finsetProd _ fun b _ ↦ ?_
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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8624eedf8a63c1e2c2a02575f65c916f49c5e583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
