# norm_iteratedFDerivWithin_clm_apply_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b36b2a75586c47b7eb85e09adf539d470eb7cf2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 545,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3090d7e9-177a-0414-5c1b-6ac672134916",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b405982b-f8ac-088e-67e6-bbf78a9e43eb",
  "kind": "theorem",
  "lexical_name": "norm_iteratedFDerivWithin_clm_apply_const",
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
  "slug": "norm-iteratedfderivwithin-clm-apply-const--a8e09281cb2a78de4f98885e",
  "source": {
    "blob": "3b36b2a75586c47b7eb85e09adf539d470eb7cf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 545,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variant9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8e09281cb2a78de4f98885e04fb88c629401c85b960e999eee648e0bcf14915",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bounds/Variant9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b405982b-f8ac-088e-67e6-bbf78a9e43eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_iteratedFDerivWithin_clm_apply_const {f : E → F →L[𝕜] G} {c : F} {s : Set E} {x : E}
    {N : WithTop ℕ∞} {n : ℕ} (hf : ContDiffWithinAt 𝕜 N f s x) (hs : UniqueDiffOn 𝕜 s)
    (hx : x ∈ s) (hn : n ≤ N) :
    ‖iteratedFDerivWithin 𝕜 n (fun y : E => (f y) c) s x‖ ≤
      ‖c‖ * ‖iteratedFDerivWithin 𝕜 n f s x‖ := by
  let g : (F →L[𝕜] G) →L[𝕜] G := ContinuousLinearMap.apply 𝕜 G c
  have h := g.norm_compContinuousMultilinearMap_le (iteratedFDerivWithin 𝕜 n f s x)
  rw [← g.iteratedFDerivWithin_comp_left hf hs hx hn] at h
  refine h.trans (mul_le_mul_of_nonneg_right ?_ (norm_nonneg _))
  refine g.opNorm_le_bound (norm_nonneg _) fun f => ?_
  rw [ContinuousLinearMap.apply_apply, mul_comm]
  exact f.le_opNorm c

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bounds/Variant9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variant9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b36b2a75586c47b7eb85e09adf539d470eb7cf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
