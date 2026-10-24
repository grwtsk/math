# produced_certificate_check

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
      "line": 746,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3a1d182-1bc4-eace-999d-d878d5f61f0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e889fbb5-9473-989b-f1f9-a0d75e51bc4c",
  "kind": "theorem",
  "lexical_name": "produced_certificate_check",
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
  "slug": "produced-certificate-check--d373975d18a5402723934071",
  "source": {
    "blob": "d90a5f4c93ca32408a1fc00881a04b0ffd43a7ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 746,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d373975d18a5402723934071826377f1996c8ed548cb4a93fbf2e37b2712389c",
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

Occurrence: `result:e889fbb5-9473-989b-f1f9-a0d75e51bc4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 746–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem produced_certificate_check {objects : List Bytes} {sets : List ReadSet} {raw : List RawRoute}
    {prepared : List Binding} {placeholders : List String} {empty : Nat} {result : Produced}
    (produced : produce objects sets raw prepared placeholders empty = some result) :
    certificateCheck objects sets sets (routeBindings raw prepared) result.occurrences result.outputs = true := by
  have facts := (produce_spec _ _ _ _ _ _ _).mp produced
  have inputs := (inputCheck_spec _ _ _ _ _).mp facts.1
  obtain ⟨entries, rendered, hsource, hocc, hout, _⟩ := produced_exact_decode produced
  apply (certificateCheck_spec _ _ _ _ _ _).mpr
  refine ⟨(readsetsCheck_spec _ _).mp inputs.1, rfl, inputs.2.1, ?_, ?_, ?_⟩
  · rw [hsource, hocc]
  · simp [hsource]
  · unfold coverageCheck
    rw [hocc, hout]
    apply (OccurrencePlans.coverageCheck_eq_true_iff _ _).mpr
    apply renderOccurrences_covered hocc hout
    intro row member
    exact mergeOutputs_covers_rows facts.2.2.1 row (by simp [member])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean#L746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d90a5f4c93ca32408a1fc00881a04b0ffd43a7ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
