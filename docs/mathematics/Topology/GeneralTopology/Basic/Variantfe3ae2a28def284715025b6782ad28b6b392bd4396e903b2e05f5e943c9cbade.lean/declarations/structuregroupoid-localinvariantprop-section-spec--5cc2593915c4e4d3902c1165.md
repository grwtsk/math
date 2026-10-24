# StructureGroupoid.LocalInvariantProp.section_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c8abd77d96dbf5bf1fe92fcc148b87570bcb4b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe3ae2a28def284715025b6782ad28b6b392bd4396e903b2e05f5e943c9cbade.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88d32323-cf0a-bd63-3b30-31ebf8275181",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5fc217c-bcd3-4eb4-2ef2-66faf1e3129c",
  "kind": "theorem",
  "lexical_name": "StructureGroupoid.LocalInvariantProp.section_spec",
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
  "slug": "structuregroupoid-localinvariantprop-section-spec--5cc2593915c4e4d3902c1165",
  "source": {
    "blob": "0c8abd77d96dbf5bf1fe92fcc148b87570bcb4b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantfe3ae2a28def284715025b6782ad28b6b392bd4396e903b2e05f5e943c9cbade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cc2593915c4e4d3902c116588761a4032dce09efee5d4eb6b1a4100f50d8e23",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantfe3ae2a28def284715025b6782ad28b6b392bd4396e903b2e05f5e943c9cbade.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5fc217c-bcd3-4eb4-2ef2-66faf1e3129c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StructureGroupoid.LocalInvariantProp.section_spec (hG : LocalInvariantProp G G' P)
    (U : (Opens (TopCat.of M))ᵒᵖ) (f : (hG.sheaf M M').obj.obj U) : ChartedSpace.LiftProp P f :=
  f.2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantfe3ae2a28def284715025b6782ad28b6b392bd4396e903b2e05f5e943c9cbade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantfe3ae2a28def284715025b6782ad28b6b392bd4396e903b2e05f5e943c9cbade.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c8abd77d96dbf5bf1fe92fcc148b87570bcb4b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
