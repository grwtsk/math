# posPart_mul_negPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e304855c08968c5e8dd40522b0237a18907f71b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec85ba25-db95-f191-e8f8-c52069d4c0c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68631bc2-b035-834c-42c6-3f3ec1de4ae0",
  "kind": "lemma",
  "lexical_name": "posPart_mul_negPart",
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
  "slug": "pospart-mul-negpart--981bf983a08b292310f70d6e",
  "source": {
    "blob": "e304855c08968c5e8dd40522b0237a18907f71b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:981bf983a08b292310f70d6ee4a73550bccdf6026126092a5338dc35f7b4773f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68631bc2-b035-834c-42c6-3f3ec1de4ae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma posPart_mul_negPart (a : A) : a⁺ * a⁻ = 0 := by
  rw [posPart_def, negPart_def]
  by_cases ha : IsSelfAdjoint a
  · rw [← cfcₙ_mul _ _, ← cfcₙ_zero ℝ a]
    refine cfcₙ_congr (fun x _ ↦ ?_)
    simp only [_root_.posPart_def, _root_.negPart_def]
    simpa using le_total x 0
  · simp [cfcₙ_apply_of_not_predicate a ha]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e304855c08968c5e8dd40522b0237a18907f71b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
