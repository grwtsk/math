# SmoothedChebyshevPull2_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44803b182000672977293e598b84e8212a3b9098",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:944bfa26-bb9c-4fac-9a03-031d63956d74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54155e48-46b0-03ec-6975-5d0fdd66b6fc",
  "kind": "theorem",
  "lexical_name": "SmoothedChebyshevPull2_aux1",
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
  "slug": "smoothedchebyshevpull2-aux1--bc3fe82593f5aea42ec09b85",
  "source": {
    "blob": "44803b182000672977293e598b84e8212a3b9098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1381,
    "line": 1347,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc3fe82593f5aea42ec09b853eec5916efeb1244ba6b6d361fc260c17357a307",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54155e48-46b0-03ec-6975-5d0fdd66b6fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1347–1381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SmoothedChebyshevPull2_aux1 {T σ₁ : ℝ} (σ₁lt : σ₁ < 1)
  (holoOn : HolomorphicOn (ζ' / ζ) (Icc σ₁ 2 ×ℂ Icc (-T) T \ {1})) :
  ContinuousOn (fun (t : ℝ) ↦ -ζ' (σ₁ + t * I) / ζ (σ₁ + t * I)) (Icc (-T) T) := by
  rw [show (fun (t : ℝ) ↦ -ζ' (↑σ₁ + ↑t * I) / ζ (↑σ₁ + ↑t * I)) =
      -(ζ' / ζ) ∘ (fun (t : ℝ) ↦ ↑σ₁ + ↑t * I) by ext; simp; ring_nf]
  apply ContinuousOn.neg
  apply holoOn.continuousOn.comp (by fun_prop)
  intro t ht
  simp only [mem_diff, mem_singleton_iff]
  constructor
  · apply mem_reProdIm.mpr
    simp only [add_re, ofReal_re, mul_re, I_re, mul_zero, ofReal_im, I_im, mul_one, sub_self,
      add_zero, add_im, mul_im, zero_add, left_mem_Icc, ht, and_true]
    linarith
  · intro h
    replace h := congr_arg re h
    simp at h
    linarith

blueprint_comment /--
Next pull contours to another box.
-/

@[blueprint
  (title := "SmoothedChebyshevPull2")
  (statement := /--
  We have that
  $$
  I_{37} =
  I_3 - I_4 + I_5 + I_6 + I_7
  .
  $$
  -/)
  (proof := /-- Mimic the proof of Lemma \ref{SmoothedChebyshevPull1}. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean#L1347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44803b182000672977293e598b84e8212a3b9098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
