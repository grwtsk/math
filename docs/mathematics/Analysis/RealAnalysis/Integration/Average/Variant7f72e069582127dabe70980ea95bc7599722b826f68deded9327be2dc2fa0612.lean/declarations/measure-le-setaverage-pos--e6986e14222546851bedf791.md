# measure_le_setAverage_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c09f5bf38f21d132cf04f107eb43830375cbfbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 483,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45aab184-08f7-aa9c-0c4c-05741318b59a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c372822-cade-2aa9-a454-288e38b13cd7",
  "kind": "theorem",
  "lexical_name": "measure_le_setAverage_pos",
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
  "slug": "measure-le-setaverage-pos--e6986e14222546851bedf791",
  "source": {
    "blob": "5c09f5bf38f21d132cf04f107eb43830375cbfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 483,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6986e14222546851bedf791fb795f88da4cdfbd4d32525e4ca626c0b3f555c4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Average/Variant7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c372822-cade-2aa9-a454-288e38b13cd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_le_setAverage_pos (hμ : μ s ≠ 0) (hμ₁ : μ s ≠ ∞) (hf : IntegrableOn f s μ) :
    0 < μ ({x ∈ s | f x ≤ ⨍ a in s, f a ∂μ}) := by
  refine pos_iff_ne_zero.2 fun H => ?_
  replace H : (μ.restrict s) {x | f x ≤ ⨍ a in s, f a ∂μ} = 0 := by
    rwa [restrict_apply₀, inter_comm]
    exact AEStronglyMeasurable.nullMeasurableSet_le hf.1 aestronglyMeasurable_const
  haveI := Fact.mk hμ₁.lt_top
  refine (integral_sub_average (μ.restrict s) f).not_gt ?_
  refine (setIntegral_pos_iff_support_of_nonneg_ae ?_ ?_).2 ?_
  · refine measure_mono_null (fun x hx ↦ ?_) H
    simp only [Pi.zero_apply, sub_nonneg, mem_compl_iff, mem_setOf_eq, not_le] at hx
    exact hx.le
  · exact hf.sub (integrableOn_const hμ₁)
  · rwa [pos_iff_ne_zero, inter_comm, ← diff_compl, ← diff_inter_self_eq_diff, measure_diff_null]
    refine measure_mono_null ?_ (measure_inter_eq_zero_of_restrict H)
    exact inter_subset_inter_left _ fun a ha => (sub_eq_zero.1 <| of_not_not ha).le

/-- **First moment method**. An integrable function is greater than its mean on a set of positive
measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Average/Variant7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant7f72e069582127dabe70980ea95bc7599722b826f68deded9327be2dc2fa0612.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c09f5bf38f21d132cf04f107eb43830375cbfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
