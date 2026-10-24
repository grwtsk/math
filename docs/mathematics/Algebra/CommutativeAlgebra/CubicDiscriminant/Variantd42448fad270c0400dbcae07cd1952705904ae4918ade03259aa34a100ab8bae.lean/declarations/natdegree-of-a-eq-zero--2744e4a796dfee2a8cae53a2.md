# natDegree_of_a_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7333c5a483f70d62b3971d24e4e169d3a8ec3917",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d42448fad270c0400dbcae07cd1952705904ae4918ade03259aa34a100ab8bae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de65ce82-1640-032a-f246-a021a261d142",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:804e63f6-5fcc-8796-62b9-ef7fda62ab48",
  "kind": "theorem",
  "lexical_name": "natDegree_of_a_eq_zero",
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
  "slug": "natdegree-of-a-eq-zero--2744e4a796dfee2a8cae53a2",
  "source": {
    "blob": "7333c5a483f70d62b3971d24e4e169d3a8ec3917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 317,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CubicDiscriminant/Variantd42448fad270c0400dbcae07cd1952705904ae4918ade03259aa34a100ab8bae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2744e4a796dfee2a8cae53a2fae454bfb6a42042f5e3236a4b7c3fe10975dbe1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CubicDiscriminant/Variantd42448fad270c0400dbcae07cd1952705904ae4918ade03259aa34a100ab8bae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:804e63f6-5fcc-8796-62b9-ef7fda62ab48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_of_a_eq_zero (ha : P.a = 0) : P.toPoly.natDegree ≤ 2 := by
  simpa only [of_a_eq_zero ha] using natDegree_quadratic_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CubicDiscriminant/Variantd42448fad270c0400dbcae07cd1952705904ae4918ade03259aa34a100ab8bae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CubicDiscriminant/Variantd42448fad270c0400dbcae07cd1952705904ae4918ade03259aa34a100ab8bae.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7333c5a483f70d62b3971d24e4e169d3a8ec3917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
