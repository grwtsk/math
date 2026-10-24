# StrictConvex.affine_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f0af842210fbeb7df3e760e950ddbbf3c37a8f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae502754-cd41-d616-ebb9-27202dda61ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcba2b05-0804-6432-55ca-710db159ee7c",
  "kind": "theorem",
  "lexical_name": "StrictConvex.affine_preimage",
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
  "slug": "strictconvex-affine-preimage--e61d747f6c4adc85f5478c2e",
  "source": {
    "blob": "6f0af842210fbeb7df3e760e950ddbbf3c37a8f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 322,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e61d747f6c4adc85f5478c2e2c9d9e1d5693aeac785f848dff282331d67ecbe9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcba2b05-0804-6432-55ca-710db159ee7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictConvex.affine_preimage {s : Set F} (hs : StrictConvex 𝕜 s) {f : E →ᵃ[𝕜] F}
    (hf : Continuous f) (hfinj : Injective f) : StrictConvex 𝕜 (f ⁻¹' s) := by
  intro x hx y hy hxy a b ha hb hab
  refine preimage_interior_subset_interior_preimage hf ?_
  rw [mem_preimage, Convex.combo_affine_apply hab]
  exact hs hx hy (hfinj.ne hxy) ha hb hab

/-- The image of a strictly convex set under an affine map is strictly convex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Strict/Variant5e56314b65d2b8503a9d03293c715ac10fdfc416598c03a44f78c6dc0d515354.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f0af842210fbeb7df3e760e950ddbbf3c37a8f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
