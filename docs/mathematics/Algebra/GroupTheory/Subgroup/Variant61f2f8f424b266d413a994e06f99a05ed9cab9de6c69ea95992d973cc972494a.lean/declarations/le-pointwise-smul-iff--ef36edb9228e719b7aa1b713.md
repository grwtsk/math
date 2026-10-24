# le_pointwise_smul_iff₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ea1e8b0-fec8-986c-dc98-95682bcfcb87",
  "kind": "lemma",
  "lexical_name": "le_pointwise_smul_iff₀",
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
  "slug": "le-pointwise-smul-iff--ef36edb9228e719b7aa1b713",
  "source": {
    "blob": "418ab985a5217742a4261de5487571c8bf60ed34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 149,
    "path": "GRWTSK/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef36edb9228e719b7aa1b713b917d6e93499131f9d3f0fd21a06e9163bd24424",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ea1e8b0-fec8-986c-dc98-95682bcfcb87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_pointwise_smul_iff₀ (ha : a ≠ 0) : S ≤ a • T ↔ a⁻¹ • S ≤ T := subset_smul_set_iff₀ ha

end GroupWithZero
end AddSubgroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Subgroup/Variant61f2f8f424b266d413a994e06f99a05ed9cab9de6c69ea95992d973cc972494a.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `418ab985a5217742a4261de5487571c8bf60ed34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
