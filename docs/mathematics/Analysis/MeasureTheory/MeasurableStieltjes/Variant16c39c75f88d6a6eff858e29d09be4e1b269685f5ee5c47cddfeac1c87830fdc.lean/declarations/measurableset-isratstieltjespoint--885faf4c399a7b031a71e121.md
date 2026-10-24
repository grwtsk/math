# measurableSet_isRatStieltjesPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96b0e82c-5545-b80b-27b9-fe5e10ada811",
  "kind": "lemma",
  "lexical_name": "measurableSet_isRatStieltjesPoint",
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
  "slug": "measurableset-isratstieltjespoint--885faf4c399a7b031a71e121",
  "source": {
    "blob": "4e73bd687c636dd9b9bed90056a339a400e2080d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 91,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:885faf4c399a7b031a71e121b6bc0f7a7c5573a1e7b3363435f70038fa2f7235",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96b0e82c-5545-b80b-27b9-fe5e10ada811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_isRatStieltjesPoint [MeasurableSpace α] (hf : Measurable f) :
    MeasurableSet {a | IsRatStieltjesPoint f a} := by
  have h1 : MeasurableSet {a | Monotone (f a)} := by
    change MeasurableSet {a | ∀ q r (_ : q ≤ r), f a q ≤ f a r}
    simp_rw [Set.setOf_forall]
    refine MeasurableSet.iInter (fun q ↦ ?_)
    refine MeasurableSet.iInter (fun r ↦ ?_)
    refine MeasurableSet.iInter (fun _ ↦ ?_)
    exact measurableSet_le hf.eval hf.eval
  have h2 : MeasurableSet {a | Tendsto (f a) atTop (𝓝 1)} :=
    measurableSet_tendsto _ (fun q ↦ hf.eval)
  have h3 : MeasurableSet {a | Tendsto (f a) atBot (𝓝 0)} :=
    measurableSet_tendsto _ (fun q ↦ hf.eval)
  have h4 : MeasurableSet {a | ∀ t : ℚ, ⨅ r : Ioi t, f a r = f a t} := by
    rw [Set.setOf_forall]
    refine MeasurableSet.iInter (fun q ↦ ?_)
    exact measurableSet_eq_fun (.iInf fun _ ↦ hf.eval) hf.eval
  suffices {a | IsRatStieltjesPoint f a}
      = ({a | Monotone (f a)} ∩ {a | Tendsto (f a) atTop (𝓝 1)} ∩ {a | Tendsto (f a) atBot (𝓝 0)}
        ∩ {a | ∀ t : ℚ, ⨅ r : Ioi t, f a r = f a t}) by
    rw [this]
    exact (((h1.inter h2).inter h3).inter h4)
  ext a
  simp only [mem_setOf_eq, mem_inter_iff]
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · exact ⟨⟨⟨h.mono, h.tendsto_atTop_one⟩, h.tendsto_atBot_zero⟩, h.iInf_rat_gt_eq⟩
  · exact ⟨h.1.1.1, h.1.1.2, h.1.2, h.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e73bd687c636dd9b9bed90056a339a400e2080d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
