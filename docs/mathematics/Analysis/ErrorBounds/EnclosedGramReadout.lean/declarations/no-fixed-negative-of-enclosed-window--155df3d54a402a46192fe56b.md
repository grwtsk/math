# no_fixed_negative_of_enclosed_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1b981e4-79d8-d9ec-b682-17e9780c20f9",
  "kind": "theorem",
  "lexical_name": "no_fixed_negative_of_enclosed_window",
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
  "slug": "no-fixed-negative-of-enclosed-window--155df3d54a402a46192fe56b",
  "source": {
    "blob": "846a9ca65b8d8fda4bd372950e75e0bc69c4e3cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 151,
    "path": "GRWTSK/Analysis/ErrorBounds/EnclosedGramReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:155df3d54a402a46192fe56b3319edf348b7b02240dc09954ca53506ccfbc88a",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/EnclosedGramReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1b981e4-79d8-d9ec-b682-17e9780c20f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_fixed_negative_of_enclosed_window
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (test : ∀ n, I n → ℂ)
    (k : ℕ) (actual strength tailCenter sourceError initialEvaluation initialError : ℝ)
    (forcingEvaluation forcingError correctionCost : ℕ → ℝ)
    (modelUpdate : ∀ j, j < k → ∀ p, complexGram (feature (j + 1)) p =
      complexTransport (gain j) (complexGram (feature j)) p + injection j p)
    (initialEnclosure : |(complexReadout (test 0)
      (fun p => source 0 p - complexGram (feature 0) p)).re - initialEvaluation| ≤ initialError)
    (forcingEnclosure : ∀ j, j < k →
      |(complexReadout (test (j + 1)) (complexMismatch gain source injection j)).re -
        forcingEvaluation j| ≤ forcingError j)
    (correctionEstimate : ∀ j, j < k → -(correctionCost j) ≤
      (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)
    (sourceEnclosure : |terminalSourceDefect actual
      (complexReadout (test k) (source k)).re tailCenter| ≤ sourceError)
    (negative : actual ≤ -strength)
    (margin : -strength < initialEvaluation - initialError +
      (∑ j ∈ Finset.range k, (forcingEvaluation j - forcingError j - correctionCost j)) +
        (tailCenter - sourceError)) : False := by
  apply no_fixed_negative_of_inexact_gram_window gain source feature injection test k actual strength
    (tailCenter + terminalSourceDefect actual (complexReadout (test k) (source k)).re tailCenter)
    (initialEvaluation - initialError) (tailCenter - sourceError)
    (fun j => forcingEvaluation j - forcingError j) correctionCost
  · exact modelUpdate
  · exact terminalSourceDefect_identity actual (complexReadout (test k) (source k)).re tailCenter
  · have h := (abs_le.mp initialEnclosure).1
    linarith
  · intro j hj
    have h := (abs_le.mp (forcingEnclosure j hj)).1
    linarith
  · exact correctionEstimate
  · have h := (abs_le.mp sourceEnclosure).1
    linarith
  · exact negative
  · exact margin

end Window

/-- Matrix uncertainty must be evaluated on the perturbed vector, not only on its center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/EnclosedGramReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/EnclosedGramReadout.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846a9ca65b8d8fda4bd372950e75e0bc69c4e3cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
