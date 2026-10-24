# measurePreserving_equivPiIoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb27c723-f509-4e67-d27e-7815c43a7559",
  "kind": "lemma",
  "lexical_name": "measurePreserving_equivPiIoc",
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
  "slug": "measurepreserving-equivpiioc--03338f68e6ed82c545f595ea",
  "source": {
    "blob": "234dad08a9037aee2d31e93f1493062d5ea4dd7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AddCircleMulti/Variant4adbc5720e6711af5c72f8f9ed330d6f94a62cf67bf0da2bf605c1bdae8ee9f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03338f68e6ed82c545f595ea72cc4f9a6bce7c813125fc6db37b826c847b6621",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AddCircleMulti/Variant4adbc5720e6711af5c72f8f9ed330d6f94a62cf67bf0da2bf605c1bdae8ee9f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb27c723-f509-4e67-d27e-7815c43a7559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurePreserving_equivPiIoc :
    MeasurePreserving (measurableEquivPiIoc a) volume (Measure.comap Subtype.val volume) := by
  refine (⟨(measurableEquivPiIoc a).symm.measurable, symm ?_⟩ :
    MeasurePreserving (measurableEquivPiIoc a).symm _ _).symm
  have := Measure.map_map (μ := volume.comap Subtype.val) (.of_eval
    (f := fun (x : d → ℝ) => (fun i => x i : UnitAddTorus d))
    (fun i => AddCircle.measurable_mk'.comp (measurable_pi_apply i)))
    measurable_subtype_coe (α := {x : d → ℝ // ∀ i, x i ∈ Ioc (a i) (a i + 1)})
  simp only [Function.comp_def] at this
  simp_rw [coe_symm_measurableEquivPiIoc, ← this]
  convert! (measurePreserving_pi _ _ (fun i => AddCircle.measurePreserving_mk 1 (a i))).map_eq.symm
  · simp [volume, AddCircle.haarAddCircle]
  · convert!
    (map_comap_subtype_coe (MeasurableSet.univ_pi' (fun i => measurableSet_Ioc (a := a i))) volume)
    convert! (Measure.restrict_pi_pi (fun i => volume) (fun i => Ioc (a i) (a i + 1))).symm
    grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AddCircleMulti/Variant4adbc5720e6711af5c72f8f9ed330d6f94a62cf67bf0da2bf605c1bdae8ee9f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AddCircleMulti/Variant4adbc5720e6711af5c72f8f9ed330d6f94a62cf67bf0da2bf605c1bdae8ee9f4.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `234dad08a9037aee2d31e93f1493062d5ea4dd7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
