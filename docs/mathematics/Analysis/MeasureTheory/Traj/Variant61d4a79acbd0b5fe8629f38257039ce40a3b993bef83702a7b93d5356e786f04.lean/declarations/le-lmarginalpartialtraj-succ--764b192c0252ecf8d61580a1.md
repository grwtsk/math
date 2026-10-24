# le_lmarginalPartialTraj_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e2b0435-8899-1b2b-3706-cd40b27b6e00",
  "kind": "theorem",
  "lexical_name": "le_lmarginalPartialTraj_succ",
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
  "slug": "le-lmarginalpartialtraj-succ--764b192c0252ecf8d61580a1",
  "source": {
    "blob": "aecab82187dd1a96d6b92c32351b800965fcd31d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 264,
    "path": "GRWTSK/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:764b192c0252ecf8d61580a1e4ba7787082abfed4d2fd6377ac7393287e73846",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e2b0435-8899-1b2b-3706-cd40b27b6e00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_lmarginalPartialTraj_succ {f : ℕ → (Π n, X n) → ℝ≥0∞} {a : ℕ → ℕ}
    (hcte : ∀ n, DependsOn (f n) (Iic (a n))) (mf : ∀ n, Measurable (f n))
    {bound : ℝ≥0∞} (fin_bound : bound ≠ ∞) (le_bound : ∀ n x, f n x ≤ bound) {k : ℕ}
    (anti : ∀ x, Antitone (fun n ↦ lmarginalPartialTraj κ (k + 1) (a n) (f n) x))
    {l : (Π n, X n) → ℝ≥0∞}
    (htendsto : ∀ x, Tendsto (fun n ↦ lmarginalPartialTraj κ (k + 1) (a n) (f n) x) atTop (𝓝 (l x)))
    (ε : ℝ≥0∞) (y : Π i : Iic k, X i)
    (hpos : ∀ x n, ε ≤ lmarginalPartialTraj κ k (a n) (f n) (updateFinset x (Iic k) y)) :
    ∃ z, ∀ x n,
    ε ≤ lmarginalPartialTraj κ (k + 1) (a n) (f n)
      (update (updateFinset x (Iic k) y) (k + 1) z) := by
  have _ n : Nonempty (X n) := by
    induction n using Nat.case_strong_induction_on with
    | hz => exact ⟨y ⟨0, mem_Iic.2 (zero_le _)⟩⟩
    | hi m hm =>
      have : Nonempty (Π i : Iic m, X i) :=
        ⟨fun i ↦ @Classical.ofNonempty _ (hm i.1 (mem_Iic.1 i.2))⟩
      exact ProbabilityMeasure.nonempty ⟨κ m Classical.ofNonempty, inferInstance⟩
  -- `Fₙ` is the integral of `fₙ` from time `k + 1` to `aₙ`.
  let F n : (Π n, X n) → ℝ≥0∞ := lmarginalPartialTraj κ (k + 1) (a n) (f n)
  -- `Fₙ` converges to `l` by hypothesis.
  have tendstoF x : Tendsto (F · x) atTop (𝓝 (l x)) := htendsto x
  -- Integrating `fₙ` between time `k` and `aₙ` is the same as integrating
  -- `Fₙ` between time `k` and time `k + 1`.
  have f_eq x n : lmarginalPartialTraj κ k (a n) (f n) x =
      lmarginalPartialTraj κ k (k + 1) (F n) x := by
    simp_rw [F]
    obtain h | h | h := lt_trichotomy (k + 1) (a n)
    · rw [← lmarginalPartialTraj_self k.le_succ h.le (mf n)]
    · rw [← h, lmarginalPartialTraj_le _ le_rfl (mf n)]
    · rw [lmarginalPartialTraj_le _ _ (mf n), (hcte n).lmarginalPartialTraj_of_le _ (mf n),
        (hcte n).lmarginalPartialTraj_of_le _ (mf n)]
      all_goals omega
  -- `F` is also a bounded sequence.
  have F_le n x : F n x ≤ bound := by
    simpa [F, lmarginalPartialTraj] using lintegral_le_const (ae_of_all _ fun z ↦ le_bound _ _)
  -- By dominated convergence, the integral of `fₙ` between time `k` and time `a n` converges
  -- to the integral of `l` between time `k` and time `k + 1`.
  have tendsto_int x : Tendsto (fun n ↦ lmarginalPartialTraj κ k (a n) (f n) x) atTop
      (𝓝 (lmarginalPartialTraj κ k (k + 1) l x)) := by
    simp_rw [f_eq, lmarginalPartialTraj]
    exact tendsto_lintegral_of_dominated_convergence (fun _ ↦ bound)
      (fun n ↦ (measurable_lmarginalPartialTraj _ _ (mf n)).comp measurable_updateFinset)
      (fun n ↦ Eventually.of_forall <| fun y ↦ F_le n _)
      (by simp [fin_bound]) (Eventually.of_forall (fun _ ↦ tendstoF _))
  -- By hypothesis, we have `ε ≤ lmarginalPartialTraj κ k (k + 1) (F n) (updateFinset x _ y)`,
  -- so this is also true for `l`.
  have ε_le_lint x : ε ≤ lmarginalPartialTraj κ k (k + 1) l (updateFinset x _ y) :=
    ge_of_tendsto (tendsto_int _) (by simp [hpos])
  let x_ : Π n, X n := Classical.ofNonempty
  -- We now have that the integral of `l` with respect to a probability measure is greater than `ε`,
  -- therefore there exists `x` such that `ε ≤ l(y, x)`.
  obtain ⟨x, hx⟩ : ∃ x, ε ≤ l (update (updateFinset x_ _ y) (k + 1) x) := by
    have : ∫⁻ x, l (update (updateFinset x_ _ y) (k + 1) x) ∂(κ k y) ≠ ∞ :=
      ne_top_of_le_ne_top fin_bound <| lintegral_le_const <| ae_of_all _
        fun y ↦ le_of_tendsto' (tendstoF _) <| fun _ ↦ F_le _ _
    obtain ⟨x, hx⟩ := exists_lintegral_le this
    refine ⟨x, (ε_le_lint x_).trans ?_⟩
    rwa [lmarginalPartialTraj_succ, frestrictLe_updateFinset]
    exact ENNReal.measurable_of_tendsto (by fun_prop) (tendsto_pi_nhds.2 htendsto)
  refine ⟨x, fun x' n ↦ ?_⟩
  -- As `F` is a non-increasing sequence, we have `ε ≤ Fₙ(y, x)` for any `n`.
  have := le_trans hx ((anti _).le_of_tendsto (tendstoF _) n)
  -- This part below is just to say that this is true for any `x : (i : ι) → X i`,
  -- as `Fₙ` technically depends on all the variables, but really depends only on the first `k + 1`.
  convert this using 1
  refine (hcte n).dependsOn_lmarginalPartialTraj _ (mf n) fun i hi ↦ ?_
  simp only [update, updateFinset, mem_Iic, F]
  split_ifs with h1 h2 <;> try rfl
  rw [mem_coe, mem_Iic] at hi
  omega

/-- This is the key theorem to prove the existence of the `traj`:
the `trajContent` of a decreasing sequence of cylinders with empty intersection
converges to `0`.

This implies the `σ`-additivity of `trajContent`
(see `addContent_iUnion_eq_sum_of_tendsto_zero`),
which allows to extend it to the `σ`-algebra by Carathéodory's theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aecab82187dd1a96d6b92c32351b800965fcd31d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
