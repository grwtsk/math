# count_eq_length

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3989d750056cd243f8dd8d48f0784f8954f4388",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/434faadcbbc425cba5b93d1d5547ec060eece7826afc1d20b1f73e67d357ee1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6ceada0-2e37-a228-e696-71ce04f122f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71929510-a93e-02c9-fb4e-5bdf484fd41a",
  "kind": "theorem",
  "lexical_name": "count_eq_length",
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
  "slug": "count-eq-length--aae2a4e7ec6a83cee34f1755",
  "source": {
    "blob": "f3989d750056cd243f8dd8d48f0784f8954f4388",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 359,
    "path": "GRWTSK/Topology/GeneralTopology/Count/Variant434faadcbbc425cba5b93d1d5547ec060eece7826afc1d20b1f73e67d357ee1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aae2a4e7ec6a83cee34f1755bdb55b1d34de10559df1de691137d35070a099b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Count/Variant434faadcbbc425cba5b93d1d5547ec060eece7826afc1d20b1f73e67d357ee1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71929510-a93e-02c9-fb4e-5bdf484fd41a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_eq_length {l : List α} : count a l = l.length ↔ ∀ b ∈ l, a = b := by
  rw [count, countP_eq_length]
  refine ⟨fun h b hb => Eq.symm ?_, fun h b hb => ?_⟩
  · simpa using h b hb
  · rw [h b hb, beq_self_eq_true]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Count/Variant434faadcbbc425cba5b93d1d5547ec060eece7826afc1d20b1f73e67d357ee1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Count/Variant434faadcbbc425cba5b93d1d5547ec060eece7826afc1d20b1f73e67d357ee1a.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3989d750056cd243f8dd8d48f0784f8954f4388` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
