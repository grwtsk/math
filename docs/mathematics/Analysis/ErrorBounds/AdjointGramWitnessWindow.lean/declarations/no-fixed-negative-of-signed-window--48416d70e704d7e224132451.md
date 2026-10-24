# no_fixed_negative_of_signed_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3223beea-433d-2dca-a06d-6b509f89a013",
  "kind": "theorem",
  "lexical_name": "no_fixed_negative_of_signed_window",
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
  "slug": "no-fixed-negative-of-signed-window--48416d70e704d7e224132451",
  "source": {
    "blob": "dbf0c525e4db0bc2b500d640eb4faba66c9269c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 186,
    "path": "GRWTSK/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48416d70e704d7e224132451099b0ec3c59dcc6b45e7bd4338dc9675d76ab609",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3223beea-433d-2dca-a06d-6b509f89a013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_fixed_negative_of_signed_window
    (test : ι → ℂ) (feature : κ → ι → ℂ)
    (actual strength initial tail initialLower tailLower : ℝ)
    (forcing forcingLower : ℕ → ℝ) (k : ℕ)
    (identity : actual - (complexReadout test (complexGram feature)).re =
      initial + (∑ j ∈ Finset.range k, forcing j) + tail)
    (initialEstimate : initialLower ≤ initial)
    (forcingEstimate : ∀ j, j < k → forcingLower j ≤ forcing j)
    (tailEstimate : tailLower ≤ tail)
    (negative : actual ≤ -strength)
    (margin : -strength < initialLower + (∑ j ∈ Finset.range k, forcingLower j) + tailLower) :
    False := by
  have lower := source_lower_bound_of_signed_window test feature actual initial tail
    initialLower tailLower forcing forcingLower k identity initialEstimate forcingEstimate tailEstimate
  linarith

/-- A phase-bearing diagonal transition distinguishes A* from an ordinary transpose. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/AdjointGramWitnessWindow.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbf0c525e4db0bc2b500d640eb4faba66c9269c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
