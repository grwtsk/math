# one_step_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64ecbe6384ec34e4c61fc89f8fa2d934ff62d5cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad8f2597-0bab-81c4-3ed3-1f8b10bfe9f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a0e5702-3a3f-d3ae-6faa-9b74fe718d30",
  "kind": "theorem",
  "lexical_name": "one_step_bound",
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
  "slug": "one-step-bound--01eb0fbbc8d6b4ac9788b56d",
  "source": {
    "blob": "64ecbe6384ec34e4c61fc89f8fa2d934ff62d5cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 283,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01eb0fbbc8d6b4ac9788b56d66d6b1c9d45405aef4545189a4c237ebfa5358e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a0e5702-3a3f-d3ae-6faa-9b74fe718d30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_step_bound
    (step : ApproximationStep X)
    {approximate reference : X}
    {initial : ℝ≥0}
    (initialSound :
      nndist approximate reference ≤ initial) :
    nndist
        (step.implementation approximate)
        (step.reference reference) ≤
      step.lipschitz * initial + step.localError := by
  calc
    nndist
        (step.implementation approximate)
        (step.reference reference)
        ≤
        nndist
            (step.implementation approximate)
            (step.reference approximate) +
          nndist
            (step.reference approximate)
            (step.reference reference) :=
      nndist_triangle _ _ _
    _ ≤
        step.localError +
          step.lipschitz * nndist approximate reference :=
      add_le_add
        (step.localSound approximate)
        (step.referenceLipschitz.nndist_le approximate reference)
    _ ≤ step.localError + step.lipschitz * initial := by
      exact add_le_add_right
        (mul_le_mul_right initialSound step.lipschitz)
        step.localError
    _ = step.lipschitz * initial + step.localError :=
      add_comm _ _

/-- Chronological reference execution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64ecbe6384ec34e4c61fc89f8fa2d934ff62d5cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
