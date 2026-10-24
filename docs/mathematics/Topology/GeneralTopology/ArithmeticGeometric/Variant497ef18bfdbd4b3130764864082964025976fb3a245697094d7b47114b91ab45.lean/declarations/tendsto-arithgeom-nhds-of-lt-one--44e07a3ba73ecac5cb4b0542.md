# tendsto_arithGeom_nhds_of_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8c4fcfa8e1d6326bc4c643ac0b2d6abb1f27581",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1516954-6f0c-1bdb-1070-15822c6e12d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b963116-7702-a8b4-6273-56be152f7630",
  "kind": "lemma",
  "lexical_name": "tendsto_arithGeom_nhds_of_lt_one",
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
  "slug": "tendsto-arithgeom-nhds-of-lt-one--44e07a3ba73ecac5cb4b0542",
  "source": {
    "blob": "e8c4fcfa8e1d6326bc4c643ac0b2d6abb1f27581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/ArithmeticGeometric/Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44e07a3ba73ecac5cb4b0542720af846690359f3fe547544df4b1d4249983dc7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArithmeticGeometric/Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b963116-7702-a8b4-6273-56be152f7630`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_arithGeom_nhds_of_lt_one [Archimedean R] [TopologicalSpace R] [OrderTopology R]
    (ha_pos : 0 ≤ a) (ha : a < 1) :
    Tendsto (arithGeom a b u₀) atTop (𝓝 (b / (1 - a))) := by
  rw [arithGeom_eq' ha.ne]
  conv_rhs => rw [← zero_add (b / (1 - a))]
  refine Tendsto.add ?_ tendsto_const_nhds
  conv_rhs => rw [← zero_mul (u₀ - (b / (1 - a)))]
  exact (tendsto_pow_atTop_nhds_zero_of_lt_one ha_pos ha).mul_const _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArithmeticGeometric/Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArithmeticGeometric/Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8c4fcfa8e1d6326bc4c643ac0b2d6abb1f27581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
