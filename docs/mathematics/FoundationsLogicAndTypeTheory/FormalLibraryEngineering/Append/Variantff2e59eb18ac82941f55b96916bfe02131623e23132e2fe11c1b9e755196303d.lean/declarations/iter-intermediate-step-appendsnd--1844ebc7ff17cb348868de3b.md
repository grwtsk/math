# Iter.Intermediate.step_appendSnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a1b9e5362e57abdb58d0f6ac65a3fb7ddea5155",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b4a3ca2-5c0f-0dbc-3b48-27320fdd719d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa086fd7-275e-4d6c-1d20-82169963731a",
  "kind": "theorem",
  "lexical_name": "Iter.Intermediate.step_appendSnd",
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
  "slug": "iter-intermediate-step-appendsnd--1844ebc7ff17cb348868de3b",
  "source": {
    "blob": "9a1b9e5362e57abdb58d0f6ac65a3fb7ddea5155",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1844ebc7ff17cb348868de3b99742c882e44bbbe209d6634cd17127b1981d0a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa086fd7-275e-4d6c-1d20-82169963731a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.Intermediate.step_appendSnd {α₁ α₂ β : Type w}
    [Iterator α₁ Id β] [Iterator α₂ Id β]
    {it₂ : Iter (α := α₂) β} :
    (Iter.Intermediate.appendSnd α₁ it₂).step =
      match it₂.step with
      | .yield it₂' out h => .yield (Iter.Intermediate.appendSnd α₁ it₂') out (.sndYield h)
      | .skip it₂' h => .skip (Iter.Intermediate.appendSnd α₁ it₂') (.sndSkip h)
      | .done h => .done (.sndDone h) := by
  simp only [Iter.step, appendSnd, toIterM_toIter, IterM.Intermediate.step_appendSnd, Id.run_bind]
  cases it₂.toIterM.step.run.inflate using PlausibleIterStep.casesOn <;> simp

@[cbv_eval, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a1b9e5362e57abdb58d0f6ac65a3fb7ddea5155` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
