# card_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9738faee9c74d894afc9f81cdf090629e763d046",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70861d4fb3a233a944997dca702a529f91b446687f8701b6dab3a3ed4eb8d535.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1f82d00-b861-f0b5-8dc2-77fda59b1291",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2e2be19-3470-b8bb-57a9-0b72110449b1",
  "kind": "theorem",
  "lexical_name": "card_le_of_le",
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
  "slug": "card-le-of-le--69bd139a23bb7bc98bc7ee83",
  "source": {
    "blob": "9738faee9c74d894afc9f81cdf090629e763d046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 158,
    "path": "GRWTSK/Algebra/GroupTheory/Finite/Variant70861d4fb3a233a944997dca702a529f91b446687f8701b6dab3a3ed4eb8d535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69bd139a23bb7bc98bc7ee8369931040993695c54b658b668896b98c1525b721",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finite/Variant70861d4fb3a233a944997dca702a529f91b446687f8701b6dab3a3ed4eb8d535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2e2be19-3470-b8bb-57a9-0b72110449b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_of_le {H K : Subgroup G} [Finite K] (h : H ≤ K) : Nat.card H ≤ Nat.card K :=
  Nat.card_le_card_of_injective _ (Subgroup.inclusion_injective h)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finite/Variant70861d4fb3a233a944997dca702a529f91b446687f8701b6dab3a3ed4eb8d535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finite/Variant70861d4fb3a233a944997dca702a529f91b446687f8701b6dab3a3ed4eb8d535.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9738faee9c74d894afc9f81cdf090629e763d046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
