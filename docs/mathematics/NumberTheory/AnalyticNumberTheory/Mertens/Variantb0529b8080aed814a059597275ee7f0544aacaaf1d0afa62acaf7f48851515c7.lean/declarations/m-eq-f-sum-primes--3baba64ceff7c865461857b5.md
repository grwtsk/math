# M_eq_f.sum_primes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f327d36731b3b37411ed5b7207cbf3046b62b1dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:335d77da-ccd4-110a-4f42-13c84cc439f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b42a7aa-2e5a-3931-5b16-5bab694661ef",
  "kind": "lemma",
  "lexical_name": "M_eq_f.sum_primes",
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
  "slug": "m-eq-f-sum-primes--3baba64ceff7c865461857b5",
  "source": {
    "blob": "f327d36731b3b37411ed5b7207cbf3046b62b1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1153,
    "line": 1149,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variantb0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3baba64ceff7c865461857b5fa42ed7c7636dc1dac17455a767620e51a274509",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Mertens/Variantb0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b42a7aa-2e5a-3931-5b16-5bab694661ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1149–1153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma M_eq_f.sum_primes :
    ∑' (p : Nat.Primes), M_eq_f p = 0 := by
  convert tsum_zero with p
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Mertens/Variantb0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variantb0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean#L1149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f327d36731b3b37411ed5b7207cbf3046b62b1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
