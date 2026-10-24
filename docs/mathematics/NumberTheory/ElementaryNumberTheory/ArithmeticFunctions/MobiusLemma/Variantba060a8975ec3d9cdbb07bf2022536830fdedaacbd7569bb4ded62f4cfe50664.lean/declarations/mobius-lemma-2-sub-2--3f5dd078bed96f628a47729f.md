# mobius_lemma_2_sub_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:235ac197-1809-9a57-1e2b-fa1968b5e965",
  "kind": "theorem",
  "lexical_name": "mobius_lemma_2_sub_2",
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
  "slug": "mobius-lemma-2-sub-2--3f5dd078bed96f628a47729f",
  "source": {
    "blob": "ba9cdfa23f5787b369d59fa637c97570a7213888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 450,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantba060a8975ec3d9cdbb07bf2022536830fdedaacbd7569bb4ded62f4cfe50664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f5dd078bed96f628a47729f08032ce690a46ddcf82ff888451d14709d3a35ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantba060a8975ec3d9cdbb07bf2022536830fdedaacbd7569bb4ded62f4cfe50664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:235ac197-1809-9a57-1e2b-fa1968b5e965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobius_lemma_2_sub_2 (x : ℝ) (K : ℕ) (hK : (K : ℝ) ≤ x) :
    let f : ℝ → ℝ := fun u ↦ (M (sqrt (x / u)) : ℝ)
    ∑ k ∈ Ico (K + 1) (⌊x⌋₊ + 2), ∫ u in (k - 0.5)..(k + 0.5), f u =
      ∫ u in (K + 0.5)..(⌊x⌋₊ + 1.5), f u := by
  intro f
  have h_split : ∑ k ∈ Ico (K + 1) (⌊x⌋₊ + 2), ∫ u in ((k : ℝ) - 0.5)..((k : ℝ) + 0.5), f u =
      ∫ u in (↑(K + 1) - 0.5)..(↑(⌊x⌋₊ + 2) - 0.5), f u := by
    rw [sum_Ico_eq_sum_range]
    convert intervalIntegral.sum_integral_adjacent_intervals _ using 3
    · push_cast; ring
    · rw [Nat.add_sub_of_le (by linarith [Nat.le_floor hK])]
    · intro k hk
      apply_rules [IntegrableOn.intervalIntegrable]
      refine Integrable.mono' (g := fun u ↦ 2 ^ (Nat.floor (Real.sqrt (x / u)))) ?_ ?_ ?_
      · refine Integrable.mono'
          (g := fun u ↦ 2 ^ (Nat.floor (Real.sqrt (x / ((K + 1 + k : ℝ) - 0.5))) + 1)) ?_ ?_ ?_
        · exact Continuous.integrableOn_Icc (by continuity)
        · exact aestronglyMeasurable <| by measurability
        · filter_upwards [ae_restrict_mem measurableSet_Icc] with u hu
          norm_num at *
          refine pow_le_pow_right₀ (by norm_num) ?_
          refine Nat.le_of_lt_succ ?_
          rw [Nat.floor_lt', Real.sqrt_lt'] <;> norm_num <;> try positivity
          rw [div_lt_iff₀]
          · have := Nat.lt_floor_add_one (Real.sqrt (x / (K + 1 + k - 1 / 2)))
            rw [sqrt_lt' <| by positivity] at this
            rw [div_lt_iff₀] at this <;>
              nlinarith [show (⌊sqrt (x / (K + 1 + k - 1 / 2))⌋₊ : ℝ) ≥ 0 by positivity]
          · linarith
      · refine aestronglyMeasurable ?_
        have h_meas_floor : Measurable (fun u ↦ Nat.floor (sqrt (x / u))) :=
          nat_floor (.sqrt (measurable_const.div measurable_id'))
        have h_meas_sum : Measurable (fun n : ℕ ↦ ∑ k ∈ Ioc 0 n, (moebius k : ℤ)) := by fun_prop
        exact Measurable.comp (by fun_prop) (h_meas_sum.comp h_meas_floor)
      · refine Filter.Eventually.of_forall fun u ↦ ?_
        norm_num [f, M, moebius]
        refine le_trans (abs_sum_le_sum_abs ..) ?_
        refine le_trans (sum_le_sum (g := fun _ ↦ 1) fun i hi ↦ ?_) ?_
        · split_ifs <;> norm_num
        · induction ⌊sqrt (x / u)⌋₊ with
          | zero => simp
          | succ n ih =>
            norm_num [Nat.pow_succ', sum_Ioc_succ_top] at *
            rw [pow_succ']
            linarith [show (1 : ℝ) ≤ 2 ^ n by exact one_le_pow₀ (by norm_num)]
  convert h_split using 2 <;>
  · push_cast; ring

@[blueprint
  "mobius-lemma-2"
  (title := "Mobius Lemma 2")
  (statement := /--
    For any $x>0$ and any integer $K\geq 0$,
    \begin{equation}\label{eq:singdot}
    \begin{aligned}
    R(x) &= \sum_{k\leq K} M\left(\sqrt{\frac{x}{k}}\right)  -
    \int_0^{K+\frac{1}{2}} M\left(\sqrt{\frac{x}{u}}\right) du \\
    &-\sum_{K < k\leq x+1} \int_{k-\frac{1}{2}}^{k+\frac{1}{2}}
      \left(M\left(\sqrt{\frac{x}{u}}\right) -M\left(\sqrt{\frac{x}{k}}\right)\right) du
    \end{aligned}
    \end{equation}
  -/)
  (proof := /--
    We split into two cases. If $K>x$, the second line of \eqref{eq:singdot} is empty, and the
    first one equals \eqref{eq:antenor}, by $M(t)=0$ for $t<1$, so \eqref{eq:singdot} holds.

    Now suppose that $K \leq x$. Then we combine Sublemma \ref{mobius-lemma-2-sub-1} and Sublemma
    \ref{mobius-lemma-2-sub-2} with Lemma \ref{mobius-lemma-1} to give the claim.
  -/)
  (latexEnv := "lemma")
  (discussion := 530)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantba060a8975ec3d9cdbb07bf2022536830fdedaacbd7569bb4ded62f4cfe50664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variantba060a8975ec3d9cdbb07bf2022536830fdedaacbd7569bb4ded62f4cfe50664.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba9cdfa23f5787b369d59fa637c97570a7213888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
