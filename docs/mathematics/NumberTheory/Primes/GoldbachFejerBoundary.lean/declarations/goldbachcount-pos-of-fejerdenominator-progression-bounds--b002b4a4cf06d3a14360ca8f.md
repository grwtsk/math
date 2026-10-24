# goldbachCount_pos_of_fejerDenominator_progression_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f5622a4-d587-c584-f6e0-3cf5e92ddf38",
  "kind": "theorem",
  "lexical_name": "goldbachCount_pos_of_fejerDenominator_progression_bounds",
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
  "slug": "goldbachcount-pos-of-fejerdenominator-progression-bounds--b002b4a4cf06d3a14360ca8f",
  "source": {
    "blob": "7265b7603e55cda94078bfe8bb5b40298c75fdb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 247,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFejerBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b002b4a4cf06d3a14360ca8f47baf1f3a420618a905fb52dc96bfc741c80b6af",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFejerBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f5622a4-d587-c584-f6e0-3cf5e92ddf38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCount_pos_of_fejerDenominator_progression_bounds
    {Q N : ℕ}
    (hscale : 2 * Q ^ 2 < N + 1)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (minorError : ℝ)
    (hnonneg : ∀ aq ∈ goldbachRationalArcIndices Q,
      ∀ r ∈ Finset.range aq.2,
        0 ≤ residueError aq r)
    (hresidue : ∀ aq ∈ goldbachRationalArcIndices Q,
      ∀ x ∈ goldbachClippedRationalArc Q N aq,
        ∀ r ∈ Finset.range aq.2,
          ‖goldbachResidueProgressionDiscrepancy
              N aq.2 r
                (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
            residueError aq r)
    (hminor :
      ‖goldbachRationalMinorContribution Q N‖ ≤
        minorError)
    (hmargin :
      (∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachProgressionArcErrorBudget
          Q N aq residueError) +
        minorError <
      goldbachFejerDenominatorLowerSum Q N) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_symmetricWindow_progression_bounds
    hscale residueError
    (goldbachFejerDenominatorLowerSum Q N)
    minorError
  · exact
      goldbachFejerDenominatorLowerSum_le_symmetricMajor_re Q N
  · exact hnonneg
  · exact hresidue
  · exact hminor
  · exact hmargin

/-- Finite-local-main certificate.  A separately supplied comparison places
the inherited finite Euler-product scale below the explicit Fejér denominator
lower source; progression and signed minor errors are then charged once. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFejerBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFejerBoundary.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7265b7603e55cda94078bfe8bb5b40298c75fdb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
