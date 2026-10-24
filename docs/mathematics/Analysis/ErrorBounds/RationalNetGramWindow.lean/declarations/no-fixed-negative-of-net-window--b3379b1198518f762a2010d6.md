# no_fixed_negative_of_net_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5412dc8-467e-512f-b2fd-c20174100c60",
  "kind": "theorem",
  "lexical_name": "no_fixed_negative_of_net_window",
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
  "slug": "no-fixed-negative-of-net-window--b3379b1198518f762a2010d6",
  "source": {
    "blob": "c8870dc4933603c71b20c05ccb6a6235f0017f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 201,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalNetGramWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3379b1198518f762a2010d64ad0bf5d9db5657624c5d79ced79fcacd06bb94f",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalNetGramWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5412dc8-467e-512f-b2fd-c20174100c60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_fixed_negative_of_net_window
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (test : ∀ n, I n → ℂ) (k : ℕ) (actual strength tail initialLower tailLower : ℝ)
    (netLower correctionCost : ℕ → ℝ)
    (sourceReadout : actual = (complexReadout (test k) (source k)).re + tail)
    (initialEstimate : initialLower ≤
      (complexReadout (test 0) (fun p => source 0 p - complexGram (feature 0) p)).re)
    (netEstimate : ∀ j, j < k → netLower j ≤
      (complexReadout (test (j + 1)) (gramNetForcing gain source feature j)).re)
    (correctionEstimate : ∀ j, j < k → -(correctionCost j) ≤
      (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)
    (tailEstimate : tailLower ≤ tail) (negative : actual ≤ -strength)
    (margin : -strength < initialLower +
      (∑ j ∈ Finset.range k, (netLower j - correctionCost j)) + tailLower) : False := by
  apply no_fixed_negative_of_signed_window (test k) (feature k) actual strength
    ((complexReadout (test 0) (fun p => source 0 p - complexGram (feature 0) p)).re)
    tail initialLower tailLower
    (fun j => (complexReadout (test (j + 1)) (gramNetForcing gain source feature j)).re +
      (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)
    (fun j => netLower j - correctionCost j) k
  · exact gram_net_window_identity gain source feature test k actual tail sourceReadout
  · exact initialEstimate
  · intro j hj
    simpa only [sub_eq_add_neg] using add_le_add (netEstimate j hj) (correctionEstimate j hj)
  · exact tailEstimate
  · exact negative
  · exact margin

end Window

/-- Identical shared injection uncertainty widens a separately evaluated difference by 200. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalNetGramWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalNetGramWindow.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8870dc4933603c71b20c05ccb6a6235f0017f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
