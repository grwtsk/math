# goldbachCount_pos_of_rational_arc_sum_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3d05fa1-0c35-10db-6728-db66cb74f878",
  "kind": "theorem",
  "lexical_name": "goldbachCount_pos_of_rational_arc_sum_bounds",
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
  "slug": "goldbachcount-pos-of-rational-arc-sum-bounds--f76abf79f43369a9ce70aefe",
  "source": {
    "blob": "fc9223e70ae6b375dea489bc92763cbb390bcf20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 133,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcExpansion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f76abf79f43369a9ce70aefe80b6aa2db11e8ad4306a9039f071cfaaf4f0a8b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3d05fa1-0c35-10db-6728-db66cb74f878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCount_pos_of_rational_arc_sum_bounds
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1)
    (mainLower minorError : ℝ)
    (hmain :
      mainLower ≤
        (∑ aq ∈ goldbachRationalArcIndices Q,
          goldbachSingleRationalArcContribution Q N aq).re)
    (hminor :
      ‖goldbachRationalMinorContribution Q N‖ ≤ minorError)
    (hmargin : minorError < mainLower) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_rational_arc_bounds
    (Q := Q) (N := N) mainLower minorError
  · rw [goldbachRationalMajorContribution_eq_sum hscale]
    exact hmain
  · exact hminor
  · exact hmargin

/-- The finite-local-main consumer with the concrete major contribution
expanded as an exact finite arc sum. The arc and local-factor cutoffs remain
independent, and both errors are charged once. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachRationalArcExpansion.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc9223e70ae6b375dea489bc92763cbb390bcf20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
