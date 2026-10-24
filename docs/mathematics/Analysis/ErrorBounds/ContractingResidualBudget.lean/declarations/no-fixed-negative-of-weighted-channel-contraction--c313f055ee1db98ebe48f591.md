# no_fixed_negative_of_weighted_channel_contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8288bf2-367b-aec6-5bbc-4b93b9aae112",
  "kind": "theorem",
  "lexical_name": "no_fixed_negative_of_weighted_channel_contraction",
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
  "slug": "no-fixed-negative-of-weighted-channel-contraction--c313f055ee1db98ebe48f591",
  "source": {
    "blob": "08b8fbaf12492620046507e4b8be32ea263656a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 210,
    "path": "GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c313f055ee1db98ebe48f5914a159007ae7d8403f1343ac2c067d7d55f2d9ff5",
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

Occurrence: `result:c8288bf2-367b-aec6-5bbc-4b93b9aae112`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_fixed_negative_of_weighted_channel_contraction
    (weight : ι → ℝ) (coefficient residual forcing : ℕ → ι → ℝ)
    (gain : ℕ → ι → ι → ℝ) (approximate loss : ℕ → ℝ)
    (r actual strength : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (readout : ∀ n, actual - approximate n = ∑ i, coefficient n i * residual n i)
    (consumerBound : ∀ n i, |coefficient n i| ≤ weight i)
    (evolution : ∀ n i, residual (n + 1) i =
      (∑ j, gain n i j * residual n j) + forcing n i)
    (columnBound : ∀ n j, (∑ i, weight i * |gain n i j|) ≤ r * weight j)
    (forcingVanishes : VanishesAtInfinity (fun n => channelMass weight (forcing n)))
    (lossVanishes : VanishesAtInfinity loss)
    (strengthPositive : 0 < strength) (negative : actual ≤ -strength)
    (lower : ∀ n, -loss n ≤ approximate n) : False := by
  exact no_fixed_negative_of_variable_forcing
    (fun n => channelMass weight (residual n))
    (fun n => channelMass weight (forcing n)) approximate loss r actual strength
    rateNonnegative rateStrict
    (fun n => channelMass_nonnegative weight (residual n) weightsNonnegative)
    (channel_mass_step weight residual forcing gain r weightsNonnegative evolution columnBound)
    forcingVanishes lossVanishes strengthPositive negative lower
    (fun n => readout_error_bound weight (coefficient n) (residual n)
      actual (approximate n) (readout n) (consumerBound n))

end Channels

/-- A persistent forcing channel cannot satisfy the required vanishing premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ContractingResidualBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b8fbaf12492620046507e4b8be32ea263656a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
