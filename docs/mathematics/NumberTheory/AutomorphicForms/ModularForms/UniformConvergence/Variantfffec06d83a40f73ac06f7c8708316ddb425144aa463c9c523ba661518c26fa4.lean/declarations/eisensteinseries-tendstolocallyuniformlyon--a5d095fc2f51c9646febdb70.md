# eisensteinSeries_tendstoLocallyUniformlyOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0c229e96e5f3753a48c765c62c5e9c685289c3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/fffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08b62c91-9a72-e0b5-ef28-68e4b7abf36d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fadc4b11-cfd4-560d-68ab-37cf71419d86",
  "kind": "lemma",
  "lexical_name": "eisensteinSeries_tendstoLocallyUniformlyOn",
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
  "slug": "eisensteinseries-tendstolocallyuniformlyon--a5d095fc2f51c9646febdb70",
  "source": {
    "blob": "a0c229e96e5f3753a48c765c62c5e9c685289c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 185,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5d095fc2f51c9646febdb703d0ee8763554561dd09062c15bfda886bb5350e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fadc4b11-cfd4-560d-68ab-37cf71419d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eisensteinSeries_tendstoLocallyUniformlyOn {k : ℤ} {N : ℕ} (hk : 3 ≤ k)
    (a : Fin 2 → ZMod N) : TendstoLocallyUniformlyOn (fun (s : Finset (gammaSet N a )) ↦
      ↑ₕ(fun (z : ℍ) ↦ ∑ x ∈ s, eisSummand k x z)) (↑ₕ(eisensteinSeries_SIF a k).toFun)
          Filter.atTop {z : ℂ | 0 < z.im} := by
  rw [← Subtype.coe_image_univ {z : ℂ | 0 < z.im}]
  apply TendstoLocallyUniformlyOn.comp (s := ⊤) _ _ _ (PartialHomeomorph.continuousOn_symm _)
  · simp only [SlashInvariantForm.toFun_eq_coe, Set.top_eq_univ, tendstoLocallyUniformlyOn_univ]
    apply eisensteinSeries_tendstoLocallyUniformly hk
  · simp only [IsOpenEmbedding.toPartialHomeomorph_target, Set.top_eq_univ, mapsTo_range_iff,
    Set.mem_univ, forall_const]

end summability

end EisensteinSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/UniformConvergence/Variantfffec06d83a40f73ac06f7c8708316ddb425144aa463c9c523ba661518c26fa4.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0c229e96e5f3753a48c765c62c5e9c685289c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
