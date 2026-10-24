# levyProkhorovDist_metricSpace_probabilityMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce57adabe58f2a5eb23ec181d148adc942880b7ccef9120283a817b8dcd84a9e",
  "kind": "instance",
  "lexical_name": "levyProkhorovDist_metricSpace_probabilityMeasure",
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
  "slug": "levyprokhorovdist-metricspace-probabilitymeasure--0fbe9dd49fa80a82db8a94de",
  "source": {
    "blob": "122cb03ed4e30f9bd309bbab3335759e5d4091df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 279,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fbe9dd49fa80a82db8a94dea259480b56a4748ce51faec0d2f1a2d696d107c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce57adabe58f2a5eb23ec181d148adc942880b7ccef9120283a817b8dcd84a9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance levyProkhorovDist_metricSpace_probabilityMeasure [BorelSpace Ω] :
    MetricSpace (LevyProkhorov (ProbabilityMeasure Ω)) where
  eq_of_dist_eq_zero := by
    intro μ ν h
    apply (LevyProkhorov.equiv _).injective
    apply ProbabilityMeasure.toMeasure_injective
    apply ext_of_generate_finite _ ?_ isPiSystem_isClosed ?_ (by simp)
    · rw [BorelSpace.measurable_eq (α := Ω), borel_eq_generateFrom_isClosed]
    · intro A A_closed
      apply measure_eq_measure_of_levyProkhorovEDist_eq_zero_of_isClosed
      · simpa only [levyProkhorovEDist_ne_top μ.toMeasure ν.toMeasure, mem_setOf_eq,
                    or_false, ne_eq, zero_ne_top, not_false_eq_true, toReal_zero]
          using (toReal_eq_zero_iff _).mp h
      · exact A_closed
      · exact ⟨1, Real.zero_lt_one, measure_ne_top _ _⟩
      · exact ⟨1, Real.zero_lt_one, measure_ne_top _ _⟩

/-- A simple sufficient condition for bounding `levyProkhorovEDist` between probability measures
from above. The condition involves only one of two natural bounds, the other bound is for free. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `122cb03ed4e30f9bd309bbab3335759e5d4091df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
