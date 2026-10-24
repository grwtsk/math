# completionFromAS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c64036e071497cdf9a49fd7cd39a53bac8fb61099f2bc018c351a004af9bc3d7",
  "kind": "def",
  "lexical_name": "completionFromAS",
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
  "slug": "completionfromas--9a6b74c4c182828e19a6bb2c",
  "source": {
    "blob": "e9305ad5575f1e86d3109712e26845bda583a4b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 107,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a6b74c4c182828e19a6bb2c50c526990c2088382727765309423d0da7135f8b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c64036e071497cdf9a49fd7cd39a53bac8fb61099f2bc018c351a004af9bc3d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def completionFromAS (A : ReserveFunctional) (C q η C_M T : ℝ)
    (hAS : ASObligation A C q η) (hM : 0 ≤ C_M)
    (hprime : PrimeHarmonicEstimate C_M) (hT : 0 ≤ T) (bc : BudgetedChain T η) :
    AmortizedCompletion T (4 + A.initialConstant) (C * C_M)
      (A.initialExponent + 1) (q + 1) (C * C_M) (C * C_M * Real.log 2) where
  chain := bc.chain
  reserve := fun P => A.value P T
  reserveNonnegative := fun P => A.nonnegative P T
  cost := fun j => C * harmonicMass (bc.chain.blocks j)
  debit := fun j => (C * (1 + T) ^ q) * harmonicMass (bc.chain.blocks j)
  costNonnegative := fun j => mul_nonneg hAS.1 (harmonicMass_nonnegative _)
  debitNonnegative := fun j => mul_nonneg
    (by have hC := hAS.1; positivity) (harmonicMass_nonnegative _)
  initialBudget := initial_potential_bound A hT
  step := by
    intro j
    rw [bc.chain.next j]
    have h := hAS.2.2.2 T (bc.chain.states j) (bc.chain.blocks j) (bc.admissible j)
    simpa only [potential, mul_assoc, mul_left_comm, mul_comm] using h
  costBudget := cost_budget hT hAS.1 hM hprime bc
  debitBudget := debit_budget hT hAS.1 hM hprime bc

/-- Generic AS closure with the literal complete ordered off-diagonal as conclusion.
All unsupplied arithmetic and reserve hypotheses remain visible theorem arguments.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrencebefc884158fa8adad7346cce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9305ad5575f1e86d3109712e26845bda583a4b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
