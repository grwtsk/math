# _root_.MeasurableSet.image_of_measurable_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9111cc2ee3a579ec232cef8995c9d1c614c23ec4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 824,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26a9af6f-d325-66ab-92c0-eb6925a4c7be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a5e5a87-1d41-20d1-1bcb-5ef971835a00",
  "kind": "theorem",
  "lexical_name": "_root_.MeasurableSet.image_of_measurable_injOn",
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
  "slug": "root-measurableset-image-of-measurable-injon--15a603cbed6b530c65be52de",
  "source": {
    "blob": "9111cc2ee3a579ec232cef8995c9d1c614c23ec4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 846,
    "line": 824,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15a603cbed6b530c65be52de3c37aa03e1598472d3cd8ca59c988213bddd4aab",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a5e5a87-1d41-20d1-1bcb-5ef971835a00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 824–846.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeasurableSet.image_of_measurable_injOn {f : γ → α}
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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.lean#L824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9111cc2ee3a579ec232cef8995c9d1c614c23ec4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
