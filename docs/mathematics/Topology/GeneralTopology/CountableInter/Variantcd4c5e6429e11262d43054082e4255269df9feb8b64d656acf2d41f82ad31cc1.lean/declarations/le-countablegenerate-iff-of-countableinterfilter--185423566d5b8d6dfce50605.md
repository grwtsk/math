# le_countableGenerate_iff_of_countableInterFilter

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
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56cc061a-a15f-c055-ddac-dbd4197f1dd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98d0c768-b351-029d-86ad-b7c7ac5e6065",
  "kind": "theorem",
  "lexical_name": "le_countableGenerate_iff_of_countableInterFilter",
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
  "slug": "le-countablegenerate-iff-of-countableinterfilter--185423566d5b8d6dfce50605",
  "source": {
    "blob": "1601a0e3596de19745e9424ad0ca967ae7d9c502",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 248,
    "path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:185423566d5b8d6dfce50605c4d89ff1230748a25c9861fc3830597f77dce9b8",
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

Occurrence: `result:98d0c768-b351-029d-86ad-b7c7ac5e6065`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_countableGenerate_iff_of_countableInterFilter {f : Filter α} [CountableInterFilter f] :
    f ≤ countableGenerate g ↔ g ⊆ f.sets := by
  constructor <;> intro h
  · exact subset_trans (fun s => CountableGenerateSets.basic) h
  intro s hs
  induction' hs with s hs s t _ st ih S Sct _ ih
  · exact h hs
  · exact univ_mem
  · exact mem_of_superset ih st
  exact (countable_sInter_mem Sct).mpr ih
#align filter.le_countable_generate_iff_of_countable_Inter_filter Filter.le_countableGenerate_iff_of_countableInterFilter

variable (g)

/-- `countableGenerate g` is the greatest `countableInterFilter` containing `g`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1601a0e3596de19745e9424ad0ca967ae7d9c502` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
