# no_fixed_negative_of_gram_defects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5dea424-1d33-6288-7503-f449e72846e7",
  "kind": "theorem",
  "lexical_name": "no_fixed_negative_of_gram_defects",
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
  "slug": "no-fixed-negative-of-gram-defects--3450eeb89c75c727baeec482",
  "source": {
    "blob": "834401db97003240a9690a2043e470749b8f65c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 210,
    "path": "GRWTSK/Analysis/ErrorBounds/QuadraticGramResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3450eeb89c75c727baeec482a5b9afaa0abb05a93ff5d952ea599b330fb8aedb",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/QuadraticGramResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5dea424-1d33-6288-7503-f449e72846e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_fixed_negative_of_gram_defects
    (weight : ι → ℝ) (test : ℕ → ι → ℝ) (source : ℕ → ι × ι → ℝ)
    (feature injection : ℕ → κ → ι → ℝ) (gain : ℕ → ι → ι → ℝ)
    (r actual strength : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (sourceReadout : ∀ n, actual = quadraticReadout (test n) (source n))
    (testBound : ∀ n i, |test n i| ≤ weight i)
    (columnBound : ∀ n j, (∑ i, weight i * |gain n i j|) ≤ r * weight j)
    (update : ∀ n k i, feature (n + 1) k i =
      featureStep (gain n) (feature n k) i + injection n k i)
    (mismatchVanishes : VanishesAtInfinity (fun n =>
      channelMass (pairWeight weight) (fun p =>
        stageDefect (fun n => liftedGain (gain n)) source n p -
          gramInjection (gain n) (feature n) (injection n) p)))
    (strengthPositive : 0 < strength) (negative : actual ≤ -strength) : False := by
  have netForcingVanishes : VanishesAtInfinity (fun n =>
      channelMass (pairWeight weight)
        (residualForcing (fun n => liftedGain (gain n)) source
          (fun n => gram (feature n)) n)) := by
    simpa only [gram_residual_forcing gain source feature injection update] using mismatchVanishes
  have liftedStrict : r * r < 1 := by
    have productPositive := mul_pos (sub_pos.mpr rateStrict)
      (by linarith : 0 < 1 + r)
    nlinarith
  exact no_fixed_negative_of_source_defects
    (pairWeight weight) (fun n => outer (test n) (test n))
    source (fun n => gram (feature n)) (fun n => liftedGain (gain n))
    (fun n => quadraticReadout (test n) (gram (feature n))) (fun _ => 0)
    (r * r) actual strength
    (fun p => mul_nonneg (weightsNonnegative p.1) (weightsNonnegative p.2))
    (mul_nonneg rateNonnegative rateNonnegative) liftedStrict
    sourceReadout (fun _ => rfl)
    (fun n => pair_consumer_bound weight (test n) weightsNonnegative (testBound n))
    (fun n => lifted_column_bound weight (gain n) r weightsNonnegative
      rateNonnegative (columnBound n))
    netForcingVanishes VanishesAtInfinity.zero strengthPositive negative
    (fun n => by simpa only [neg_zero] using gram_readout_nonnegative (test n) (feature n))

/-- Equal vector injections need not cancel after quadratic lifting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/QuadraticGramResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/QuadraticGramResidual.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834401db97003240a9690a2043e470749b8f65c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
