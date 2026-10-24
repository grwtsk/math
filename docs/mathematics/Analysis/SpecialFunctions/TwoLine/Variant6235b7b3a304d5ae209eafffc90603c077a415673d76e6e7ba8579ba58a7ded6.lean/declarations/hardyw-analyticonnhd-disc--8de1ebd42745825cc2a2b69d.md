# hardyW_analyticOnNhd_disc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1e7070a1eaf13e0fff8bb3b6e83a86e3be7a21a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65c51d7b-c6c7-09b2-8c31-9be90961e72d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57c20292-1c08-c167-b02c-37d7c139305d",
  "kind": "theorem",
  "lexical_name": "hardyW_analyticOnNhd_disc",
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
  "slug": "hardyw-analyticonnhd-disc--8de1ebd42745825cc2a2b69d",
  "source": {
    "blob": "b1e7070a1eaf13e0fff8bb3b6e83a86e3be7a21a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 128,
    "path": "GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8de1ebd42745825cc2a2b69d6025e4dbb54fcc09492c5bf9aa5e630f55b6b837",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57c20292-1c08-c167-b02c-37d7c139305d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardyW_analyticOnNhd_disc (t : ℝ) (ht : 2 ≤ |t|) :
    AnalyticOnNhd ℂ hardyW (closedBall ((2 : ℂ) + t * I) (91 / 50)) := fun _ hz =>
  hardyW_analyticAt (im_ne_zero_of_mem_closedBall (by norm_num) ht hz)

/-! ### the lower bound on Re s = 2 -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant6235b7b3a304d5ae209eafffc90603c077a415673d76e6e7ba8579ba58a7ded6.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1e7070a1eaf13e0fff8bb3b6e83a86e3be7a21a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
