# restart_budget_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3587ba23-ee0e-e748-58ef-6cb5b50259fa",
  "kind": "theorem",
  "lexical_name": "restart_budget_majorant",
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
  "slug": "restart-budget-majorant--817b557530cc3d80d03157fe",
  "source": {
    "blob": "08b8fbaf12492620046507e4b8be32ea263656a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 63,
    "path": "GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:817b557530cc3d80d03157fe81b471da43b25dc8af419e3cf65948824320fc91",
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

Occurrence: `result:3587ba23-ee0e-e748-58ef-6cb5b50259fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restart_budget_majorant (B forcing : ℕ → ℝ) (r delta : ℝ)
    (rateNonnegative : 0 ≤ r)
    (step : ∀ n, B (n + 1) ≤ r * B n + forcing n)
    (N : ℕ) (tail : ∀ n, N ≤ n → forcing n ≤ (1 - r) * delta) (k : ℕ) :
    B (N + k) ≤ delta + r ^ k * (B N - delta) := by
  have shiftedStep : ∀ j,
      B (N + (j + 1)) ≤ r * B (N + j) + (1 - r) * delta := by
    intro j
    have bound := (step (N + j)).trans
      (add_le_add_right (tail (N + j) (by omega)) (r * B (N + j)))
    simpa only [Nat.add_assoc] using bound
  have bound := affine_budget_majorant (fun j => B (N + j)) r
    ((1 - r) * delta) delta rateNonnegative (by ring) shiftedStep k
  simpa only [Nat.add_zero] using bound

/-- Varying forcing tending to zero is enough; summability of the forcing is not assumed.
Nonnegativity of B is essential because an upper recurrence alone does not control |B|. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ContractingResidualBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b8fbaf12492620046507e4b8be32ea263656a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
