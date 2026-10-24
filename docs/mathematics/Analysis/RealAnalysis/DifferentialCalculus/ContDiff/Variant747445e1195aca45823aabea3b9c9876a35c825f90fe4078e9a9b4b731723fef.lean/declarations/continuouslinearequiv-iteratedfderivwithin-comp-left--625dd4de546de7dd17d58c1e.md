# ContinuousLinearEquiv.iteratedFDerivWithin_comp_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c3f424fa48bdb95dad00a6c895134d683847e4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f39fb6b-1ec4-3aa9-3370-8671b4fd78de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:700a6e39-2a34-393d-49ba-c646edaf705c",
  "kind": "theorem",
  "lexical_name": "ContinuousLinearEquiv.iteratedFDerivWithin_comp_left",
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
  "slug": "continuouslinearequiv-iteratedfderivwithin-comp-left--625dd4de546de7dd17d58c1e",
  "source": {
    "blob": "6c3f424fa48bdb95dad00a6c895134d683847e4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 256,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:625dd4de546de7dd17d58c1e9aceb50c86769976893a6020542ecd41a0a1fb4a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:700a6e39-2a34-393d-49ba-c646edaf705c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousLinearEquiv.iteratedFDerivWithin_comp_left (g : F ≃L[𝕜] G) (f : E → F)
    (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s) (i : ℕ) :
    iteratedFDerivWithin 𝕜 i (g ∘ f) s x =
      (g : F →L[𝕜] G).compContinuousMultilinearMap (iteratedFDerivWithin 𝕜 i f s x) := by
  induction' i with i IH generalizing x
  · ext1 m
    simp only [Nat.zero_eq, iteratedFDerivWithin_zero_apply, comp_apply,
      ContinuousLinearMap.compContinuousMultilinearMap_coe, coe_coe]
  · ext1 m
    rw [iteratedFDerivWithin_succ_apply_left]
    have Z : fderivWithin 𝕜 (iteratedFDerivWithin 𝕜 i (g ∘ f) s) s x =
        fderivWithin 𝕜 (g.compContinuousMultilinearMapL (fun _ : Fin i => E) ∘
          iteratedFDerivWithin 𝕜 i f s) s x :=
      fderivWithin_congr' (@IH) hx
    simp_rw [Z]
    rw [(g.compContinuousMultilinearMapL fun _ : Fin i => E).comp_fderivWithin (hs x hx)]
    simp only [ContinuousLinearMap.coe_comp', ContinuousLinearEquiv.coe_coe, comp_apply,
      ContinuousLinearEquiv.compContinuousMultilinearMapL_apply,
      ContinuousLinearMap.compContinuousMultilinearMap_coe, EmbeddingLike.apply_eq_iff_eq]
    rw [iteratedFDerivWithin_succ_apply_left]
#align continuous_linear_equiv.iterated_fderiv_within_comp_left ContinuousLinearEquiv.iteratedFDerivWithin_comp_left

/-- Composition with a linear isometry on the left preserves the norm of the iterated
derivative within a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3f424fa48bdb95dad00a6c895134d683847e4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
