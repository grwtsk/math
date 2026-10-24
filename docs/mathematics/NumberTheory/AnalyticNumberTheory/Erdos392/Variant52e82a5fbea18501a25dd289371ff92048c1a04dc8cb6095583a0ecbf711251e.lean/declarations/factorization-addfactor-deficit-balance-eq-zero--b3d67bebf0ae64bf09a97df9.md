# Factorization.addFactor_deficit_balance_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:813e79ec-a5f9-e799-7a79-7c3ad19b5061",
  "kind": "lemma",
  "lexical_name": "Factorization.addFactor_deficit_balance_eq_zero",
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
  "slug": "factorization-addfactor-deficit-balance-eq-zero--b3d67bebf0ae64bf09a97df9",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 416,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d67bebf0ae64bf09a97df9d4a0d8cffe7f59b1d681e6b0eb9c91611b6c3685",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:813e79ec-a5f9-e799-7a79-7c3ad19b5061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Factorization.addFactor_deficit_balance_eq_zero {n : ℕ} (f : Factorization n) (L : ℕ)
    (h_surplus : ∀ p, f.balance p ≤ 0) (h_deficit_large : ∀ p, f.balance p < 0 → p ≤ L)
    (m : ℕ) (hm : m ≤ n) (hm_pos : 0 < m) (h_m_def : m = (deficitMultiset f L).prod) :
    ∀ p, (addFactor f m hm hm_pos).balance p = 0 := fun p ↦ by
  by_cases hp : p.Prime <;> by_cases hp_le_L : p ≤ L <;> simp_all only [addFactor_balance]
  · simp_all only [CanonicallyOrderedAdd.multiset_prod_pos]
    simp only [factorization_prod_eq_count (fun q hq ↦ (mem_deficitMultiset f L q hq).1)]
    by_cases hp_def : f.balance p < 0 <;> simp_all only [cast_ite, cast_natAbs, Int.cast_eq,
      CharP.cast_eq_zero, count_deficitMultiset, abs_of_nonneg (le_of_not_gt hp_def)]
    · split_ifs <;> simp_all only [abs_of_neg hp_def, add_neg_cancel, primesBelow,
        Finset.mem_filter, Finset.mem_range, and_true]
      · linarith [h_deficit_large p hp_def, deficit_implies_le_n f p hp_def]
    · split_ifs <;> grind
  · simp_all only [CanonicallyOrderedAdd.multiset_prod_pos, not_le]
    have h_bal_zero : f.balance p = 0 :=
      le_antisymm (h_surplus p) (not_lt.mp fun h ↦ hp_le_L.not_ge (h_deficit_large p h))
    simp only [factorization_prod_eq_count (fun q hq ↦ (mem_deficitMultiset f L q hq).1),
      count_deficitMultiset]
    grind
  · simp_all [balance, sum]
  · simp_all [balance, sum]

/-- Case 1 of `lower_score_3`: if the product of deficit primes is `≤ n`, adding the full
deficit multiset yields a factorization with zero imbalance and lower score. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
