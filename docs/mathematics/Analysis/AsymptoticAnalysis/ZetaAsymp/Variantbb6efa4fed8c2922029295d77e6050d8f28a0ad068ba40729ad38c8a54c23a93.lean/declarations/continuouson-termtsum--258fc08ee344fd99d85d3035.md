# continuousOn_termTSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ff24a8a04888a98f63f34e0acca92e27e8843b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ef17918-6331-c308-4587-1358ec0a9939",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acf58070-0392-c542-c6b0-ca22b0a6cbf2",
  "kind": "lemma",
  "lexical_name": "continuousOn_termTSum",
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
  "slug": "continuouson-termtsum--258fc08ee344fd99d85d3035",
  "source": {
    "blob": "7ff24a8a04888a98f63f34e0acca92e27e8843b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 298,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:258fc08ee344fd99d85d3035855edccd69b8d5d5a77f04b2dab1b8df8af9398c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acf58070-0392-c542-c6b0-ca22b0a6cbf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuousOn_termTSum : ContinuousOn termTSum (Ici 1) := by
  -- We use dominated convergence, using `fun n ↦ term n 1` as our uniform bound (since `term` is
  -- monotone decreasing in `s`.)
  refine continuousOn_tsum (fun i ↦ continuousOn_term _) term_tsum_one.summable (fun n s hs ↦ ?_)
  rw [term, term, norm_of_nonneg]
  · simp_rw [intervalIntegral.integral_of_le (by linarith : (↑(n + 1) : ℝ) ≤ ↑(n + 1) + 1)]
    refine setIntegral_mono_on ?_ ?_ measurableSet_Ioc (fun x hx ↦ ?_)
    · exact (term_welldef n.succ_pos (zero_lt_one.trans_le hs)).1
    · exact (term_welldef n.succ_pos zero_lt_one).1
    · have : 1 ≤ x := le_trans (by simp) hx.1.le
      gcongr
      · exact sub_nonneg.mpr hx.1.le
      · exact hs
  · rw [intervalIntegral.integral_of_le (by linarith)]
    refine setIntegral_nonneg measurableSet_Ioc (fun x hx ↦ div_nonneg ?_ (rpow_nonneg ?_ _))
    all_goals linarith [hx.1]

@[deprecated (since := "2026-05-27")] alias continuousOn_term_tsum := continuousOn_termTSum

/-- First version of the limit formula, with a limit over real numbers tending to 1 from above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ff24a8a04888a98f63f34e0acca92e27e8843b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
