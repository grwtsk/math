# no_fixed_negative_of_inexact_gram_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d81a5f6-f296-4f0e-a4e6-bd01b2a2884b",
  "kind": "theorem",
  "lexical_name": "no_fixed_negative_of_inexact_gram_window",
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
  "slug": "no-fixed-negative-of-inexact-gram-window--a8dea80dcc2109544366091f",
  "source": {
    "blob": "badf04b0b2e1f3649a636b5616a0ab5b0a802aee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 236,
    "path": "GRWTSK/Analysis/ErrorBounds/InexactAdjointGramWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8dea80dcc2109544366091fa8c595b1eeaff686f1e9df625263ac134aae8ee3",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d81a5f6-f296-4f0e-a4e6-bd01b2a2884b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_fixed_negative_of_inexact_gram_window
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (test : ∀ n, I n → ℂ)
    (k : ℕ) (actual strength tail initialLower tailLower : ℝ)
    (forcingLower correctionCost : ℕ → ℝ)
    (modelUpdate : ∀ j, j < k → ∀ p, complexGram (feature (j + 1)) p =
      complexTransport (gain j) (complexGram (feature j)) p + injection j p)
    (sourceReadout : actual = (complexReadout (test k) (source k)).re + tail)
    (initialEstimate : initialLower ≤
      (complexReadout (test 0) (fun p => source 0 p - complexGram (feature 0) p)).re)
    (forcingEstimate : ∀ j, j < k → forcingLower j ≤
      (complexReadout (test (j + 1)) (complexMismatch gain source injection j)).re)
    (correctionEstimate : ∀ j, j < k → -(correctionCost j) ≤
      (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)
    (tailEstimate : tailLower ≤ tail) (negative : actual ≤ -strength)
    (margin : -strength < initialLower +
      (∑ j ∈ Finset.range k, (forcingLower j - correctionCost j)) + tailLower) : False := by
  apply no_fixed_negative_of_signed_window (test k) (feature k) actual strength
    ((complexReadout (test 0) (fun p => source 0 p - complexGram (feature 0) p)).re)
    tail initialLower tailLower
    (fun j => (complexReadout (test (j + 1)) (complexMismatch gain source injection j)).re +
      (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)
    (fun j => forcingLower j - correctionCost j) k
  · exact gram_inexact_window_identity gain source feature injection test k actual tail
      modelUpdate sourceReadout
  · exact initialEstimate
  · intro j hj
    have h := add_le_add (forcingEstimate j hj) (correctionEstimate j hj)
    simpa only [sub_eq_add_neg] using h
  · exact tailEstimate
  · exact negative
  · exact margin

end Window

/-- Omitting the second-order term undercharges even a one-coordinate negative residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/InexactAdjointGramWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/InexactAdjointGramWindow.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `badf04b0b2e1f3649a636b5616a0ab5b0a802aee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
