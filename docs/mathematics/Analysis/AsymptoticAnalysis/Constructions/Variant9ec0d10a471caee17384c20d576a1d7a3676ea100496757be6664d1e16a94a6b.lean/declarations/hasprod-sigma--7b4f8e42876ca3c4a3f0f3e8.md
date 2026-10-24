# HasProd.sigma

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
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3127b10f-7111-5827-386c-b1f022e4d9b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83652302-4fc4-9df0-619c-17eb302e3ee1",
  "kind": "theorem",
  "lexical_name": "HasProd.sigma",
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
  "slug": "hasprod-sigma--7b4f8e42876ca3c4a3f0f3e8",
  "source": {
    "blob": "8624eedf8a63c1e2c2a02575f65c916f49c5e583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 115,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b4f8e42876ca3c4a3f0f3e802739528a8ea35a9620dbd36e74dadb5e72be5a1",
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

Occurrence: `result:83652302-4fc4-9df0-619c-17eb302e3ee1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasProd.sigma {γ : β → Type*} {f : (Σ b : β, γ b) → α} {g : β → α} {a : α}
    (ha : HasProd f a) (hf : ∀ b, HasProd (fun c ↦ f ⟨b, c⟩) (g b)) : HasProd g a := by
  classical
  refine (atTop_basis.tendsto_iff (closed_nhds_basis a)).mpr ?_
  rintro s ⟨hs, hsc⟩
  rcases mem_atTop_sets.mp (ha hs) with ⟨u, hu⟩
  use u.image Sigma.fst, trivial
  intro bs hbs
  simp only [Set.mem_preimage] at hu
  have : Tendsto (fun t : Finset (Σ b, γ b) ↦ ∏ p ∈ t with p.1 ∈ bs, f p) atTop
      (𝓝 <| ∏ b ∈ bs, g b) := by
    simp only [← sigma_preimage_mk, prod_sigma]
    refine tendsto_finsetProd _ fun b _ ↦ ?_
    change
      Tendsto (fun t ↦ (fun t ↦ ∏ s ∈ t, f ⟨b, s⟩) (preimage t (Sigma.mk b) _)) atTop (𝓝 (g b))
    exact (hf b).comp (tendsto_finset_preimage_atTop_atTop (sigma_mk_injective))
  refine hsc.mem_of_tendsto this (eventually_atTop.2 ⟨u, fun t ht ↦ hu _ fun x hx ↦ ?_⟩)
  exact mem_filter.2 ⟨ht hx, hbs <| mem_image_of_mem _ hx⟩

/-- If a function `f` on `β × γ` has product `a` and for each `b` the restriction of `f` to
`{b} × γ` has product `g b`, then the function `g` has product `a`. -/
@[to_additive HasSum.prod_fiberwise /-- If a series `f` on `β × γ` has sum `a` and for each `b` the
restriction of `f` to `{b} × γ` has sum `g b`, then the series `g` has sum `a`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8624eedf8a63c1e2c2a02575f65c916f49c5e583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
