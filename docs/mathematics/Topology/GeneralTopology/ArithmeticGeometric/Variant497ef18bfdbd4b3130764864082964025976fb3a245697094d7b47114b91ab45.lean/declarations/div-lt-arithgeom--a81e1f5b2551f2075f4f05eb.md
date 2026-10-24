# div_lt_arithGeom

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
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3297dc7f-4ee0-63ee-d199-8f1ab36e3ac0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b7a92de-9988-07eb-5dc6-f841794a8c0e",
  "kind": "lemma",
  "lexical_name": "div_lt_arithGeom",
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
  "slug": "div-lt-arithgeom--a81e1f5b2551f2075f4f05eb",
  "source": {
    "blob": "e8c4fcfa8e1d6326bc4c643ac0b2d6abb1f27581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/ArithmeticGeometric/Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a81e1f5b2551f2075f4f05eb4f3b4269f36fd6663450085b4002d7410196bb05",
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

Occurrence: `result:8b7a92de-9988-07eb-5dc6-f841794a8c0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma div_lt_arithGeom (ha_pos : 0 < a) (ha_ne : a ≠ 1) (h0 : b / (1 - a) < u₀) (n : ℕ) :
    b / (1 - a) < arithGeom a b u₀ n := by
  induction n with
  | zero => exact h0
  | succ n hn =>
    calc b / (1 - a)
    _ = a * (b / (1 - a)) + b := by grind
    _ < a * arithGeom a b u₀ n + b := by gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArithmeticGeometric/Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArithmeticGeometric/Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8c4fcfa8e1d6326bc4c643ac0b2d6abb1f27581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
