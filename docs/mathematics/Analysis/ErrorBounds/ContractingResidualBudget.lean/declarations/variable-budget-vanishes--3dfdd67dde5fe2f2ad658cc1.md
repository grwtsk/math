# variable_budget_vanishes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f299cac-2e20-c631-ee96-33b0fb5b6ed7",
  "kind": "theorem",
  "lexical_name": "variable_budget_vanishes",
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
  "slug": "variable-budget-vanishes--3dfdd67dde5fe2f2ad658cc1",
  "source": {
    "blob": "08b8fbaf12492620046507e4b8be32ea263656a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 80,
    "path": "GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dfdd67dde5fe2f2ad658cc1a50d51288e5d18dcca104a419c721b3069caae15",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/ContractingResidualBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f299cac-2e20-c631-ee96-33b0fb5b6ed7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem variable_budget_vanishes (B forcing : ℕ → ℝ) (r : ℝ)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (budgetNonnegative : ∀ n, 0 ≤ B n)
    (step : ∀ n, B (n + 1) ≤ r * B n + forcing n)
    (forcingVanishes : VanishesAtInfinity forcing) : VanishesAtInfinity B := by
  intro epsilon epsilonPositive
  have halfPositive : 0 < epsilon / 2 := by linarith
  have tolerancePositive : 0 < (1 - r) * (epsilon / 2) :=
    mul_pos (by linarith) halfPositive
  obtain ⟨N, hN⟩ := forcingVanishes ((1 - r) * (epsilon / 2)) tolerancePositive
  have tail : ∀ n, N ≤ n → forcing n ≤ (1 - r) * (epsilon / 2) := by
    intro n hn
    exact (le_abs_self (forcing n)).trans (hN n hn)
  have geometric : Tendsto (fun k : ℕ => r ^ k * (B N - epsilon / 2))
      atTop (𝓝 (0 : ℝ)) := by
    simpa only [zero_mul] using
      (tendsto_pow_atTop_nhds_zero_of_lt_one rateNonnegative rateStrict).mul_const
        (B N - epsilon / 2)
  have eventuallySmall : ∀ᶠ k : ℕ in atTop,
      r ^ k * (B N - epsilon / 2) < epsilon / 2 :=
    geometric.eventually (gt_mem_nhds halfPositive)
  obtain ⟨K, hK⟩ := Filter.eventually_atTop.1 eventuallySmall
  refine ⟨N + K, ?_⟩
  intro n hn
  have offset : N + (n - N) = n := by omega
  have bound := restart_budget_majorant B forcing r (epsilon / 2)
    rateNonnegative step N tail (n - N)
  rw [offset] at bound
  have small := hK (n - N) (by omega)
  rw [abs_of_nonneg (budgetNonnegative n)]
  linarith

/-- One fixed negative target cannot coexist with a vanishing complete error and loss.
The target and strength do not vary with the approximation stage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ContractingResidualBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b8fbaf12492620046507e4b8be32ea263656a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
