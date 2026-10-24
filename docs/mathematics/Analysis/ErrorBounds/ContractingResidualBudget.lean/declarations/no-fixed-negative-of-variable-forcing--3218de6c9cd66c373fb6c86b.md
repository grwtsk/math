# no_fixed_negative_of_variable_forcing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5017d1c-466e-b2f1-2c4e-8d656c7a4c85",
  "kind": "theorem",
  "lexical_name": "no_fixed_negative_of_variable_forcing",
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
  "slug": "no-fixed-negative-of-variable-forcing--3218de6c9cd66c373fb6c86b",
  "source": {
    "blob": "08b8fbaf12492620046507e4b8be32ea263656a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 114,
    "path": "GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3218de6c9cd66c373fb6c86b678048675297d01bb0d039eb81162fd955bd3554",
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

Occurrence: `result:c5017d1c-466e-b2f1-2c4e-8d656c7a4c85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_fixed_negative_of_variable_forcing
    (B forcing approximate loss : ℕ → ℝ) (r actual strength : ℝ)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (budgetNonnegative : ∀ n, 0 ≤ B n)
    (step : ∀ n, B (n + 1) ≤ r * B n + forcing n)
    (forcingVanishes : VanishesAtInfinity forcing)
    (lossVanishes : VanishesAtInfinity loss)
    (strengthPositive : 0 < strength) (negative : actual ≤ -strength)
    (lower : ∀ n, -loss n ≤ approximate n)
    (comparison : ∀ n, |actual - approximate n| ≤ B n) : False := by
  have budgetVanishes := variable_budget_vanishes B forcing r rateNonnegative
    rateStrict budgetNonnegative step forcingVanishes
  have totalVanishes := VanishesAtInfinity.add lossVanishes budgetVanishes
  obtain ⟨N, hN⟩ := totalVanishes (strength / 2) (by linarith)
  have floorBound := witness_forces_budget negative (lower N) (comparison N)
  have upperBound := (le_abs_self (loss N + B N)).trans (hN N le_rfl)
  linarith

section Channels

variable {ι : Type*} [Fintype ι]

/-- Weighted absolute residuals in common terminal units; weights are supplied, not chosen. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ContractingResidualBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b8fbaf12492620046507e4b8be32ea263656a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
