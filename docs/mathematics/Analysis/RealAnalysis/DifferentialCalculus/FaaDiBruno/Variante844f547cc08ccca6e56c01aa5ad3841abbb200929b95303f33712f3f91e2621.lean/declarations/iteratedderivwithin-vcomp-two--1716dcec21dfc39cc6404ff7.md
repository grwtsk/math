# iteratedDerivWithin_vcomp_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb585d48ddebe1bd0c0ff12607291bf282ae8b0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bc87584-4d0b-e191-b905-8d690fbd36ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eff051c2-f526-ab7b-f847-fc81ce151e06",
  "kind": "theorem",
  "lexical_name": "iteratedDerivWithin_vcomp_two",
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
  "slug": "iteratedderivwithin-vcomp-two--1716dcec21dfc39cc6404ff7",
  "source": {
    "blob": "bb585d48ddebe1bd0c0ff12607291bf282ae8b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1716dcec21dfc39cc6404ff737f079e497668413532d10daa32ac7bbb29fb06c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eff051c2-f526-ab7b-f847-fc81ce151e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDerivWithin_vcomp_two
    (hg : ContDiffWithinAt 𝕜 2 g t (f x)) (hf : ContDiffWithinAt 𝕜 2 f s x)
    (ht : UniqueDiffOn 𝕜 t) (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s) (hst : MapsTo f s t) :
    iteratedDerivWithin 2 (g ∘ f) s x =
      iteratedFDerivWithin 𝕜 2 g t (f x) (fun _ ↦ derivWithin f s x) +
      fderivWithin 𝕜 g t (f x) (iteratedDerivWithin 2 f s x) := by
  rw [iteratedDerivWithin_vcomp_eq_sum_orderedFinpartition hg hf ht hs hx hst le_rfl]
  simp only [← (OrderedFinpartition.extendEquiv 1).sum_comp, Fintype.sum_sigma, Fintype.sum_unique,
    OrderedFinpartition.default_eq, OrderedFinpartition.atomic_length, Fintype.sum_option]
  have : (Fin.cons 1 (fun _ ↦ 1) : Fin 2 → ℕ) = fun _ ↦ 1 :=
    funext <| Fin.forall_fin_two.mpr ⟨rfl, rfl⟩
  simp [OrderedFinpartition.extendEquiv, OrderedFinpartition.extend,
    OrderedFinpartition.extendLeft, OrderedFinpartition.extendMiddle, ht _ (hst hx),
    OrderedFinpartition.atomic, this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb585d48ddebe1bd0c0ff12607291bf282ae8b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
