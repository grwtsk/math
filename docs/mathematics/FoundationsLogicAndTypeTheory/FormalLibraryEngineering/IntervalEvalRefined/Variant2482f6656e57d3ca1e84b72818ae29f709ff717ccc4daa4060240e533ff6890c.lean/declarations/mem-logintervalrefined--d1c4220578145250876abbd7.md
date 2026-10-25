# mem_logIntervalRefined

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4389c9871d08669b1ef5b23c4546296b381b9551",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d16c546-224a-462a-d912-edcdd946a66c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:def231a6-c295-7f1d-0c24-94905f26715e",
  "kind": "theorem",
  "lexical_name": "mem_logIntervalRefined",
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
  "slug": "mem-logintervalrefined--d1c4220578145250876abbd7",
  "source": {
    "blob": "4389c9871d08669b1ef5b23c4546296b381b9551",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1c4220578145250876abbd7c870986241c0a93573ca367657d7c7661a72c0d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:def231a6-c295-7f1d-0c24-94905f26715e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_logIntervalRefined {x : ℝ} {I : IntervalRat.IntervalRatPos} (hx : x ∈ I.toIntervalRat) :
    Real.log x ∈ logIntervalRefined I := by
  unfold logIntervalRefined
  by_cases hw : I.width ≤ 1
  · simp only [hw, ↓reduceIte]
    cases hlog : TaylorModel.tmLog I.toIntervalRat 5 with
    | none =>
      -- This case shouldn't happen for positive intervals
      exact IntervalRat.mem_logInterval hx
    | some logTM =>
      -- Use tmLog_correct: log x ∈ logTM.evalSet x, then taylorModel_correct gives bound
      have h_evalSet := TaylorModel.tmLog_correct I.toIntervalRat 5 logTM hlog x hx
      -- logTM.domain = I.toIntervalRat from tmLog definition
      have hdom : logTM.domain = I.toIntervalRat := by
        simp only [TaylorModel.tmLog, I.lo_pos, ↓reduceDIte, Option.some.injEq] at hlog
        simp only [← hlog]
      exact taylorModel_correct logTM Real.log
        (fun z hz => TaylorModel.tmLog_correct I.toIntervalRat 5 logTM hlog z (hdom ▸ hz)) x (hdom.symm ▸ hx)
  · simp only [hw, ↓reduceIte]
    exact IntervalRat.mem_logInterval hx

/-- Refined interval bound for atanh using Taylor models.
    For small intervals with |x| < 1 and width ≤ 1, uses degree-5 Taylor model.
    For larger intervals, uses computed bound via monotonicity.
    Requires -1 < I.lo and I.hi < 1 for correctness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4389c9871d08669b1ef5b23c4546296b381b9551` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
