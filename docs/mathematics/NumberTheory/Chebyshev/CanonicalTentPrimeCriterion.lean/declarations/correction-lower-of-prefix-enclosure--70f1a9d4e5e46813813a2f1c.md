# correction_lower_of_prefix_enclosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b8ce5a7-d475-c21e-9e08-e9460bc9e623",
  "kind": "theorem",
  "lexical_name": "correction_lower_of_prefix_enclosure",
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
  "slug": "correction-lower-of-prefix-enclosure--70f1a9d4e5e46813813a2f1c",
  "source": {
    "blob": "a9343f6b16e6c0789a304307849e3b7e418b5df3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 114,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70f1a9d4e5e46813813a2f1cbbd567b12227f42f984edeb7097949afa886cfad",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b8ce5a7-d475-c21e-9e08-e9460bc9e623`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correction_lower_of_prefix_enclosure (n K : ℕ) (hn : 2 ≤ n)
    (correctionValue correctionError : ℝ)
    (heval : |correctionPrefix K (squareCenter n) (squareRadius n) - correctionValue| ≤
      correctionError) :
    correctionValue - correctionError - squareTrivialBudget n * (1 / (n : ℝ) ^ 4) ^ K ≤
      squareTrivialCorrection n := by
  have hprefix := (square_correctionPrefix_error K n hn).2
  have hlo := (abs_le.mp heval).1
  linarith

/-- Refine the rational correction without changing the nontrivial-zero tail.
K is a correction-prefix index; T is a nontrivial-zero cutoff; n is arithmetic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9343f6b16e6c0789a304307849e3b7e418b5df3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
