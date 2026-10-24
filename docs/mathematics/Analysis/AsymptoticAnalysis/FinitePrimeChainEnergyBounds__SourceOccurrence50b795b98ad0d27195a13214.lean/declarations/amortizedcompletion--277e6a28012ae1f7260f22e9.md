# AmortizedCompletion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dddbb5b0e59972b993affdc647a2b569ef913ccc3e530ae7bb2dd13c7b2479d3",
  "kind": "structure",
  "lexical_name": "AmortizedCompletion",
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
  "slug": "amortizedcompletion--277e6a28012ae1f7260f22e9",
  "source": {
    "blob": "52e0059d6f22783e7695e655955045203e164476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 27,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:277e6a28012ae1f7260f22e9deb5bf718ccec421d9b4d198c4435b3fa81df943",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence50b795b98ad0d27195a13214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dddbb5b0e59972b993affdc647a2b569ef913ccc3e530ae7bb2dd13c7b2479d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AmortizedCompletion (T C₀ C₁ a q d H : ℝ) where
  chain : CompletionChain T
  reserve : Finset ℕ → ℝ
  reserveNonnegative : ∀ P, 0 ≤ reserve P
  cost : ℕ → ℝ
  debit : ℕ → ℝ
  costNonnegative : ∀ j, 0 ≤ cost j
  debitNonnegative : ∀ j, 0 ≤ debit j
  initialBudget : sourceEnergy ∅ T+reserve ∅ ≤ C₀*(1+T)^a
  step : ∀ j,
    sourceEnergy (chain.states (j+1)) T+reserve (chain.states (j+1)) ≤
      Real.exp (cost j)*(sourceEnergy (chain.states j) T+reserve (chain.states j))+
      debit j
  costBudget : Cost.prefixSum cost chain.length ≤ d*Real.log (1+T)+H
  debitBudget : Cost.prefixSum debit chain.length ≤ C₁*(1+T)^q

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence50b795b98ad0d27195a13214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e0059d6f22783e7695e655955045203e164476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
