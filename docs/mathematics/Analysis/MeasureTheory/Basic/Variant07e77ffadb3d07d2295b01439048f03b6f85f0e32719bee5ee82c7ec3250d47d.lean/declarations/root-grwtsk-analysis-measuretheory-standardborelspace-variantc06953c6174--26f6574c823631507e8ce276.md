# _root_.GRWTSK.Analysis.MeasureTheory.StandardBorelSpace.Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.MeasurableSet.image_of_measurable_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01251cd2-b4de-158d-8698-cf27be05213f",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.StandardBorelSpace.Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.MeasurableSet.image_of_measurable_injOn",
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
  "slug": "root-grwtsk-analysis-measuretheory-standardborelspace-variantc06953c6174--26f6574c823631507e8ce276",
  "source": {
    "blob": "65a2dd60c6688280f43a9ce508bf249a3a052adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 854,
    "line": 832,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant07e77ffadb3d07d2295b01439048f03b6f85f0e32719bee5ee82c7ec3250d47d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26f6574c823631507e8ce276d5caca0c9c28972efc346a63311d0530ec6a7fd2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant07e77ffadb3d07d2295b01439048f03b6f85f0e32719bee5ee82c7ec3250d47d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01251cd2-b4de-158d-8698-cf27be05213f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 832–854.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.StandardBorelSpace.Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.MeasurableSet.image_of_measurable_injOn {f : γ → α}
    [MeasurableSpace.CountablySeparated α]
    [MeasurableSpace γ] [StandardBorelSpace γ]
    (hs : MeasurableSet s) (f_meas : Measurable f) (f_inj : InjOn f s) :
    MeasurableSet (f '' s) := by
  letI := upgradeStandardBorel γ
  let tγ : TopologicalSpace γ := inferInstance
  rcases exists_opensMeasurableSpace_of_countablySeparated α with ⟨τ, _, _, _⟩
  -- for a finer Polish topology, `f` is continuous. Therefore, one may apply the corresponding
  -- result for continuous maps.
  obtain ⟨t', t't, f_cont, t'_polish⟩ :
      ∃ t' : TopologicalSpace γ, t' ≤ tγ ∧ @Continuous γ _ t' _ f ∧ @PolishSpace γ t' :=
    f_meas.exists_continuous
  have M : MeasurableSet[@borel γ t'] s :=
    @Continuous.measurable γ γ t' (@borel γ t')
      (@BorelSpace.opensMeasurable γ t' (@borel γ t') (@BorelSpace.mk _ _ (borel γ) rfl))
      tγ _ _ _ (continuous_id_of_le t't) s hs
  exact
    @MeasurableSet.image_of_continuousOn_injOn γ
      _ _ _ _  s f _ t' t'_polish (@borel γ t') (@BorelSpace.mk _ _ (borel γ) rfl)
      M (@Continuous.continuousOn γ _ t' _ f s f_cont) f_inj

/-- An injective continuous function on a Polish space is a measurable embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant07e77ffadb3d07d2295b01439048f03b6f85f0e32719bee5ee82c7ec3250d47d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant07e77ffadb3d07d2295b01439048f03b6f85f0e32719bee5ee82c7ec3250d47d.lean#L832).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65a2dd60c6688280f43a9ce508bf249a3a052adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
