# no_fixed_negative_of_growing_gram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b30a5afe-9816-16ab-6c38-10bc6568c10e",
  "kind": "theorem",
  "lexical_name": "no_fixed_negative_of_growing_gram",
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
  "slug": "no-fixed-negative-of-growing-gram--aec90dc62ba64f20c124f8f3",
  "source": {
    "blob": "affebe081e0ae6b3697a7a38ff4a97babb758edb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 269,
    "path": "GRWTSK/Analysis/ErrorBounds/GrowingGramResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aec90dc62ba64f20c124f8f361e86237d3d705e862b9a71ae5881418931ba083",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/GrowingGramResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b30a5afe-9816-16ab-6c38-10bc6568c10e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_fixed_negative_of_growing_gram
    (weight test : ∀ n, I n → ℝ) (source : ∀ n, I n × I n → ℝ)
    (feature : ∀ n, K n → I n → ℝ) (gain : ∀ n, I (n + 1) → I n → ℝ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℝ) (tail : ℕ → ℝ)
    (r actual strength : ℝ)
    (weightsNonnegative : ∀ n i, 0 ≤ weight n i)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (testBound : ∀ n i, |test n i| ≤ weight n i)
    (sourceReadout : ∀ n, actual = quadraticReadout (test n) (source n) + tail n)
    (columnBound : ∀ n j, (∑ i, weight (n + 1) i * |gain n i j|) ≤ r * weight n j)
    (modelUpdate : ∀ n p, gram (feature (n + 1)) p =
      transportMatrix (gain n) (gram (feature n)) p + injection n p)
    (mismatchVanishes : VanishesAtInfinity (fun n =>
      channelMass (pairWeight (weight (n + 1))) (gramMismatch gain source injection n)))
    (tailVanishes : VanishesAtInfinity tail)
    (strengthPositive : 0 < strength) (negative : actual ≤ -strength) : False := by
  have liftedStrict : r * r < 1 := by
    have h := mul_pos (sub_pos.mpr rateStrict) (by linarith : 0 < 1 + r)
    nlinarith
  have massVanishes := variable_budget_vanishes (gramResidualMass weight source feature)
    (fun n => channelMass (pairWeight (weight (n + 1))) (gramMismatch gain source injection n))
    (r * r) (mul_nonneg rateNonnegative rateNonnegative) liftedStrict
    (fun n => channelMass_nonnegative (pairWeight (weight n))
      (fun p => source n p - gram (feature n) p)
      (fun p => mul_nonneg (weightsNonnegative n p.1) (weightsNonnegative n p.2)))
    (growing_gram_mass_step weight source feature gain injection r
      weightsNonnegative rateNonnegative columnBound modelUpdate) mismatchVanishes
  have absTailVanishes : VanishesAtInfinity (fun n => |tail n|) := by
    intro epsilon positive
    obtain ⟨N, hN⟩ := tailVanishes epsilon positive
    exact ⟨N, fun n hn => by simpa only [abs_abs] using hN n hn⟩
  obtain ⟨N, hN⟩ := (VanishesAtInfinity.add massVanishes absTailVanishes)
    (strength / 2) (by linarith)
  have comparison := gram_readout_with_tail_bound
    (weight N) (test N) (source N) (feature N) actual (tail N)
    (weightsNonnegative N) (testBound N) (sourceReadout N)
  have floorBound := positive_model_error_floor negative
    (gram_readout_nonnegative (test N) (feature N)) comparison
  have upperBound := (le_abs_self
    (gramResidualMass weight source feature N + |tail N|)).trans (hN N le_rfl)
  change strength ≤ gramResidualMass weight source feature N + |tail N| at floorBound
  linarith

end Tower

/-- A one-to-two coordinate map can contract: feature mass 1/2 gives pair mass 1/4. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/GrowingGramResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/GrowingGramResidual.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `affebe081e0ae6b3697a7a38ff4a97babb758edb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
