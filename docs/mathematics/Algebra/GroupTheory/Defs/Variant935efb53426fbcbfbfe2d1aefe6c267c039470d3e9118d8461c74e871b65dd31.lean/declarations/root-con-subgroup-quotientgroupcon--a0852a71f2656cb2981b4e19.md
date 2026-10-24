# _root_.Con.subgroup_quotientGroupCon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1754237fcc3b4a87ed2aaadf5c1e8496886d370f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b312be0b-a459-ce92-c9f0-b0907cf40ef3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c105590b-35f3-ca5f-0d92-bf64a69bdf33",
  "kind": "theorem",
  "lexical_name": "_root_.Con.subgroup_quotientGroupCon",
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
  "slug": "root-con-subgroup-quotientgroupcon--a0852a71f2656cb2981b4e19",
  "source": {
    "blob": "1754237fcc3b4a87ed2aaadf5c1e8496886d370f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 205,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0852a71f2656cb2981b4e19cc948b19993577e163fa7d094c1b030fe29b9a2e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c105590b-35f3-ca5f-0d92-bf64a69bdf33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Con.subgroup_quotientGroupCon (H : Subgroup G) [H.Normal] :
    (QuotientGroup.con H).subgroup = H := by
  ext
  simp [QuotientGroup.con, leftRel_apply]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1754237fcc3b4a87ed2aaadf5c1e8496886d370f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
