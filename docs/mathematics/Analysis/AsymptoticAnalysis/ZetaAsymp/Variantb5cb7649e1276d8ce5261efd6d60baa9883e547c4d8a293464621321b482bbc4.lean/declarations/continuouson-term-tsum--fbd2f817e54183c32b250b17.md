# continuousOn_term_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e480af9f9916b5dec99f1a66725f221e6618d221",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8da73f8a-a566-3e7f-8f41-d48079268325",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf59d18c-be89-637d-8230-ce022c6f8476",
  "kind": "lemma",
  "lexical_name": "continuousOn_term_tsum",
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
  "slug": "continuouson-term-tsum--fbd2f817e54183c32b250b17",
  "source": {
    "blob": "e480af9f9916b5dec99f1a66725f221e6618d221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 272,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbd2f817e54183c32b250b17935c71d47aa2e6164eb2bc4aeecfe058de5134dc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf59d18c-be89-637d-8230-ce022c6f8476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuousOn_term_tsum : ContinuousOn term_tsum (Ici 1) := by
  -- We use dominated convergence, using `fun n ↦ term n 1` as our uniform bound (since `term` is
  -- monotone decreasing in `s`.)
  refine continuousOn_tsum (fun i ↦ continuousOn_term _) term_tsum_one.summable (fun n s hs ↦ ?_)
  rw [term, term, norm_of_nonneg]
  · simp_rw [intervalIntegral.integral_of_le (by linarith : (↑(n + 1) : ℝ) ≤ ↑(n + 1) + 1)]
    refine setIntegral_mono_on ?_ ?_ measurableSet_Ioc (fun x hx ↦ ?_)
    · exact (term_welldef n.succ_pos (zero_lt_one.trans_le hs)).1
    · exact (term_welldef n.succ_pos zero_lt_one).1
    · rw [div_le_div_iff_of_pos_left] -- leave side-goals to end and kill them all together
      · apply rpow_le_rpow_of_exponent_le
        · exact (lt_of_le_of_lt (by simp) hx.1).le
        · linarith [mem_Ici.mp hs]
      · linarith [hx.1]
      all_goals apply rpow_pos_of_pos ((Nat.cast_nonneg _).trans_lt hx.1)
  · rw [intervalIntegral.integral_of_le (by linarith)]
    refine setIntegral_nonneg measurableSet_Ioc (fun x hx ↦ div_nonneg ?_ (rpow_nonneg ?_ _))
    all_goals linarith [hx.1]

/-- First version of the limit formula, with a limit over real numbers tending to 1 from above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e480af9f9916b5dec99f1a66725f221e6618d221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
