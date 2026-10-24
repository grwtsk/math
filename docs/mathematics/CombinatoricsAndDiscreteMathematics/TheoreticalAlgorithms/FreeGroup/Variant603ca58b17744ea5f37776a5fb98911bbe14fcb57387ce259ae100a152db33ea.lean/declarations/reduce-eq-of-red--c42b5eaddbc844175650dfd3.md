# reduce.eq_of_red

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a00d3e82087a4f14eece8b32b9c6fbdb7cb8c545",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/603ca58b17744ea5f37776a5fb98911bbe14fcb57387ce259ae100a152db33ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a4065bb-75bb-49c4-e1be-1dd96c7044c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d66e7e77-670a-ba9f-5eed-f046ab91a5a2",
  "kind": "theorem",
  "lexical_name": "reduce.eq_of_red",
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
  "slug": "reduce-eq-of-red--c42b5eaddbc844175650dfd3",
  "source": {
    "blob": "a00d3e82087a4f14eece8b32b9c6fbdb7cb8c545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1228,
    "line": 1216,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant603ca58b17744ea5f37776a5fb98911bbe14fcb57387ce259ae100a152db33ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c42b5eaddbc844175650dfd3c8608170d36a895ffcabc6bcffdabb13b2d85fde",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant603ca58b17744ea5f37776a5fb98911bbe14fcb57387ce259ae100a152db33ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d66e7e77-670a-ba9f-5eed-f046ab91a5a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1216–1228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce.eq_of_red (H : Red L₁ L₂) : reduce L₁ = reduce L₂ :=
  let ⟨_L₃, HR13, HR23⟩ := Red.church_rosser reduce.red (Red.trans H reduce.red)
  (reduce.min HR13).trans (reduce.min HR23).symm
#align free_group.reduce.eq_of_red FreeGroup.reduce.eq_of_red
#align free_add_group.reduce.eq_of_red FreeAddGroup.reduce.eq_of_red

alias red.reduce_eq := reduce.eq_of_red
#align free_group.red.reduce_eq FreeGroup.red.reduce_eq

alias freeAddGroup.red.reduce_eq := FreeAddGroup.reduce.eq_of_red
#align free_group.free_add_group.red.reduce_eq FreeGroup.freeAddGroup.red.reduce_eq

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant603ca58b17744ea5f37776a5fb98911bbe14fcb57387ce259ae100a152db33ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant603ca58b17744ea5f37776a5fb98911bbe14fcb57387ce259ae100a152db33ea.lean#L1216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a00d3e82087a4f14eece8b32b9c6fbdb7cb8c545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
