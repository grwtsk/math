# geometryPairwisePrimitivity_of_mem_boxFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5ec26a6-80cf-cb86-bea1-6ccfd17d2640",
  "kind": "theorem",
  "lexical_name": "geometryPairwisePrimitivity_of_mem_boxFinset",
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
  "slug": "geometrypairwiseprimitivity-of-mem-boxfinset--f5701a7bd63be2f4b4c942e9",
  "source": {
    "blob": "e5ff8583109ed0814dd13368901e9eee6f3f8c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 105,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5701a7bd63be2f4b4c942e9e619aeb37839fd16d09f262e193c9aa916cc5eb3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5ec26a6-80cf-cb86-bea1-6ccfd17d2640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometryPairwisePrimitivity_of_mem_boxFinset
    {d : ℕ} {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d)) (hq : q ∈ boxFinset p) :
    GeometryPairwisePrimitivity p q I I' I'' := by
  rcases geometryTotals_pairwise_coprime_of_mem_boxFinset hq with
    ⟨hab, hac, hbc⟩
  have coefficientA_dvd :
      geometryCoefficientA p I q ∣ p.totalA q.1 :=
    ⟨geometryVariableA I q,
      (geometryCoefficientA_mul_variableA p I q).symm⟩
  have coefficientB_dvd :
      geometryCoefficientB p I' q ∣ p.totalB q.2.1 :=
    ⟨geometryVariableB I' q,
      (geometryCoefficientB_mul_variableB p I' q).symm⟩
  have coefficientC_dvd :
      geometryCoefficientC p I'' q ∣ p.totalC q.2.2 :=
    ⟨geometryVariableC I'' q,
      (geometryCoefficientC_mul_variableC p I'' q).symm⟩
  have variableA_dvd :
      geometryVariableA I q ∣ p.totalA q.1 := by
    refine ⟨geometryCoefficientA p I q, ?_⟩
    simpa [mul_comm] using
      (geometryCoefficientA_mul_variableA p I q).symm
  have variableB_dvd :
      geometryVariableB I' q ∣ p.totalB q.2.1 := by
    refine ⟨geometryCoefficientB p I' q, ?_⟩
    simpa [mul_comm] using
      (geometryCoefficientB_mul_variableB p I' q).symm
  have variableC_dvd :
      geometryVariableC I'' q ∣ p.totalC q.2.2 := by
    refine ⟨geometryCoefficientC p I'' q, ?_⟩
    simpa [mul_comm] using
      (geometryCoefficientC_mul_variableC p I'' q).symm
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact (hab.coprime_dvd_left coefficientA_dvd).coprime_dvd_right
      coefficientB_dvd
  · exact (hac.coprime_dvd_left coefficientA_dvd).coprime_dvd_right
      coefficientC_dvd
  · exact (hbc.coprime_dvd_left coefficientB_dvd).coprime_dvd_right
      coefficientC_dvd
  · exact (hab.coprime_dvd_left variableA_dvd).coprime_dvd_right
      variableB_dvd
  · exact (hac.coprime_dvd_left variableA_dvd).coprime_dvd_right
      variableC_dvd
  · exact (hbc.coprime_dvd_left variableB_dvd).coprime_dvd_right
      variableC_dvd

/-- The strict source-paper box inherits the same stronger pairwise
primitivity from the existing endpoint-inclusive box. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5ff8583109ed0814dd13368901e9eee6f3f8c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
