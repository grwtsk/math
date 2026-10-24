# Params.rough_set_structure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6861f0a-6312-a52b-60e8-6ada7edee3ce",
  "kind": "lemma",
  "lexical_name": "Params.rough_set_structure",
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
  "slug": "params-rough-set-structure--b69725f0a476981fb5e6b427",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1739,
    "line": 1718,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b69725f0a476981fb5e6b4272e23cdb1f51aba0d5c97c726b1b1287827e1b46d",
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

Occurrence: `result:c6861f0a-6312-a52b-60e8-6ada7edee3ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1718–1739.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.rough_set_structure (P : Params) (m : ℕ) (hm : m ∈ rough_set P) :
    ∃ q k, q.Prime ∧ q ≥ P.n / P.L ∧ k ≤ P.L ∧ m = q * k ∧ m.factorization q = 1 := by
  obtain ⟨q, hq_prime, hq_ge, hq_div⟩ := exists_large_prime_of_rough P m hm
  use q
  have hk_le : m / q ≤ P.L := by
    have h_div : m ≤ P.n - 1 :=
      Nat.le_sub_one_of_lt (Finset.mem_Ico.mp (Finset.mem_filter.mp hm |>.1) |>.2)
    have h_div' : m / q ≤ (P.n - 1) / q := Nat.div_le_div_right h_div
    refine le_trans h_div' (Nat.le_of_lt_succ ?_)
    rw [Nat.div_lt_iff_lt_mul hq_prime.pos, tsub_lt_iff_left] <;>
      nlinarith [Nat.div_add_mod P.n P.L, Nat.mod_lt P.n P.hL_pos, P.hL]
  refine ⟨m / q, hq_prime, hq_ge, hk_le, (Nat.mul_div_cancel' hq_div).symm, ?_⟩
  have hm_pos : m ≠ 0 := by
    intro h
    simp only [h, rough_set, Finset.mem_filter, Finset.mem_Ico, nonpos_iff_eq_zero] at hm
    have : P.n - P.n / P.M > 0 := Nat.sub_pos_of_lt (Nat.div_lt_self (by linarith) P.hM)
    omega
  exact valuation_eq_one_of_large_prime P m q
    (Finset.mem_Ico.mp (Finset.mem_filter.mp hm |>.1) |>.2) hm_pos hq_prime hq_ge hq_div

/-- The prime factor `q ≥ n / L` of an element of `rough_set`,
chosen via `rough_set_structure`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L1718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
