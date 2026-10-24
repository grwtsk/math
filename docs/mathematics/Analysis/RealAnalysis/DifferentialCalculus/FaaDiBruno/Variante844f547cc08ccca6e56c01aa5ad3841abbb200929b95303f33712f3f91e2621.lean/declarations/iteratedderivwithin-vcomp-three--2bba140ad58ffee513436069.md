# iteratedDerivWithin_vcomp_three

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
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75dc95a1-f37a-c34c-d25b-8340334469ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ff452c3-3bef-c3ef-dd7c-d2fb0e330334",
  "kind": "theorem",
  "lexical_name": "iteratedDerivWithin_vcomp_three",
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
  "slug": "iteratedderivwithin-vcomp-three--2bba140ad58ffee513436069",
  "source": {
    "blob": "bb585d48ddebe1bd0c0ff12607291bf282ae8b0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bba140ad58ffee513436069afcd2bc3a8418629217c810427e8e02231c2fd5a",
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

Occurrence: `result:9ff452c3-3bef-c3ef-dd7c-d2fb0e330334`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDerivWithin_vcomp_three
    (hg : ContDiffWithinAt 𝕜 3 g t (f x)) (hf : ContDiffWithinAt 𝕜 3 f s x)
    (ht : UniqueDiffOn 𝕜 t) (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s) (hst : MapsTo f s t) :
    iteratedDerivWithin 3 (g ∘ f) s x =
      iteratedFDerivWithin 𝕜 3 g t (f x) (fun _ ↦ derivWithin f s x) +
      iteratedFDerivWithin 𝕜 2 g t (f x) ![iteratedDerivWithin 2 f s x, derivWithin f s x] +
      2 • iteratedFDerivWithin 𝕜 2 g t (f x) ![derivWithin f s x, iteratedDerivWithin 2 f s x] +
      fderivWithin 𝕜 g t (f x) (iteratedDerivWithin 3 f s x) := by
  rw [iteratedDerivWithin_vcomp_eq_sum_orderedFinpartition hg hf ht hs hx hst le_rfl]
  simp only [← (OrderedFinpartition.extendEquiv 1).sum_comp,
    ← (OrderedFinpartition.extendEquiv 2).sum_comp, Fintype.sum_sigma,
    Fintype.sum_option, Nat.reduceAdd, OrderedFinpartition.extendEquiv_apply,
    OrderedFinpartition.extend_none, OrderedFinpartition.extend_some,
    OrderedFinpartition.extendMiddle_length, OrderedFinpartition.default_eq,
    OrderedFinpartition.atomic_length, OrderedFinpartition.extendLeft_length,
    Fintype.sum_unique, Fin.sum_univ_zero, Fin.sum_univ_two]
  simp? [add_assoc, two_smul, iteratedFDerivWithin_one_apply (ht _ <| hst hx)] says
    simp only [OrderedFinpartition.extendLeft_partSize, OrderedFinpartition.extendLeft_length,
      OrderedFinpartition.atomic_length, Nat.reduceAdd, OrderedFinpartition.atomic_partSize,
      Fin.isValue, OrderedFinpartition.extendMiddle_partSize, Fin.cons_zero, Fin.update_cons_zero,
      Fin.cons_one, Fin.default_eq_zero, OrderedFinpartition.extendMiddle_length, Fin.cons_update,
      Fin.succ_zero_eq_one, update_self, update_idem,
      iteratedFDerivWithin_one_apply (ht _ <| hst hx), add_assoc, two_smul]
  have (j) : (Fin.cons 1 (Fin.cons 1 fun _ ↦ 1) : Fin 3 → ℕ) j = 1 := by
    fin_cases j <;> rfl
  congr <;> ext x <;> fin_cases x <;> simp [this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FaaDiBruno/Variante844f547cc08ccca6e56c01aa5ad3841abbb200929b95303f33712f3f91e2621.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb585d48ddebe1bd0c0ff12607291bf282ae8b0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
