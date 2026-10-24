# card_parts_equitabilise_subset_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a95d4de4313b67236c28a5b4ef792a89b9932d2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9081ba9-269b-2c5d-4950-0f4922219cb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27dbb47f-8a7f-a073-ba6f-dfb712e89078",
  "kind": "theorem",
  "lexical_name": "card_parts_equitabilise_subset_le",
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
  "slug": "card-parts-equitabilise-subset-le--b5e3ae2a285a8d145415307f",
  "source": {
    "blob": "a95d4de4313b67236c28a5b4ef792a89b9932d2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5e3ae2a285a8d145415307fa0594e593ee05d3f02abc3bc250f9860bd8e9f8c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27dbb47f-8a7f-a073-ba6f-dfb712e89078`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_parts_equitabilise_subset_le :
    t ∈ P.parts → #(t \ {u ∈ (P.equitabilise h).parts | u ⊆ t}.biUnion id) ≤ m :=
  (Classical.choose_spec <| P.equitabilise_aux h).2.1 t

variable (s)

/-- We can find equipartitions of arbitrary size. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Equitabilise/Variant500ca480dff5cd2cde68cdd605fdc1b095d5afb8c4ccc756be077c7c03235da9.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a95d4de4313b67236c28a5b4ef792a89b9932d2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
