# PrimitiveAdditiveTriple.freyHigherX_cubic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcde6700-47b3-21e1-b080-e5edde46ac54",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyHigherX_cubic",
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
  "slug": "primitiveadditivetriple-freyhigherx-cubic--63c45803bb8bc5c1fad3c9b9",
  "source": {
    "blob": "90830ec01c368f6c6e99f945a5e4bf9be5ac4c18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63c45803bb8bc5c1fad3c9b99d12826d73992dd1e13ca3d236f1afbd128c2d31",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcde6700-47b3-21e1-b080-e5edde46ac54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyHigherX_cubic
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) :
    t.freyHigherX i N *
      (t.freyHigherX i N - algebraMap ℚ (FreyJetRing N) (t.a : ℚ)) *
      (t.freyHigherX i N + algebraMap ℚ (FreyJetRing N) (t.b : ℚ)) =
        freyHigherParameter N ^ 2 := by
  let f := algebraMap ℚ (FreyJetRing N)
  let r := f (t.freyPortRoot i)
  let z := t.freyHigherX i N - r
  have hr : r * (r - f (t.a : ℚ)) * (r + f (t.b : ℚ)) = 0 := by
    simpa only [r, map_mul, map_sub, map_add, map_zero] using
      congrArg f (t.freyPortRoot_cubic i)
  have hd : f (t.freyPortJacobian i : ℚ) =
      3 * r ^ 2 + 2 * (f (t.b : ℚ) - f (t.a : ℚ)) * r -
        f (t.a : ℚ) * f (t.b : ℚ) := by
    simpa only [r, map_mul, map_sub, map_add, map_pow, map_ofNat] using
      congrArg f (t.freyPortJacobian_derivative i)
  have hh : f (t.freyPortQuadraticCoefficient i) =
      3 * r + f (t.b : ℚ) - f (t.a : ℚ) := by
    simp only [PrimitiveAdditiveTriple.freyPortQuadraticCoefficient,
      map_sub, map_add, map_mul, map_ofNat, r]
  have hx : t.freyHigherX i N = r + z := by dsimp [z]; ring
  calc
    t.freyHigherX i N * (t.freyHigherX i N - f (t.a : ℚ)) *
        (t.freyHigherX i N + f (t.b : ℚ)) =
      r * (r - f (t.a : ℚ)) * (r + f (t.b : ℚ)) +
        f (t.freyPortJacobian i : ℚ) * z +
        f (t.freyPortQuadraticCoefficient i) * z ^ 2 + z ^ 3 := by
          rw [hx, hd, hh]
          ring
    _ = freyHigherParameter N ^ 2 := by
      rw [hr, zero_add]
      exact t.freyHigherX_shifted i N

/-- Bind the all-order construction to Mathlib's actual affine Equation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90830ec01c368f6c6e99f945a5e4bf9be5ac4c18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
