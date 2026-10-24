# rawCanonicalAddressEnumeration_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "582efcab40f7eeef9fd47565664de208cf778b9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6ecb0c6-5a80-4ab5-769f-793b8470aa4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d05121b-0b52-3a7d-48d0-3b433671fcf4",
  "kind": "theorem",
  "lexical_name": "rawCanonicalAddressEnumeration_order",
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
  "slug": "rawcanonicaladdressenumeration-order--98d82d83eefe06e0ae38a1a3",
  "source": {
    "blob": "582efcab40f7eeef9fd47565664de208cf778b9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 182,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98d82d83eefe06e0ae38a1a3dcafa9edc447df526cc362a5be8f5e6690d5b078",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d05121b-0b52-3a7d-48d0-3b433671fcf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawCanonicalAddressEnumeration_order (left right : Nat) :
    left < right ↔
      rawCanonicalAddressEnumeration.code
        (rawCanonicalAddressEnumeration.enumerate left) <
      rawCanonicalAddressEnumeration.code
        (rawCanonicalAddressEnumeration.enumerate right) :=
  rawCanonicalAddressEnumeration.canonicalOrder left right

end BitMatrix.Carrier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `582efcab40f7eeef9fd47565664de208cf778b9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
