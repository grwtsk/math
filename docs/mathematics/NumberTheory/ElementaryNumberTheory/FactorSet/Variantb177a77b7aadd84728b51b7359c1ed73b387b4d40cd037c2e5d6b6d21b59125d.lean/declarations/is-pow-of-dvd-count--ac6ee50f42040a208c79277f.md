# is_pow_of_dvd_count

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
      "line": 556,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b177a77b7aadd84728b51b7359c1ed73b387b4d40cd037c2e5d6b6d21b59125d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7434d4e-5a5e-a33a-7cac-7180fb7d897e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aff927b0-0a75-de63-25c1-d9d928612735",
  "kind": "theorem",
  "lexical_name": "is_pow_of_dvd_count",
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
  "slug": "is-pow-of-dvd-count--ac6ee50f42040a208c79277f",
  "source": {
    "blob": "a3aaca3f50ea32ed37f3e8b61d4bb74b6509d4dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 556,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorSet/Variantb177a77b7aadd84728b51b7359c1ed73b387b4d40cd037c2e5d6b6d21b59125d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac6ee50f42040a208c79277fc753b23ad9dd6282d87c0a6ac5b0dbcce277586f",
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

Occurrence: `result:aff927b0-0a75-de63-25c1-d9d928612735`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem is_pow_of_dvd_count {a : Associates α}
    (ha : a ≠ 0) {k : ℕ} (hk : ∀ p : Associates α, Irreducible p → k ∣ count p a.factors) :
    ∃ b : Associates α, a = b ^ k := by
  nontriviality α
  obtain ⟨a0, hz, rfl⟩ := exists_non_zero_rep ha
  rw [factors_mk a0 hz] at hk
  have hk' : ∀ p, p ∈ factors' a0 → k ∣ (factors' a0).count p := by
    rintro p -
    have pp : p = ⟨p.val, p.2⟩ := by simp only [Subtype.coe_eta]
    rw [pp, ← count_some p.2]
    exact hk p.val p.2
  obtain ⟨u, hu⟩ := Multiset.exists_smul_of_dvd_count _ hk'
  use FactorSet.prod (u : FactorSet α)
  apply eq_of_factors_eq_factors
  rw [pow_factors, prod_factors, factors_mk a0 hz, hu]
  exact WithBot.coe_nsmul u k

/-- The only divisors of prime powers are prime powers. See `eq_pow_find_of_dvd_irreducible_pow`
for an explicit expression as a p-power (without using `count`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FactorSet/Variantb177a77b7aadd84728b51b7359c1ed73b387b4d40cd037c2e5d6b6d21b59125d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FactorSet/Variantb177a77b7aadd84728b51b7359c1ed73b387b4d40cd037c2e5d6b6d21b59125d.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3aaca3f50ea32ed37f3e8b61d4bb74b6509d4dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
