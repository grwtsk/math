# no_fixed_negative_of_complex_growing_gram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8c5217b-0178-e3db-5418-818616ad906e",
  "kind": "theorem",
  "lexical_name": "no_fixed_negative_of_complex_growing_gram",
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
  "slug": "no-fixed-negative-of-complex-growing-gram--6bb6c4aa00fc99b31bbeb40b",
  "source": {
    "blob": "49cca1f22a48fb43604ea01c60055567057518e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 234,
    "path": "GRWTSK/Analysis/ErrorBounds/HermitianGramRealification.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bb6c4aa00fc99b31bbeb40b26402097c567de2eb6c6babe6c2846dd5dab628c",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/HermitianGramRealification.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8c5217b-0178-e3db-5418-818616ad906e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_fixed_negative_of_complex_growing_gram
    (weight : ∀ n, I n → ℝ) (test : ∀ n, I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (tail : ℕ → ℝ)
    (r actual strength : ℝ)
    (weightsNonnegative : ∀ n i, 0 ≤ weight n i)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (testBound : ∀ n i, ‖test n i‖ ≤ weight n i)
    (sourceReadout : ∀ n, actual = (complexReadout (test n) (source n)).re + tail n)
    (columnBound : ∀ n j,
      (∑ i, weight (n + 1) i * componentMass (gain n i j)) ≤ r * weight n j)
    (modelUpdate : ∀ n p, complexGram (feature (n + 1)) p =
      complexTransport (gain n) (complexGram (feature n)) p + injection n p)
    (mismatchVanishes : VanishesAtInfinity (fun n =>
      channelMass (pairWeight (duplicateWeight (weight (n + 1))))
        (realSource (fun p => source (n + 1) p -
          complexTransport (gain n) (source n) p - injection n p))))
    (tailVanishes : VanishesAtInfinity tail)
    (strengthPositive : 0 < strength) (negative : actual ≤ -strength) : False := by
  have realUpdate (n : ℕ) (p : (I (n + 1) ⊕ I (n + 1)) ×
      (I (n + 1) ⊕ I (n + 1))) :
      gram (pairedFeatures (feature (n + 1))) p =
        transportMatrix (realGain (gain n)) (gram (pairedFeatures (feature n))) p +
          realSource (injection n) p := by
    have h := congrArg realSource (funext (modelUpdate n))
    rw [realSource_gram, realSource_add, realSource_transport, realSource_gram] at h
    exact congrFun h p
  have mismatchIdentity (n : ℕ) :
      gramMismatch (fun n => realGain (gain n)) (fun n => realSource (source n))
        (fun n => realSource (injection n)) n =
      realSource (fun p => source (n + 1) p -
        complexTransport (gain n) (source n) p - injection n p) := by
    rw [realSource_sub, realSource_sub, realSource_transport]
    rfl
  apply no_fixed_negative_of_growing_gram
    (fun n => duplicateWeight (weight n)) (fun n => realVector (test n))
    (fun n => realSource (source n)) (fun n => pairedFeatures (feature n))
    (fun n => realGain (gain n)) (fun n => realSource (injection n)) tail r actual strength
  · intro n i
    cases i <;> exact weightsNonnegative n _
  · exact rateNonnegative
  · exact rateStrict
  · exact fun n => realVector_bound (weight n) (test n) (testBound n)
  · intro n
    rw [real_readout]
    exact sourceReadout n
  · exact fun n => realGain_column_bound (weight n) (weight (n + 1))
      (gain n) r (columnBound n)
  · exact realUpdate
  · simpa only [mismatchIdentity] using mismatchVanishes
  · exact tailVanishes
  · exact strengthPositive
  · exact negative

end Tower

/-- A purely imaginary off-diagonal Hermitian block must not be erased. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/HermitianGramRealification.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/HermitianGramRealification.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49cca1f22a48fb43604ea01c60055567057518e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
