# zetaPoleFactor_analyticAt_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9c078f92a37b220288b6a23869381b2296aac1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:290cb83a-bdab-739f-ca22-c8a932f05806",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a61e5de7-81b0-51df-03fd-4836c092d5e4",
  "kind": "theorem",
  "lexical_name": "zetaPoleFactor_analyticAt_zero",
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
  "slug": "zetapolefactor-analyticat-zero--0cfa95a4729f1b8595d16338",
  "source": {
    "blob": "a9c078f92a37b220288b6a23869381b2296aac1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 42,
    "path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cfa95a4729f1b8595d163384e0617621e62e0c3f9df5918477e7647268e40b1",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a61e5de7-81b0-51df-03fd-4836c092d5e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zetaPoleFactor_analyticAt_zero : AnalyticAt ℂ zetaPoleFactor 0 := by
  apply Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
  · filter_upwards [self_mem_nhdsWithin] with s hs
    have hn : 1 + s ≠ (1 : ℂ) := by simpa using hs
    have hz := (differentiableAt_riemannZeta hn).comp s
      ((differentiableAt_const 1).add differentiableAt_id)
    apply (differentiableAt_id.mul hz).congr_of_eventuallyEq
    filter_upwards [eventually_ne_nhds hs] with t ht
    exact zetaPoleFactor_off t ht
  · rw [continuousAt_iff_punctured_nhds, zetaPoleFactor_zero]
    exact zetaPoleFactor_limit

/-- The reciprocal zeta function with the genuine removed value zero at `s = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c078f92a37b220288b6a23869381b2296aac1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
