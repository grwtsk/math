# PrimitiveAdditiveTriple.freyChartApproximant_toRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2eb4116b-bb78-dd18-e448-ff3805b276ae",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyChartApproximant_toRat",
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
  "slug": "primitiveadditivetriple-freychartapproximant-torat--c65f21b6278d38936e0108ce",
  "source": {
    "blob": "d0921d583705c3b381c4a4ee70bd5655a2c4c3ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 149,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c65f21b6278d38936e0108ce41e83256537b793dc434a77b5ff068bd0304672c",
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

Occurrence: `result:2eb4116b-bb78-dd18-e448-ff3805b276ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyChartApproximant_toRat
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (n : ℕ) :
    (t.freyChartApproximant i n).map
      (t.freyChartMap i (Int.castRingHom ℚ)
        (isUnit_iff_ne_zero.mpr (t.freyPortJacobian_ne_zero i))) =
      t.freyJetApproximantPolynomial i n := by
  have h := t.freyChartApproximant_map i (Int.castRingHom ℚ)
    (isUnit_iff_ne_zero.mpr (t.freyPortJacobian_ne_zero i))
    ((t.freyPortJacobian i : ℚ)⁻¹)
    (mul_inv_cancel₀ (t.freyPortJacobian_ne_zero i)) n
  simpa [PrimitiveAdditiveTriple.freyJetApproximantPolynomial,
    t.freyPortQuadraticCoefficient_cast i] using h

/-- Exact shifted-cubic identity after any integral base change, before quotienting.
It ties the generic deformation theorem to the selected source root. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0921d583705c3b381c4a4ee70bd5655a2c4c3ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
