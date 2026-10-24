# first_gap_4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db18b035-65d8-2aa6-8efc-341a5ea47f9e",
  "kind": "lemma",
  "lexical_name": "first_gap_4",
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
  "slug": "first-gap-4--0aa570ec9e9c6235a3c2054f",
  "source": {
    "blob": "21ceaf279b9771b68f9aa5184d964814d97bd5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 387,
    "path": "GRWTSK/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aa570ec9e9c6235a3c2054ff54c11d9d21f1e0330fc5d49b43aaa72d9389d27",
  "verification": {
    "reference": "docs/verification/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db18b035-65d8-2aa6-8efc-341a5ea47f9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma first_gap_4 : first_gap 4 = 7 := by
  rw [show first_gap 4 = nth_prime (Nat.find (show ∃ n, nth_prime_gap n = 4 from by
    use 3; simp [nth_prime_gap])) from by unfold first_gap; grind]
  rw [show Nat.find (show ∃ n, nth_prime_gap n = 4 from by use 3; simp [nth_prime_gap]) = 3 by
    simp only [find_eq_iff, nth_prime_gap, reduceAdd, nth_prime_four_eq_eleven,
      nth_prime_three_eq_seven, reduceSub, true_and]
    intro n hn
    interval_cases n <;> norm_num [nth_prime_vals]]
  exact nth_prime_three_eq_seven

/-- The first prime gap of size `5` does not occur. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21ceaf279b9771b68f9aa5184d964814d97bd5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
