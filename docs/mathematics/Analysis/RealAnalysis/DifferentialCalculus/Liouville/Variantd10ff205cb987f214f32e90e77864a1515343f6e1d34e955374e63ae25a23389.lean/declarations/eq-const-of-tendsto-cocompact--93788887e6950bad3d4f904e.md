# eq_const_of_tendsto_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3be8c3b4322a5ee9ba01b1c6d44f0838e6c494ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c64ffe0f-4bb5-70dc-f616-f2075410a761",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eae5f3fc-6208-61a2-38cf-23f498f003f7",
  "kind": "theorem",
  "lexical_name": "eq_const_of_tendsto_cocompact",
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
  "slug": "eq-const-of-tendsto-cocompact--93788887e6950bad3d4f904e",
  "source": {
    "blob": "3be8c3b4322a5ee9ba01b1c6d44f0838e6c494ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93788887e6950bad3d4f904e6101d131522bca4d76df04a441a2a0c81af0342f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eae5f3fc-6208-61a2-38cf-23f498f003f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_const_of_tendsto_cocompact [Nontrivial E] {f : E → F} (hf : Differentiable ℂ f) {c : F}
    (hb : Tendsto f (cocompact E) (𝓝 c)) : f = Function.const E c := by
  have h_bdd : Bornology.IsBounded (Set.range f) := by
    obtain ⟨s, hs, hs_bdd⟩ := Metric.exists_isBounded_image_of_tendsto hb
    obtain ⟨t, ht, hts⟩ := mem_cocompact.mp hs
    apply ht.image hf.continuous |>.isBounded.union hs_bdd |>.subset
    simpa [Set.image_union, Set.image_univ] using Set.image_subset _ <| calc
      Set.univ = t ∪ tᶜ := t.union_compl_self.symm
      _        ⊆ t ∪ s  := by gcongr
  obtain ⟨c', hc'⟩ := hf.exists_eq_const_of_bounded h_bdd
  convert hc'
  exact tendsto_nhds_unique hb (by simpa [hc'] using tendsto_const_nhds)

/-- A corollary of Liouville's theorem where the function tends to a finite value at infinity
(i.e., along `Filter.cocompact`, which in proper spaces coincides with `Bornology.cobounded`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantd10ff205cb987f214f32e90e77864a1515343f6e1d34e955374e63ae25a23389.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3be8c3b4322a5ee9ba01b1c6d44f0838e6c494ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
