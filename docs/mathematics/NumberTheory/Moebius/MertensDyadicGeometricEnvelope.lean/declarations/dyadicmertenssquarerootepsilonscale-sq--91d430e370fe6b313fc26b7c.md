# dyadicMertensSquareRootEpsilonScale_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f82224ba-28f4-504b-f8ad-d3b78bf3b1a3",
  "kind": "theorem",
  "lexical_name": "dyadicMertensSquareRootEpsilonScale_sq",
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
  "slug": "dyadicmertenssquarerootepsilonscale-sq--91d430e370fe6b313fc26b7c",
  "source": {
    "blob": "74a87969887ecee95536db010bad2b0434389bbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 57,
    "path": "GRWTSK/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91d430e370fe6b313fc26b7c39e28425c9e578a67b4dc3a418573ff565a9a6d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f82224ba-28f4-504b-f8ad-d3b78bf3b1a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicMertensSquareRootEpsilonScale_sq
    (j : ℕ) (δ : ℝ) :
    dyadicMertensSquareRootEpsilonScale j δ ^ 2 =
      (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ (δ / 2)) := by
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hX0 : 0 ≤ X := by
    dsimp [X]
    positivity
  have hsqrt : Real.sqrt X ^ 2 = X := Real.sq_sqrt hX0
  have hrpow : (X ^ (δ / 4)) ^ 2 = X ^ (δ / 2) := by
    rw [← Real.rpow_natCast]
    rw [← Real.rpow_mul hX0]
    congr 1
    ring
  change (Real.sqrt X * X ^ (δ / 4)) ^ 2 = X * X ^ (δ / 2)
  rw [mul_pow, hsqrt, hrpow]

/-- After squaring, the `delta/4` envelope loss fits inside the target
`delta` budget on every nonempty dyadic scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74a87969887ecee95536db010bad2b0434389bbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
