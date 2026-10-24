# factorizationLCMLeft_mul_factorizationLCMRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae4240824e7fe25f933673639318a75168bcf61a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bb4820f-1ae6-8f6c-5fc5-0198135656be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc87073d-7a4a-7966-bdcd-bba262564393",
  "kind": "lemma",
  "lexical_name": "factorizationLCMLeft_mul_factorizationLCMRight",
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
  "slug": "factorizationlcmleft-mul-factorizationlcmright--a8d50f370ab0a6ff9ec69d56",
  "source": {
    "blob": "ae4240824e7fe25f933673639318a75168bcf61a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 67,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/LCM/Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8d50f370ab0a6ff9ec69d561b5feb1e3e73fa94effb1da1db721a10c28e11aa",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/LCM/Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc87073d-7a4a-7966-bdcd-bba262564393`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma factorizationLCMLeft_mul_factorizationLCMRight (ha : a ≠ 0) (hb : b ≠ 0) :
    (factorizationLCMLeft a b) * (factorizationLCMRight a b) = lcm a b := by
  rw [← prod_factorization_pow_eq_self (lcm_ne_zero ha hb), factorizationLCMLeft,
    factorizationLCMRight, ← prod_mul]
  congr; ext p n; split_ifs <;> simp

variable (a b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/LCM/Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/LCM/Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae4240824e7fe25f933673639318a75168bcf61a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
