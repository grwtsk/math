# char_dvd_card_solutions_of_sum_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea856ad4-7c70-6780-b6f4-e6686d00c2f1",
  "kind": "theorem",
  "lexical_name": "char_dvd_card_solutions_of_sum_lt",
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
  "slug": "char-dvd-card-solutions-of-sum-lt--fc1d94ca5e9eaebad49b85f8",
  "source": {
    "blob": "d61df05de523e06e44c5a6264676dae010634a48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 117,
    "path": "GRWTSK/Algebra/FieldTheory/ChevalleyWarning/Variantbffd78515b7b93aa42e37b0fa444de4260498e98668a3800d9716e6bc0ee400d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc1d94ca5e9eaebad49b85f8d6be1605b506e9bc7996a40903ab3cc05a1dbff0",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/ChevalleyWarning/Variantbffd78515b7b93aa42e37b0fa444de4260498e98668a3800d9716e6bc0ee400d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea856ad4-7c70-6780-b6f4-e6686d00c2f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem char_dvd_card_solutions_of_sum_lt {s : Finset ι} {f : ι → MvPolynomial σ K}
    (h : (∑ i ∈ s, (f i).totalDegree) < Fintype.card σ) :
    p ∣ Fintype.card { x : σ → K // ∀ i ∈ s, eval x (f i) = 0 } := by
  have hq : 0 < q - 1 := by rw [← Fintype.card_units, Fintype.card_pos_iff]; exact ⟨1⟩
  let S : Finset (σ → K) := {x | ∀ i ∈ s, eval x (f i) = 0}
  have hS (x : σ → K) : x ∈ S ↔ ∀ i ∈ s, eval x (f i) = 0 := by simp [S]
  /- The polynomial `F = ∏ i ∈ s, (1 - (f i)^(q - 1))` has the nice property
    that it takes the value `1` on elements of `{x : σ → K // ∀ i ∈ s, (f i).eval x = 0}`
    while it is `0` outside that locus.
    Hence the sum of its values is equal to the cardinality of
    `{x : σ → K // ∀ i ∈ s, (f i).eval x = 0}` modulo `p`. -/
  let F : MvPolynomial σ K := ∏ i ∈ s, (1 - f i ^ (q - 1))
  have hF : ∀ x, eval x F = if x ∈ S then 1 else 0 := by
    intro x
    calc
      eval x F = ∏ i ∈ s, eval x (1 - f i ^ (q - 1)) := eval_prod s _ x
      _ = if x ∈ S then 1 else 0 := ?_
    simp only [(eval x).map_sub, (eval x).map_pow, (eval x).map_one]
    split_ifs with hx
    · apply Finset.prod_eq_one
      intro i hi
      rw [hS] at hx
      rw [hx i hi, zero_pow hq.ne', sub_zero]
    · obtain ⟨i, hi, hx⟩ : ∃ i ∈ s, eval x (f i) ≠ 0 := by
        simpa [hS, not_forall, Classical.not_imp] using hx
      apply Finset.prod_eq_zero hi
      rw [pow_card_sub_one_eq_one (eval x (f i)) hx, sub_self]
  -- In particular, we can now show:
  have key : ∑ x, eval x F = Fintype.card { x : σ → K // ∀ i ∈ s, eval x (f i) = 0 } := by
    rw [Fintype.card_of_subtype S hS, card_eq_sum_ones, Nat.cast_sum, Nat.cast_one, ←
      Fintype.sum_extend_by_zero S, sum_congr rfl fun x _ => hF x]
  -- With these preparations under our belt, we will approach the main goal.
  change p ∣ Fintype.card { x // ∀ i : ι, i ∈ s → eval x (f i) = 0 }
  rw [← CharP.cast_eq_zero_iff K, ← key]
  change (∑ x, eval x F) = 0
  -- We are now ready to apply the main machine, proven before.
  apply F.sum_eval_eq_zero
  -- It remains to verify the crucial assumption of this machine
  show F.totalDegree < (q - 1) * Fintype.card σ
  calc
    F.totalDegree ≤ ∑ i ∈ s, (1 - f i ^ (q - 1)).totalDegree := totalDegree_finsetProd s _
    _ ≤ ∑ i ∈ s, (q - 1) * (f i).totalDegree := sum_le_sum fun i _ => ?_
    -- see ↓
    _ = (q - 1) * ∑ i ∈ s, (f i).totalDegree := (mul_sum ..).symm
    _ < (q - 1) * Fintype.card σ := by gcongr
  -- Now we prove the remaining step from the preceding calculation
  change (1 - f i ^ (q - 1)).totalDegree ≤ (q - 1) * (f i).totalDegree
  calc
    (1 - f i ^ (q - 1)).totalDegree ≤
        max (1 : MvPolynomial σ K).totalDegree (f i ^ (q - 1)).totalDegree := totalDegree_sub _ _
    _ ≤ (f i ^ (q - 1)).totalDegree := by simp
    _ ≤ (q - 1) * (f i).totalDegree := totalDegree_pow _ _

/-- The **Chevalley–Warning theorem**, `Fintype` version.
Let `(f i)` be a finite family of multivariate polynomials
in finitely many variables (`X s`, `s : σ`) over a finite field of characteristic `p`.
Assume that the sum of the total degrees of the `f i` is less than the cardinality of `σ`.
Then the number of common solutions of the `f i` is divisible by `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/ChevalleyWarning/Variantbffd78515b7b93aa42e37b0fa444de4260498e98668a3800d9716e6bc0ee400d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/ChevalleyWarning/Variantbffd78515b7b93aa42e37b0fa444de4260498e98668a3800d9716e6bc0ee400d.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d61df05de523e06e44c5a6264676dae010634a48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
