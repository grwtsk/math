# square_correctionPrefix_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cee76f4-a73c-0f2f-0a12-d21e5f4314a8",
  "kind": "theorem",
  "lexical_name": "square_correctionPrefix_error",
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
  "slug": "square-correctionprefix-error--36230131b70e89c5296370e0",
  "source": {
    "blob": "27b090337ad94fde8ab1057b87aaa590547fc133",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Chebyshev/SignedTentCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36230131b70e89c5296370e0d00ae5879fef74e795a8d73cc6291c094bea4119",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/SignedTentCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cee76f4-a73c-0f2f-0a12-d21e5f4314a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem square_correctionPrefix_error (N n : ℕ) (hn : 2 ≤ n) :
    0 ≤ correctionPrefix N (squareCenter n) (squareRadius n) - squareTrivialCorrection n ∧
      correctionPrefix N (squareCenter n) (squareRadius n) - squareTrivialCorrection n ≤
        squareTrivialBudget n * (1 / (n : ℝ) ^ 4) ^ N := by
  have he := correctionPrefix_error N (squareCenter n) (squareRadius n)
    (squareRadius_pos n) (square_tent_domain n hn)
  rw [center_sub_radius] at he
  simpa only [squareTrivialBudget, squareTrivialCorrection, Nat.cast_pow, ← pow_mul] using he

/-- No signed-correction bound premise remains. The complete source identity,
counting/coverage, evaluator and strict margin still must be proved independently. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/SignedTentCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/SignedTentCorrection.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27b090337ad94fde8ab1057b87aaa590547fc133` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
