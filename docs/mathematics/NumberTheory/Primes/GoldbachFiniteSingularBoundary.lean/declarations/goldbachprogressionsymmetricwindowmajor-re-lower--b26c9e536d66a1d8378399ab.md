# goldbachProgressionSymmetricWindowMajor_re_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0465ce74-ccbb-7226-2989-1ec988575171",
  "kind": "theorem",
  "lexical_name": "goldbachProgressionSymmetricWindowMajor_re_lower",
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
  "slug": "goldbachprogressionsymmetricwindowmajor-re-lower--b26c9e536d66a1d8378399ab",
  "source": {
    "blob": "3b6b4a37c088704da25e5b250ed8979ea33665b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 181,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b26c9e536d66a1d8378399ab9f470ae61efeb88e5b132deeae24fdda22f71e52",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0465ce74-ccbb-7226-2989-1ec988575171`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachProgressionSymmetricWindowMajor_re_lower
    {Q N : ℕ}
    (diagonalLower windowError : ℝ)
    (hdiag :
      diagonalLower ≤
        (goldbachProgressionDiagonalWindowMajorSum Q N).re)
    (hwindow :
      goldbachProgressionOscillatoryWindowBudget Q N ≤
        windowError) :
    diagonalLower - windowError ≤
      (goldbachProgressionSymmetricWindowMajorSum Q N).re := by
  have hnorm :
      ‖goldbachProgressionOscillatoryWindowMajorSum Q N‖ ≤
        windowError :=
    (norm_goldbachProgressionOscillatoryWindowMajorSum_le Q N).trans
      hwindow
  have hre :
      |(goldbachProgressionOscillatoryWindowMajorSum Q N).re| ≤
        windowError :=
    (Complex.abs_re_le_norm
      (goldbachProgressionOscillatoryWindowMajorSum Q N)).trans
        hnorm
  have hlower :
      -windowError ≤
        (goldbachProgressionOscillatoryWindowMajorSum Q N).re :=
    (abs_le.mp hre).1
  rw [goldbachProgressionSymmetricWindowMajorSum_eq_diagonal_add_oscillatory,
    Complex.add_re]
  linarith

/-- One admitted denominator block is its arithmetic coefficient times the
exact evaluated diagonal-plus-oscillatory singular integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6b4a37c088704da25e5b250ed8979ea33665b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
