# eq_pow_count_factors_of_dvd_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3aaca3f50ea32ed37f3e8b61d4bb74b6509d4dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 575,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b177a77b7aadd84728b51b7359c1ed73b387b4d40cd037c2e5d6b6d21b59125d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00184751-9e44-1da1-72f3-142bc2b3ac67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2dcccb0b-99e4-9ec3-8c1d-a41406ebb2b7",
  "kind": "theorem",
  "lexical_name": "eq_pow_count_factors_of_dvd_pow",
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
  "slug": "eq-pow-count-factors-of-dvd-pow--b221526bb70bad0a52339752",
  "source": {
    "blob": "a3aaca3f50ea32ed37f3e8b61d4bb74b6509d4dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 575,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorSet/Variantb177a77b7aadd84728b51b7359c1ed73b387b4d40cd037c2e5d6b6d21b59125d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b221526bb70bad0a52339752d959f5983731d52f158ed1999ed06fa72add3020",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FactorSet/Variantb177a77b7aadd84728b51b7359c1ed73b387b4d40cd037c2e5d6b6d21b59125d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dcccb0b-99e4-9ec3-8c1d-a41406ebb2b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_pow_count_factors_of_dvd_pow {p a : Associates α}
    (hp : Irreducible p) {n : ℕ} (h : a ∣ p ^ n) : a = p ^ p.count a.factors := by
  nontriviality α
  have hph := pow_ne_zero n hp.ne_zero
  have ha := ne_zero_of_dvd_ne_zero hph h
  apply eq_of_eq_counts ha (pow_ne_zero _ hp.ne_zero)
  have eq_zero_of_ne : ∀ q : Associates α, Irreducible q → q ≠ p → _ = 0 := fun q hq h' =>
    Nat.eq_zero_of_le_zero <| by
      convert! count_le_count_of_le hph hq h
      symm
      rw [count_pow hp.ne_zero hq, count_eq_zero_of_ne hq hp h', mul_zero]
  intro q hq
  rw [count_pow hp.ne_zero hq]
  by_cases h : q = p
  · rw [h, count_self hp, mul_one]
  · rw [count_eq_zero_of_ne hq hp h, mul_zero, eq_zero_of_ne q hq h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FactorSet/Variantb177a77b7aadd84728b51b7359c1ed73b387b4d40cd037c2e5d6b6d21b59125d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FactorSet/Variantb177a77b7aadd84728b51b7359c1ed73b387b4d40cd037c2e5d6b6d21b59125d.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3aaca3f50ea32ed37f3e8b61d4bb74b6509d4dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
