# PrimitiveAdditiveTriple.freyQuadraticX_cubic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:924e877e-6a5c-1b30-1a96-5b4f7e3acda1",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyQuadraticX_cubic",
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
  "slug": "primitiveadditivetriple-freyquadraticx-cubic--11d027614f0287d3eb84b6ca",
  "source": {
    "blob": "98bafa6013820f49daa306e1dda04dd52056bec8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 137,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11d027614f0287d3eb84b6cab71b8a1f2ef0f93735df45474405e08fa484f03c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:924e877e-6a5c-1b30-1a96-5b4f7e3acda1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyQuadraticX_cubic
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    t.freyQuadraticX i *
        (t.freyQuadraticX i - algebraMap ℚ FreyQuadraticJetRing (t.a : ℚ)) *
        (t.freyQuadraticX i + algebraMap ℚ FreyQuadraticJetRing (t.b : ℚ)) =
      freyJetParameter ^ 2 := by
  let f := algebraMap ℚ FreyQuadraticJetRing
  apply frey_nilpotent_quadratic_curve
  · have h := congrArg f (t.freyPortRoot_cubic i)
    simpa only [map_mul, map_sub, map_add, map_zero] using h
  · have h := congrArg f (mul_inv_cancel₀ (t.freyPortJacobian_ne_zero i))
    have hd := congrArg f (t.freyPortJacobian_derivative i)
    simp only [map_add, map_sub, map_mul, map_pow, map_ofNat] at hd
    rw [map_mul, map_one, hd] at h
    exact h
  · exact freyJetParameter_cube

/-- The same coordinates satisfy Mathlib's affine Equation on the base change
of the actual Frey model. No Point-over-nilpotents interpretation is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98bafa6013820f49daa306e1dda04dd52056bec8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
