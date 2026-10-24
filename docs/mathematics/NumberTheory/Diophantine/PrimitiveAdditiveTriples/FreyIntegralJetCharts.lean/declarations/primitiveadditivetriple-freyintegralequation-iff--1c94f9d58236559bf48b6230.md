# PrimitiveAdditiveTriple.freyIntegralEquation_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b586b23-4a7d-363b-d76f-e4fc0381403b",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyIntegralEquation_iff",
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
  "slug": "primitiveadditivetriple-freyintegralequation-iff--1c94f9d58236559bf48b6230",
  "source": {
    "blob": "d0921d583705c3b381c4a4ee70bd5655a2c4c3ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 187,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c94f9d58236559bf48b6230a18a315b4c751c5a48bc6a739e3718a0d834d158",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b586b23-4a7d-363b-d76f-e4fc0381403b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyIntegralEquation_iff
    (t : PrimitiveAdditiveTriple) {A : Type*} [CommRing A]
    (f : ℤ →+* A) (x y : A) :
    (t.freyIntegralModel.map f).toAffine.Equation x y ↔
      y ^ 2 = x * (x - f (t.a : ℤ)) * (x + f (t.b : ℤ)) := by
  rw [WeierstrassCurve.Affine.equation_iff]
  simp only [PrimitiveAdditiveTriple.freyIntegralModel, freyWeierstrassInt,
    WeierstrassCurve.map, map_zero, map_sub, map_neg, map_mul, zero_mul, add_zero]
  have hfactor : x ^ 3 + (f (t.b : ℤ) - f (t.a : ℤ)) * x ^ 2 +
      (-f (t.a : ℤ) * f (t.b : ℤ)) * x =
        x * (x - f (t.a : ℤ)) * (x + f (t.b : ℤ)) := by ring
  rw [hfactor]

/-- Each deformation satisfies the actual mapped affine equation. This is an
Equation statement over nilpotents, not a field-valued Point assertion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0921d583705c3b381c4a4ee70bd5655a2c4c3ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
