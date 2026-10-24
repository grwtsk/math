# source_sub_finite_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d89efd1-8857-864e-209f-2acf68861d86",
  "kind": "theorem",
  "lexical_name": "source_sub_finite_eq",
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
  "slug": "source-sub-finite-eq--3d127b977c320ce584df16a4",
  "source": {
    "blob": "d955b3c71ad67285d63f6b740e70b52850c531f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 33,
    "path": "GRWTSK/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d127b977c320ce584df16a4c340bdb6b7666d188341eaeb64ec09606af86a3b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d89efd1-8857-864e-209f-2acf68861d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_sub_finite_eq (N : ℕ) (x T : ℝ)
    (hx : 1 < x) (hN : 3 ≤ N) (hxN : x ≤ N) :
    (firstRieszPrefix N x : ℂ) - finiteNormalizedRiesz x T =
      (fullRieszZeroValue x - finiteRieszZeroHead x T) -
        ((3 - x : ℝ) : ℂ) * (fullRieszZeroValue 2 - finiteRieszZeroHead 2 T) -
        ((x - 2 : ℝ) : ℂ) * (fullRieszZeroValue 3 - finiteRieszZeroHead 3 T) := by
  rw [firstRieszPrefix_eq_global_normalized N x hx hN hxN]
  unfold finiteNormalizedRiesz normalizationAtTwo normalizationAtThree
  rw [rationalRieszPrimitive_base]
  push_cast
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d955b3c71ad67285d63f6b740e70b52850c531f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
