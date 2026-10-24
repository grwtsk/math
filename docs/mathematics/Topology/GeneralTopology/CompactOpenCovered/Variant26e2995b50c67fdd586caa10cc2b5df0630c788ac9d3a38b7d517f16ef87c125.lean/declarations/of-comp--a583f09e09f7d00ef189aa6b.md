# of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b02af6f-0c4f-67fa-896f-936fb5c923aa",
  "kind": "lemma",
  "lexical_name": "of_comp",
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
  "slug": "of-comp--a583f09e09f7d00ef189aa6b",
  "source": {
    "blob": "727304af98e65385a9f5b9a0d0c9f8f24f08e7af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant26e2995b50c67fdd586caa10cc2b5df0630c788ac9d3a38b7d517f16ef87c125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a583f09e09f7d00ef189aa6b8d81c681001f60ef3284c4f7b15b07ffccfa2888",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpenCovered/Variant26e2995b50c67fdd586caa10cc2b5df0630c788ac9d3a38b7d517f16ef87c125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b02af6f-0c4f-67fa-896f-936fb5c923aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_comp [∀ i, PrespectralSpace (X i)] [TopologicalSpace S]
    {σ : Type*} {Y : σ → Type*} [∀ i, TopologicalSpace (Y i)]
    (g : ∀ i, Y i → S) {a : σ → ι} (t : ∀ i, Y i → X (a i)) (ht : ∀ i, Continuous (t i))
    (hge : ∀ i, g i = f (a i) ∘ t i)
    (hf : ∀ i, Continuous (f i)) {U : Set S} (ho : IsOpen U) (hU : IsCompactOpenCovered g U) :
    IsCompactOpenCovered f U := by
  rw [iff_isCompactOpenCovered_sigmaMk, iff_of_unique] at hU ⊢
  let p : (Σ i, Y i) → (Σ i, X i) := Sigma.map a t
  have hcomp : (fun x ↦ f x.1 x.2) ∘ p = fun x ↦ g x.1 x.2 := by
    ext
    simp [hge, p, Sigma.map]
  have hp : Continuous p := Continuous.sigma_map ht
  have hf : Continuous (fun p : Σ i, X i ↦ f p.1 p.2) := by simp [hf]
  obtain ⟨V, hV, heq⟩ := hU
  obtain ⟨K, hK, ho, hVK, hKU⟩ := PrespectralSpace.exists_isCompact_and_isOpen_between
      (hV.image hp) (ho.preimage hf) <| by
    simp [← heq, ← Set.preimage_comp, hcomp, Set.subset_preimage_image]
  refine ⟨⟨K, ho⟩, hK, subset_antisymm (by simpa) ?_⟩
  rw [← heq, ← hcomp, Set.image_comp]
  exact subset_trans (Set.image_mono hVK) (by simp)

end IsCompactOpenCovered
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpenCovered/Variant26e2995b50c67fdd586caa10cc2b5df0630c788ac9d3a38b7d517f16ef87c125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpenCovered/Variant26e2995b50c67fdd586caa10cc2b5df0630c788ac9d3a38b7d517f16ef87c125.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `727304af98e65385a9f5b9a0d0c9f8f24f08e7af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
