# no_fixed_negative_of_modulus_growing_gram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4cbccd0-6297-64df-b231-670b403d53a2",
  "kind": "theorem",
  "lexical_name": "no_fixed_negative_of_modulus_growing_gram",
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
  "slug": "no-fixed-negative-of-modulus-growing-gram--32f826fad26b0ce78e082031",
  "source": {
    "blob": "50f2ce40a11d73bb68f0793b49f2d3d470b63396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 240,
    "path": "GRWTSK/Analysis/ErrorBounds/ComplexModulusGramResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32f826fad26b0ce78e082031c78fc71de2d46c67317d58679c2487d5ae11c746",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4cbccd0-6297-64df-b231-670b403d53a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_fixed_negative_of_modulus_growing_gram
    (weight : ∀ n, I n → ℝ) (test : ∀ n, I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (tail : ℕ → ℝ)
    (r actual strength : ℝ)
    (weightsNonnegative : ∀ n i, 0 ≤ weight n i)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (testBound : ∀ n i, ‖test n i‖ ≤ weight n i)
    (sourceReadout : ∀ n, actual = (complexReadout (test n) (source n)).re + tail n)
    (columnBound : ∀ n j, (∑ i, weight (n + 1) i * ‖gain n i j‖) ≤ r * weight n j)
    (modelUpdate : ∀ n p, complexGram (feature (n + 1)) p =
      complexTransport (gain n) (complexGram (feature n)) p + injection n p)
    (mismatchVanishes : VanishesAtInfinity (fun n =>
      modulusMass (pairWeight (weight (n + 1))) (complexMismatch gain source injection n)))
    (tailVanishes : VanishesAtInfinity tail)
    (strengthPositive : 0 < strength) (negative : actual ≤ -strength) : False := by
  have liftedStrict : r * r < 1 := by
    have h := mul_pos (sub_pos.mpr rateStrict) (by linarith : 0 < 1 + r)
    nlinarith
  have massVanishes := variable_budget_vanishes (modulusResidualMass weight source feature)
    (fun n => modulusMass (pairWeight (weight (n + 1))) (complexMismatch gain source injection n))
    (r * r) (mul_nonneg rateNonnegative rateNonnegative) liftedStrict
    (fun n => modulusMass_nonnegative (pairWeight (weight n))
      (fun p => source n p - complexGram (feature n) p)
      (fun p => mul_nonneg (weightsNonnegative n p.1) (weightsNonnegative n p.2)))
    (modulus_gram_mass_step weight source feature gain injection r
      weightsNonnegative rateNonnegative columnBound modelUpdate) mismatchVanishes
  have absTailVanishes : VanishesAtInfinity (fun n => |tail n|) := by
    intro epsilon positive
    obtain ⟨N, hN⟩ := tailVanishes epsilon positive
    exact ⟨N, fun n hn => by simpa only [abs_abs] using hN n hn⟩
  obtain ⟨N, hN⟩ := (VanishesAtInfinity.add massVanishes absTailVanishes)
    (strength / 2) (by linarith)
  have comparison := readout_with_tail_bound (weight N) (test N) (source N) (feature N)
    actual (tail N) (weightsNonnegative N) (testBound N) (sourceReadout N)
  have floorBound := positive_model_error_floor negative
    (complex_gram_readout_nonnegative (test N) (feature N)) comparison
  have upperBound := (le_abs_self
    (modulusResidualMass weight source feature N + |tail N|)).trans (hN N le_rfl)
  change strength ≤ modulusResidualMass weight source feature N + |tail N| at floorBound
  linarith

end Tower

/-- Unit coordinate phases do not change the native residual budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/ComplexModulusGramResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/ComplexModulusGramResidual.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f2ce40a11d73bb68f0793b49f2d3d470b63396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
