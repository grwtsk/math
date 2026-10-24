# first_gap_6

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a85ef03-00e4-defc-b08d-bd6cb1943ddc",
  "kind": "lemma",
  "lexical_name": "first_gap_6",
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
  "slug": "first-gap-6--83bcfb4efd6443c5ce750b72",
  "source": {
    "blob": "21ceaf279b9771b68f9aa5184d964814d97bd5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 402,
    "path": "GRWTSK/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83bcfb4efd6443c5ce750b721b1bd53dfedaf0819124828c5e05f93fea0259e4",
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

Occurrence: `result:2a85ef03-00e4-defc-b08d-bd6cb1943ddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma first_gap_6 : first_gap 6 = 23 := by
  unfold first_gap
  split_ifs with h
  · have h_find : Nat.find h ≤ 8 := by
      refine Nat.find_min' h ?_
      unfold nth_prime_gap
      have h_nth_prime_9 : nth_prime 9 = 29 := by
        have : count Nat.Prime 29 = 9 := by decide
        simp only [nth_prime]
        rw [← this, nth_count]
        norm_num
      exact h_nth_prime_9.symm ▸ by
        have := nth_prime_vals; aesop
    interval_cases _ : Nat.find h <;>
      simp_all only [find_eq_iff]
    all_goals simp_all [nth_prime_gap, nth_prime_vals]
  · contrapose! h
    use 8
    norm_num [nth_prime_gap, nth_prime_vals]
    have h_prime_10 : nth_prime 9 = 29 := by
      have : nth_prime 9 = nth_prime (count Nat.Prime 29) := by congr
      exact this.trans (nth_count <| by norm_num)
    exact h_prime_10.symm ▸ rfl

/-- The first prime gap of size `7` does not occur. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21ceaf279b9771b68f9aa5184d964814d97bd5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
