# renderOutputs_lookup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d90a5f4c93ca32408a1fc00881a04b0ffd43a7ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 373,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ba0331f-c992-51f2-d812-db34579f8fe4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd6b20e4-20ae-cb92-d035-9b28a115f737",
  "kind": "theorem",
  "lexical_name": "renderOutputs_lookup",
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
  "slug": "renderoutputs-lookup--8d0cd4ce6e06ee33b5f47522",
  "source": {
    "blob": "d90a5f4c93ca32408a1fc00881a04b0ffd43a7ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 373,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d0cd4ce6e06ee33b5f47522adf9ba08cb1b08120d1f489df0c4e2dd8e73f68c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd6b20e4-20ae-cb92-d035-9b28a115f737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem renderOutputs_lookup {objects : List Bytes} {outputs : List Output}
    {rendered : List ByteOutput} (renderedExact : renderOutputs objects outputs = some rendered)
    (key : TargetKey) :
    OccurrencePlans.lookup key rendered = (outputLookup key outputs).bind fun index => objects[index]? := by
  induction outputs generalizing rendered with
  | nil => simp [renderOutputs] at renderedExact; subst rendered; rfl
  | cons row rest ih =>
      unfold renderOutputs at renderedExact
      cases hp : objects[row.object]? with
      | none => simp [hp] at renderedExact
      | some payload =>
          cases ht : renderOutputs objects rest with
          | none => simp [ht] at renderedExact
          | some tail =>
              simp [hp, ht] at renderedExact
              subst rendered
              by_cases same : key = outputKey row
              · simp [OccurrencePlans.lookup, outputLookup, outputKey, same, hp]
              · simp [OccurrencePlans.lookup, outputLookup, outputKey] at same ⊢
                simp [same, ih ht]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d90a5f4c93ca32408a1fc00881a04b0ffd43a7ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
