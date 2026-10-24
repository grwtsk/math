# mem_closure_of_one_lt_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a7e71d4dc54f7648e1da52e067c1302d689a361",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 855,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c3c4629-9ecf-128f-0fa5-575eb230d996",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96ac7bf2-a59c-5709-c0cf-0662368f9e42",
  "kind": "lemma",
  "lexical_name": "mem_closure_of_one_lt_norm",
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
  "slug": "mem-closure-of-one-lt-norm--9210866275691cac252b18e2",
  "source": {
    "blob": "4a7e71d4dc54f7648e1da52e067c1302d689a361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 886,
    "line": 855,
    "path": "GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9210866275691cac252b18e225b2b999def9d5ed4d6a47f5a2e0aa21a1a56f87",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96ac7bf2-a59c-5709-c0cf-0662368f9e42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 855–886.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mem_closure_of_one_lt_norm {x : ℍ} (hxnorm : 1 < ‖(x : ℂ)‖) (hxre : |x.re| ≤ 1 / 2) :
    x ∈ closure 𝒟ᵒ := by
  -- Need to show that any `x` in this set is a limit of points in `𝒟ᵒ`.
  -- Idea is to use a line segment through the origin and `x`, and show that points
  -- a little below `x` are in `𝒟ᵒ`. There are some annoyances due
  -- to subtypes, etc.
  apply mem_closure_of_frequently_of_tendsto (α := ℝ)
      (b := 𝓝[<] 1) (f := fun t ↦ ofComplex (t * x))
  · apply Filter.Eventually.frequently
    simp only [fdo, Set.mem_ofPred, Filter.eventually_and, one_lt_normSq_iff]
    refine ⟨Filter.Tendsto.eventually_const_lt hxnorm (.mono_left ?_ nhdsWithin_le_nhds), ?_⟩
    · have : ContinuousAt (fun a : ℝ ↦ (ofComplex (a * x : ℂ) : ℂ)) 1 := by
        refine .comp (by fun_prop) ((OpenPartialHomeomorph.continuousAt _ ?_).comp (by fun_prop))
        simpa [ofComplex] using x.coe_im_pos
      simpa [ofComplex_apply_of_im_pos x.coe_im_pos] using this.tendsto.norm
    · simp only [eventually_nhdsWithin_iff]
      filter_upwards [eventually_gt_nhds zero_lt_one] with a ha ha'
      rw [← coe_re, ofComplex_apply_of_im_pos (by simpa using mul_pos ha x.coe_im_pos)]
      suffices a * |x.re| < 1 / 2 by simpa [abs_of_pos ha]
      nlinarith [Set.mem_Iio.mp ha']
  · refine .mono_left ?_ nhdsWithin_le_nhds
    rw [isOpenEmbedding_coe.tendsto_nhds_iff, Function.comp_def]
    have : Filter.Tendsto (fun t : ℝ ↦ t * (x : ℂ)) (𝓝 1) (𝓝 (x : ℂ)) := by
      rw [show 𝓝 (x : ℂ) = 𝓝 ((1 : ℝ) * (x : ℂ)) by simp]
      exact Continuous.tendsto (by fun_prop) _
    refine this.congr' ?_
    filter_upwards [eventually_gt_nhds zero_lt_one] with a ha
    rw [ofComplex_apply_of_im_pos (by simpa using mul_pos ha x.coe_im_pos)]

open scoped NNReal in
/-- The points on the bottom "arc" of the fundamental domain are in the closure
of the open fundamental domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Modular/Variante535d8cdeb2fcbfcfd67ddb86f6d0a01c8276627b3c06e9f9c138a9c19632052.lean#L855).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7e71d4dc54f7648e1da52e067c1302d689a361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
