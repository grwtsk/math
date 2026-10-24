# combinatorial_nullstellensatz_exists_linearCombination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7eaacf73-1ac7-7fcf-4f7b-882d6fdd3c34",
  "kind": "theorem",
  "lexical_name": "combinatorial_nullstellensatz_exists_linearCombination",
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
  "slug": "combinatorial-nullstellensatz-exists-linearcombination--b9dc8ff699491c72c7022e54",
  "source": {
    "blob": "d9b6a543c689ef366f1d783ea3e2418b687303d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 213,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9dc8ff699491c72c7022e5434fcd00e45c110b139dd484fc015fc7595b19519",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eaacf73-1ac7-7fcf-4f7b-882d6fdd3c34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem combinatorial_nullstellensatz_exists_linearCombination
    [IsDomain R] (S : σ → Finset R) (Sne : ∀ i, (S i).Nonempty)
    (f : MvPolynomial σ R) (Heval : ∀ (x : σ → R), (∀ i, x i ∈ S i) → eval x f = 0) :
    ∃ (h : σ →₀ MvPolynomial σ R),
      (∀ i, ((∏ s ∈ S i, (X i - C s)) * h i).totalDegree ≤ f.totalDegree) ∧
      f = linearCombination (MvPolynomial σ R) (fun i ↦ ∏ r ∈ S i, (X i - C r)) h := by
  let : LinearOrder σ := WellOrderingRel.isWellOrder.linearOrder
  obtain ⟨h, r, hf, hh, hr⟩ := degLex.div (b := fun i ↦ Alon.P (S i) i)
      (fun i ↦ by simp only [(Alon.monic_P ..).leadingCoeff_eq_one, isUnit_one]) f
  use h
  suffices r = 0 by
    rw [this, add_zero] at hf
    exact ⟨fun i ↦ degLex_totalDegree_monotone (hh i), hf⟩
  apply eq_zero_of_eval_zero_at_prod_finset r S
  · intro i
    rw [degreeOf_eq_sup, Finset.sup_lt_iff (by simp [Sne i])]
    aesop (add simp [Alon.degree_P])
  · intro x hx
    rw [Iff.symm sub_eq_iff_eq_add'] at hf
    rw [← hf, map_sub, Heval x hx, zero_sub, neg_eq_zero,
      linearCombination_apply, map_finsuppSum, Finsupp.sum, Finset.sum_eq_zero]
    intro i _
    rw [smul_eq_mul, map_mul]
    convert! mul_zero _
    rw [Alon.P, _root_.map_prod]
    apply Finset.prod_eq_zero (hx i)
    simp

/-- The **Combinatorial Nullstellensatz**.

Given a multi-index `t : σ →₀ ℕ` such that `t s < (S s).card` for all `s`,
`f.totalDegree = t.degree` and `f.coeff t ≠ 0`,
there exists a point `x : σ → R` such that `x s ∈ S s` for all `s` and `f.eval s ≠ 0`.

[Alon_1999], theorem 2 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variantc2c57561ba6d48b4a831e3fcdd377c3b430715584da0bf6b88a8d7f0bede27f6.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9b6a543c689ef366f1d783ea3e2418b687303d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
