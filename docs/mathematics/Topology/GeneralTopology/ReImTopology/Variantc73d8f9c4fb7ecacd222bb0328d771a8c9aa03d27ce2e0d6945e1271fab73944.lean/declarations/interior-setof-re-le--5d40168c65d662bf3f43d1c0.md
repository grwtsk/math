# interior_setOf_re_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2278b638cf18abffb671500a222ff53e4168eba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0e4583d-71b8-b394-f034-f71852f9ae93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b86b3a55-758a-143d-1a64-29ec73a5852b",
  "kind": "theorem",
  "lexical_name": "interior_setOf_re_le",
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
  "slug": "interior-setof-re-le--5d40168c65d662bf3f43d1c0",
  "source": {
    "blob": "a2278b638cf18abffb671500a222ff53e4168eba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 94,
    "path": "GRWTSK/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d40168c65d662bf3f43d1c008dadcc7e0b6790e02558f0fe8b9e10b81b41f42",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b86b3a55-758a-143d-1a64-29ec73a5852b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_setOf_re_le (a : ℝ) : interior { z : ℂ | z.re ≤ a } = { z | z.re < a } := by
  simpa only [interior_Iic] using interior_preimage_re (Iic a)
#align complex.interior_set_of_re_le Complex.interior_setOf_re_le

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ReImTopology/Variantc73d8f9c4fb7ecacd222bb0328d771a8c9aa03d27ce2e0d6945e1271fab73944.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2278b638cf18abffb671500a222ff53e4168eba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
