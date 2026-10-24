# LinearEquiv.image_closure_of_convex'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "397acc525e32fcf3df7560fc107e8ad3d20b8cd5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f50c69d-2217-b01b-8ea5-d637d8efd311",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6255c62d-e542-a2a9-529d-f09507d913fd",
  "kind": "theorem",
  "lexical_name": "LinearEquiv.image_closure_of_convex'",
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
  "slug": "linearequiv-image-closure-of-convex--27ccfc4bd44761f5672809ca",
  "source": {
    "blob": "397acc525e32fcf3df7560fc107e8ad3d20b8cd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/WeakSpace/Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27ccfc4bd44761f5672809ca67e13dc9d48fe77bb30a6ace4febbbbea960bebd",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/WeakSpace/Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6255c62d-e542-a2a9-529d-f09507d913fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearEquiv.image_closure_of_convex' {s : Set E} (hs : Convex ℝ s) (e : E ≃ₗ[𝕜] F)
    (e_dual : (F →L[𝕜] 𝕜) ≃ (E →L[𝕜] 𝕜))
    (he : ∀ f : F →L[𝕜] 𝕜, (e_dual f : E →ₗ[𝕜] 𝕜) = e.dualMap f) :
    e '' (closure s) = closure (e '' s) := by
  have he' (f : E →L[𝕜] 𝕜) : (e_dual.symm f : F →ₗ[𝕜] 𝕜) = e.symm.dualMap f := by
    simp only [DFunLike.ext'_iff, ContinuousLinearMap.coe_coe] at he ⊢
    have (g : E →L[𝕜] 𝕜) : ⇑g = e_dual.symm g ∘ e := by
      have := he _ ▸ congr(⇑$(e_dual.apply_symm_apply g)).symm
      simpa
    ext x
    conv_rhs => rw [LinearEquiv.dualMap_apply, ContinuousLinearMap.coe_coe, this]
    simp
  refine e.image_closure_of_convex hs ?_ ?_
  · simpa [← he] using fun f ↦ map_continuous (e_dual f)
  · simpa [← he'] using fun f ↦ map_continuous (e_dual.symm f)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/WeakSpace/Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/WeakSpace/Variante0920c75599e27b8f85713b7dac9e6a734b1dd92a6c19927e11ebed3d41c913e.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `397acc525e32fcf3df7560fc107e8ad3d20b8cd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
