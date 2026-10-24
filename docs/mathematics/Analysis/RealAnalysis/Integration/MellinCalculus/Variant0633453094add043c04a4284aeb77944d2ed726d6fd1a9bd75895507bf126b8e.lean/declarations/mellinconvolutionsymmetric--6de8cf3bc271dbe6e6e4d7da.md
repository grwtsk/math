# MellinConvolutionSymmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f22ae8e17fe1f5fd42d4e9f74d3ba017d20468c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:844cc7f2-73b2-9b41-9b53-0e6d994712b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f2f0e1c-aea1-3f05-aa82-55edcb569974",
  "kind": "lemma",
  "lexical_name": "MellinConvolutionSymmetric",
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
  "slug": "mellinconvolutionsymmetric--6de8cf3bc271dbe6e6e4d7da",
  "source": {
    "blob": "f22ae8e17fe1f5fd42d4e9f74d3ba017d20468c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 315,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6de8cf3bc271dbe6e6e4d7da42697a0c5c9330a610d9e1b851147fbefb1c1111",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f2f0e1c-aea1-3f05-aa82-55edcb569974`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MellinConvolutionSymmetric (f g : ℝ → 𝕂) {x : ℝ} (xpos : 0 < x) :
    MellinConvolution f g x = MellinConvolution g f x := by
  unfold MellinConvolution
  calc
    _ = ∫ y in Ioi 0, f (y * x) * g (1 / y) / y := ?_
    _ = _ := ?_
  · rw [← integral_comp_mul_right_I0i_haar (fun y ↦ f y * g (x / y)) xpos]
    simp [div_mul_cancel_right₀ <| ne_of_gt xpos]
  · convert (integral_comp_inv_I0i_haar fun y ↦ f (y * x) * g (1 / y)).symm using 3
    rw [one_div_one_div, mul_comm, mul_comm_div, one_mul]

open Pointwise in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant0633453094add043c04a4284aeb77944d2ed726d6fd1a9bd75895507bf126b8e.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f22ae8e17fe1f5fd42d4e9f74d3ba017d20468c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
