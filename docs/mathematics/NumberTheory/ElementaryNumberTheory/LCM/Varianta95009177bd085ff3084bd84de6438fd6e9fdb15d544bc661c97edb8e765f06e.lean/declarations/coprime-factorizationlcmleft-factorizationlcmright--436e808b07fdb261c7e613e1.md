# coprime_factorizationLCMLeft_factorizationLCMRight

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
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe63750c-a6ad-83d1-9047-7076e33f5866",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4be17560-e028-4b35-8b30-aed819c43b1f",
  "kind": "lemma",
  "lexical_name": "coprime_factorizationLCMLeft_factorizationLCMRight",
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
  "slug": "coprime-factorizationlcmleft-factorizationlcmright--436e808b07fdb261c7e613e1",
  "source": {
    "blob": "ae4240824e7fe25f933673639318a75168bcf61a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/LCM/Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:436e808b07fdb261c7e613e1b2fd14a65be0e0833883c224d21b9646e20f533c",
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

Occurrence: `result:4be17560-e028-4b35-8b30-aed819c43b1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coprime_factorizationLCMLeft_factorizationLCMRight :
    (factorizationLCMLeft a b).Coprime (factorizationLCMRight a b) := by
  rw [factorizationLCMLeft, factorizationLCMRight]
  refine coprime_prod_left_iff.mpr fun p hp ↦ coprime_prod_right_iff.mpr fun q hq ↦ ?_
  dsimp only; split_ifs with h h'
  any_goals simp only [coprime_one_right_eq_true, coprime_one_left_eq_true]
  refine coprime_pow_primes _ _ (prime_of_mem_primeFactors hp) (prime_of_mem_primeFactors hq) ?_
  contrapose h'; rwa [← h']

variable {a b}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/LCM/Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/LCM/Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae4240824e7fe25f933673639318a75168bcf61a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
