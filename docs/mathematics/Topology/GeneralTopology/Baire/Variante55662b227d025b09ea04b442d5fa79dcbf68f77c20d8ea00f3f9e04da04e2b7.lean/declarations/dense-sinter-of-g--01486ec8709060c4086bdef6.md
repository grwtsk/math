# dense_sInter_of_Gδ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e7a68560164efce84911dd90a9cf7aecab24db8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:587148b4-5291-d44c-8f0c-6d9c19ec165e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6b6f76a-5047-4c79-3e28-9f6311f93404",
  "kind": "theorem",
  "lexical_name": "dense_sInter_of_Gδ",
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
  "slug": "dense-sinter-of-g--01486ec8709060c4086bdef6",
  "source": {
    "blob": "5e7a68560164efce84911dd90a9cf7aecab24db8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 254,
    "path": "GRWTSK/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01486ec8709060c4086bdef6ee48ad368d674af63dc1cb0c78fa11947b45fa42",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6b6f76a-5047-4c79-3e28-9f6311f93404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dense_sInter_of_Gδ {S : Set (Set α)} (ho : ∀ s ∈ S, IsGδ s) (hS : S.Countable)
    (hd : ∀ s ∈ S, Dense s) : Dense (⋂₀ S) :=
dense_of_mem_residual ((countable_sInter_mem hS).mpr
  (fun _ hs => residual_of_dense_Gδ (ho _ hs) (hd _ hs)))
set_option linter.uppercaseLean3 false in
#align dense_sInter_of_Gδ dense_sInter_of_Gδ

/-- Baire theorem: a countable intersection of dense Gδ sets is dense. Formulated here with
an index set which is an encodable type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Baire/Variante55662b227d025b09ea04b442d5fa79dcbf68f77c20d8ea00f3f9e04da04e2b7.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e7a68560164efce84911dd90a9cf7aecab24db8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
