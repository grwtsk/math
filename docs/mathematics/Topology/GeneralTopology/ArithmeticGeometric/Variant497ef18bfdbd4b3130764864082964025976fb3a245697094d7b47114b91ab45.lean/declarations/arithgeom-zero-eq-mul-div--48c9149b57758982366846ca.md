# arithGeom_zero_eq_mul_div

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
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b55b10d-ce6e-721b-3c89-06b0a02693e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:933a1984-4964-f4f3-20ba-4da79bba104c",
  "kind": "lemma",
  "lexical_name": "arithGeom_zero_eq_mul_div",
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
  "slug": "arithgeom-zero-eq-mul-div--48c9149b57758982366846ca",
  "source": {
    "blob": "e8c4fcfa8e1d6326bc4c643ac0b2d6abb1f27581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/ArithmeticGeometric/Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48c9149b57758982366846ca895cc1a0938428713e235f7c15b03af7c3bb4b8b",
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

Occurrence: `result:933a1984-4964-f4f3-20ba-4da79bba104c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma arithGeom_zero_eq_mul_div (ha : a ≠ 1) (n : ℕ) :
    arithGeom a b 0 n = b * (a ^ n - 1) / (a - 1) := by
  rw [arithGeom_zero_eq_mul_div' ha n, ← neg_sub _ a, div_neg, ← neg_sub _ (a ^ n), mul_neg,
    neg_div, neg_neg]

variable [LinearOrder R] [IsStrictOrderedRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArithmeticGeometric/Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArithmeticGeometric/Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8c4fcfa8e1d6326bc4c643ac0b2d6abb1f27581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
