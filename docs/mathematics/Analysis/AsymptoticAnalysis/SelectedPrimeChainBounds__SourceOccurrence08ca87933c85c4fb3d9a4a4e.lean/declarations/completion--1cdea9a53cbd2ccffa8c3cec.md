# completion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03af00b4c4bba0188a2f6e1009e4d07763175f84061ea93190d927dbc74ef83a",
  "kind": "def",
  "lexical_name": "completion",
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
  "slug": "completion--1cdea9a53cbd2ccffa8c3cec",
  "source": {
    "blob": "d5746c8afdcac168dc95ad31eaee9503f9551989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 35,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cdea9a53cbd2ccffa8c3cecbc4b880b710ee347fced2fedee2daa45a3a17a93",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrence08ca87933c85c4fb3d9a4a4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03af00b4c4bba0188a2f6e1009e4d07763175f84061ea93190d927dbc74ef83a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def completion (A : ReserveFunctional) (C q η C_M T : ℝ)
    (hC : 0 ≤ C) (hM : 0 ≤ C_M) (hprime : ASClosure.PrimeHarmonicEstimate C_M)
    (hT : 0 ≤ T) (bc : ASClosure.BudgetedChain T η)
    (steps : ∀ j, potential A (bc.chain.states (j+1)) T ≤
      Real.exp (C*harmonicMass (bc.chain.blocks j))*potential A (bc.chain.states j) T+
      C*harmonicMass (bc.chain.blocks j)*(1+T)^q) :
    AmortizedCompletion T (4+A.initialConstant) (C*C_M)
      (A.initialExponent+1) (q+1) (C*C_M) (C*C_M*Real.log 2) where
  chain := bc.chain
  reserve := fun P => A.value P T
  reserveNonnegative := fun P => A.nonnegative P T
  cost := fun j => C*harmonicMass (bc.chain.blocks j)
  debit := fun j => (C*(1+T)^q)*harmonicMass (bc.chain.blocks j)
  costNonnegative := fun j => mul_nonneg hC (ASClosure.harmonicMass_nonnegative _)
  debitNonnegative := fun j => mul_nonneg (by positivity) (ASClosure.harmonicMass_nonnegative _)
  initialBudget := ASClosure.initial_potential_bound A hT
  step := by
    intro j
    simpa only [potential,mul_assoc,mul_left_comm,mul_comm] using steps j
  costBudget := ASClosure.cost_budget hT hC hM hprime bc
  debitBudget := ASClosure.debit_budget hT hC hM hprime bc

/-- The replacement is sufficient for literal all-real ordered P04. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds__SourceOccurrence08ca87933c85c4fb3d9a4a4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SelectedPrimeChainBounds.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5746c8afdcac168dc95ad31eaee9503f9551989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
