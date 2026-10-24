# mertens_second_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e58f606-43c3-1aa1-26b5-f85a9f98308b",
  "kind": "theorem",
  "lexical_name": "mertens_second_theorem",
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
  "slug": "mertens-second-theorem--ec62e0ec3e6aa7a682984085",
  "source": {
    "blob": "c0704692114bca6c8ed8a8e14715cb316b48f6a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 856,
    "line": 825,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec62e0ec3e6aa7a6829840857d933d676b8584dd64f16517e3892b43af4073b5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e58f606-43c3-1aa1-26b5-f85a9f98308b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 825–856.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertens_second_theorem : Filter.atTop.Tendsto (fun x : ℝ ↦
    ∑ p ∈ filter Nat.Prime (Iic ⌊x⌋₊), 1 / (p : ℝ) - log (log x)) (𝓝 meisselMertensConstant) := by
  have lem : ∀ᶠ x in atTop, meisselMertensConstant + ((θ x - x) / (x * log x) +
    ∫ y in Set.Ioi x, (θ y - y) * deriv (fun s ↦ 1 / s / Real.log s) y) =
    ∑ p ∈ filter Nat.Prime (Iic ⌊x⌋₊), 1 / (p : ℝ) - log (log x):= by
    filter_upwards [Ici_mem_atTop 2] with y hy
    rw [meisselMertensConstant_identity hy]
    ring
  rw [← add_zero meisselMertensConstant, ← add_zero 0]
  refine (tendsto_const_nhds.add (Tendsto.add ?_
    (ioiIntegral_tendsto_zero 2 integrableOn_deriv_inv_div_log.1 tendsto_id))).congr' lem
  · obtain ⟨C, hC⟩ := pnt
    refine squeeze_zero_norm' (a := fun x => C / Real.log x ^ 3) ?_ ?_
    · filter_upwards [Ici_mem_atTop 2] with y hy
      have h1 {y : ℝ} (hy : y ∈ Set.Ici 2) : 0 < y := by grind
      have h2 {y : ℝ} (hy : y ∈ Set.Ici 2) : 0 ≤ log y := log_nonneg (by grind)
      simp only [norm_div, norm_mul, norm_of_nonneg (h1 hy).le, norm_eq_abs, norm_of_nonneg (h2 hy)]
      grw [hC.2 y hy]
      · rw [div_right_comm, ← div_div, mul_div_cancel_right₀ _ (by grind)]; field_simp; rfl
      · exact mul_nonneg (h1 hy).le (h2 hy)
    · exact ((tendsto_pow_atTop (by linarith : 3 ≠ 0)).comp tendsto_log_atTop).const_div_atTop C

@[blueprint
  "rs-419"
  (title := "RS equation (4.19) and Mertens' second theorem")
  (statement := /--
  $$\sum_{p \leq x} \frac{1}{p} = \log \log x + B + \frac{\vartheta(x) - x}{x \log x} $$
  $$ - \int_2^x \frac{(\vartheta(y)-y) (1 + \log y)\ dy}{y^2 \log^2 y}.$$
-/)
  (proof := /-- Follows from Sublemma \ref{rs-413} applied to $f(t) = 1/t$. One can also use this identity to demonstrate convergence of the limit defining $B$.-/)
  (latexEnv := "sublemma")
  (discussion := 603)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean#L825).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0704692114bca6c8ed8a8e14715cb316b48f6a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
