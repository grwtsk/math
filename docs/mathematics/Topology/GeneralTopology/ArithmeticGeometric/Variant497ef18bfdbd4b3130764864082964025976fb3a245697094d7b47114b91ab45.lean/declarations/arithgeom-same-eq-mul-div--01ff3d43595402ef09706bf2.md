# arithGeom_same_eq_mul_div

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
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22cc608b-d7f7-1d47-a0d1-378e47ecaedb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0509fc75-194e-7c53-0730-cc7778cd9c70",
  "kind": "lemma",
  "lexical_name": "arithGeom_same_eq_mul_div",
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
  "slug": "arithgeom-same-eq-mul-div--01ff3d43595402ef09706bf2",
  "source": {
    "blob": "e8c4fcfa8e1d6326bc4c643ac0b2d6abb1f27581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/ArithmeticGeometric/Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01ff3d43595402ef09706bf249bfde8ca3adac5b14bfb52c741e78d15af49c38",
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

Occurrence: `result:0509fc75-194e-7c53-0730-cc7778cd9c70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma arithGeom_same_eq_mul_div (ha : a ≠ 1) (n : ℕ) :
    arithGeom a b b n = b * (a ^ (n + 1) - 1) / (a - 1) := by
  rw [arithGeom_same_eq_mul_div' ha n, ← neg_sub _ a, div_neg,
    ← neg_sub _ (a ^ (n + 1)), mul_neg, neg_div, neg_neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArithmeticGeometric/Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArithmeticGeometric/Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8c4fcfa8e1d6326bc4c643ac0b2d6abb1f27581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
