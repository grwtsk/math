# finite_divisor_balance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7219b3eb-0da3-d47f-ed7b-c69fec24a07d",
  "kind": "theorem",
  "lexical_name": "finite_divisor_balance",
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
  "slug": "finite-divisor-balance--c3260896afc77d4c95ccede9",
  "source": {
    "blob": "465e59296192cb9b3d4a93180454e888fcbd1803",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 287,
    "path": "GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3260896afc77d4c95ccede97bafedb4ebeeaa9cabfa42a4a071efccd67acdcd",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7219b3eb-0da3-d47f-ed7b-c69fec24a07d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_divisor_balance (v : ℕ → ℝ) (N : ℕ) (hN : 2 ≤ N)
    (hv : ∀ n, N < n → v n = 0) :
    finiteJ v N = finiteZ v N + finiteResidual v N := by
  classical
  have hfilter : ∀ n, N < n → finiteFilter v n = 0 := by
    intro n hn
    simp only [finiteFilter, hv n hn, hv (2 * n) (by omega),
      hv (3 * n) (by omega), hv (6 * n) (by omega)]
    ring
  have hrow (d : ℕ) (hd : 1 ≤ d) :
      (∑ m ∈ Finset.Icc 1 N, finiteFilter v (d * m)) = v d + properRow v N d := by
    have hs : ∀ m, N < m → v (d * m) = 0 := by
      intro m hm
      exact hv _ (by nlinarith)
    have hf := sum_finiteFilter_eq_coprime (fun m => v (d * m)) N hs
    have he : (fun m => finiteFilter v (d * m)) =
        finiteFilter (fun m => v (d * m)) := by
      funext m
      simp only [finiteFilter]
      congr 1 <;> congr 1 <;> ring
    rw [he, hf, sum_Icc_one _ N (by omega)]
    have hc1 : Nat.Coprime 1 6 := by decide
    simp only [if_pos hc1, mul_one, properRow]
  have hlogs := logarithmic_sum_eq_rows (finiteFilter v) N hfilter
  rw [sum_Icc_one _ N (by omega)] at hlogs
  simp only [Nat.cast_one, Real.log_one, zero_mul, zero_add] at hlogs
  have hs : (∑ d ∈ Finset.Icc 1 N, ArithmeticFunction.vonMangoldt d *
      ∑ m ∈ Finset.Icc 1 N, finiteFilter v (d * m)) =
      (∑ d ∈ Finset.Icc 2 N, ArithmeticFunction.vonMangoldt d * v d) +
        ∑ d ∈ Finset.Icc 2 N, ArithmeticFunction.vonMangoldt d * properRow v N d := by
    rw [sum_Icc_one _ N (by omega)]
    simp only [ArithmeticFunction.vonMangoldt_apply_one, zero_mul, zero_add]
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d hd
    rw [hrow d (by have := (Finset.mem_Icc.mp hd).1; omega)]
    ring
  have hr : (∑ d ∈ Finset.Icc 2 N, ArithmeticFunction.vonMangoldt d * properRow v N d) =
      finiteResidual v N := by
    symm
    apply Finset.sum_subset
    · intro d hd
      exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hd).1,
        (Finset.mem_Icc.mp hd).2.trans (Nat.div_le_self N 5)⟩
    · intro d hd hdn
      have hlarge : N / 5 < d := by
        have hd2 := (Finset.mem_Icc.mp hd).1
        simp only [Finset.mem_Icc, not_and] at hdn
        exact lt_of_not_ge (hdn hd2)
      rw [properRow_zero_of_large v N d hv hlarge, mul_zero]
  rw [hs, hr] at hlogs
  unfold finiteJ finiteZ
  rw [hlogs]
  simp only [sub_mul, one_mul, Finset.sum_sub_distrib]
  ring

/-- The finite zero extension agrees with the literal product cutoff N/d. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceKapitzaFiniteFilter/Variant54000af16e5b9e56d1c17bc7e0b3835bddc23ebbd1bd7a8bce79c6959f15b07f.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465e59296192cb9b3d4a93180454e888fcbd1803` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
