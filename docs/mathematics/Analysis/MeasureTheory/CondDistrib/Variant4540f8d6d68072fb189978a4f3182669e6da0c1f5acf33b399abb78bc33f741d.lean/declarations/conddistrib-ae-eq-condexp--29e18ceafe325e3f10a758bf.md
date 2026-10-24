# condDistrib_ae_eq_condexp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:313232ca-c496-84e1-8461-565ab532362b",
  "kind": "theorem",
  "lexical_name": "condDistrib_ae_eq_condexp",
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
  "slug": "conddistrib-ae-eq-condexp--29e18ceafe325e3f10a758bf",
  "source": {
    "blob": "c82bcd2c96aeab904421d9ac11eeb468e5f138b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 203,
    "path": "GRWTSK/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29e18ceafe325e3f10a758bf9c4d1c4d79baa1e9bfcfd53f43b388d088a02b57",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:313232ca-c496-84e1-8461-565ab532362b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condDistrib_ae_eq_condexp (hX : Measurable X) (hY : Measurable Y) (hs : MeasurableSet s) :
    (fun a => (condDistrib Y X μ (X a) s).toReal) =ᵐ[μ] μ⟦Y ⁻¹' s|mβ.comap X⟧ := by
  refine' ae_eq_condexp_of_forall_set_integral_eq hX.comap_le _ _ _ _
  · exact (integrable_const _).indicator (hY hs)
  · exact fun t _ _ => (integrable_toReal_condDistrib hX.aemeasurable hs).integrableOn
  · intro t ht _
    rw [integral_toReal ((measurable_condDistrib hs).mono hX.comap_le le_rfl).aemeasurable
      (eventually_of_forall fun ω => measure_lt_top (condDistrib Y X μ (X ω)) _),
      integral_indicator_const _ (hY hs), Measure.restrict_apply (hY hs), smul_eq_mul, mul_one,
      inter_comm, set_lintegral_condDistrib_of_measurableSet hX hY.aemeasurable hs ht]
  · refine' (Measurable.stronglyMeasurable _).aeStronglyMeasurable'
    exact @Measurable.ennreal_toReal _ (mβ.comap X) _ (measurable_condDistrib hs)
#align probability_theory.cond_distrib_ae_eq_condexp ProbabilityTheory.condDistrib_ae_eq_condexp

/-- The conditional expectation of a function `f` of the product `(X, Y)` is almost everywhere equal
to the integral of `y ↦ f(X, y)` against the `condDistrib` kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c82bcd2c96aeab904421d9ac11eeb468e5f138b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
