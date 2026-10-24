# coeff_linearCombination_X_pow_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82960798-7c3b-1ab1-2179-6ae1d94d43b6",
  "kind": "lemma",
  "lexical_name": "coeff_linearCombination_X_pow_of_ne",
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
  "slug": "coeff-linearcombination-x-pow-of-ne--46340323d052243a8fd1852e",
  "source": {
    "blob": "1aba38376a97d941a8b58c2ecd285cde7b85fa97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coeff/Variant86fd2ac33988cb7c8f852d60205efb84cbba11e5e2cfbb8f89152d2634dab3db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46340323d052243a8fd1852e9a08f8e6c02998f1d9dda397f7de339b5547c129",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coeff/Variant86fd2ac33988cb7c8f852d60205efb84cbba11e5e2cfbb8f89152d2634dab3db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82960798-7c3b-1ab1-2179-6ae1d94d43b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma coeff_linearCombination_X_pow_of_ne (a : σ →₀ R) {n : ℕ}
    (hs : s.sum (fun _ m ↦ m) ≠ n) :
    (((a.linearCombination R X : MvPolynomial σ R)) ^ n).coeff s = 0 := by
  classical
  simp only [sum, linearCombination_apply, Finset.sum_pow_eq_sum_piAntidiag, coeff_sum, ← map_pow,
    ← C_eq_coe_nat, coeff_C_mul, smul_eq_C_mul, mul_pow, Finset.prod_mul_distrib, ← map_prod,
    coeff_prod_X_pow, mul_ite, mul_one, mul_zero]
  apply Finset.sum_eq_zero (fun x hx ↦ ?_)
  rw [ite_eq_right]
  rintro ⟨rfl⟩
  apply hs
  simp only [Finset.mem_piAntidiag] at hx
  rw [sum_of_support_subset _ (support_indicator_subset a.support _) _ (by simp), ← hx.1]
  congr
  ext i
  by_cases hi : i ∈ a.support
  · simp [Finsupp.indicator_of_mem hi]
  · grind [Finsupp.indicator_of_notMem hi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coeff/Variant86fd2ac33988cb7c8f852d60205efb84cbba11e5e2cfbb8f89152d2634dab3db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coeff/Variant86fd2ac33988cb7c8f852d60205efb84cbba11e5e2cfbb8f89152d2634dab3db.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aba38376a97d941a8b58c2ecd285cde7b85fa97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
