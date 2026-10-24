# countableGenerate_isGreatest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1601a0e3596de19745e9424ad0ca967ae7d9c502",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:693a49cb-cdd6-fa77-9406-a583e48f752f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:775c4fc4-5648-64e0-04b8-28e52b9654e5",
  "kind": "theorem",
  "lexical_name": "countableGenerate_isGreatest",
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
  "slug": "countablegenerate-isgreatest--3004d3aaaba7fc3ef5d8461e",
  "source": {
    "blob": "1601a0e3596de19745e9424ad0ca967ae7d9c502",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 263,
    "path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3004d3aaaba7fc3ef5d8461e0be68d8ab1815db268e76fbf8080c262decaabab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:775c4fc4-5648-64e0-04b8-28e52b9654e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countableGenerate_isGreatest :
    IsGreatest { f : Filter α | CountableInterFilter f ∧ g ⊆ f.sets } (countableGenerate g) := by
  refine' ⟨⟨inferInstance, fun s => CountableGenerateSets.basic⟩, _⟩
  rintro f ⟨fct, hf⟩
  rwa [@le_countableGenerate_iff_of_countableInterFilter _ _ _ fct]
#align filter.countable_generate_is_greatest Filter.countableGenerate_isGreatest

end Filter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1601a0e3596de19745e9424ad0ca967ae7d9c502` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
