# epi_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea761c42e0ec29f78f1314217b0b11c9bb234360",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98fbb29e-c436-7df6-87ad-f03559ec4a4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:155a262f-dcdc-0119-1f4f-3111d32445c7",
  "kind": "lemma",
  "lexical_name": "epi_iff_surjective",
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
  "slug": "epi-iff-surjective--b9c03bfe2df385972e8f7cc2",
  "source": {
    "blob": "ea761c42e0ec29f78f1314217b0b11c9bb234360",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 52,
    "path": "GRWTSK/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9c03bfe2df385972e8f7cc23f8b0e02285abc66266c0d85bc23af1feefe45e9",
  "verification": {
    "reference": "docs/verification/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:155a262f-dcdc-0119-1f4f-3111d32445c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_iff_surjective {X Y : Stonean} (f : X ⟶ Y) :
    Epi f ↔ Function.Surjective f := by
  constructor
  · dsimp [Function.Surjective]
    contrapose!
    rintro ⟨y, hy⟩ h
    let C := Set.range f
    have hC : IsClosed C := (isCompact_range f.continuous).isClosed
    let U := Cᶜ
    have hyU : y ∈ U := by
      refine' Set.mem_compl _
      rintro ⟨y', hy'⟩
      exact hy y' hy'
    have hUy : U ∈ nhds y := hC.compl_mem_nhds hyU
    haveI : TotallyDisconnectedSpace ((forget CompHaus).obj (toCompHaus.obj Y)) :=
      show TotallyDisconnectedSpace Y from inferInstance
    obtain ⟨V, hV, hyV, hVU⟩ := isTopologicalBasis_clopen.mem_nhds_iff.mp hUy
    classical
    let g : Y ⟶ Stonean.two :=
      ⟨(LocallyConstant.ofClopen hV).map ULift.up, LocallyConstant.continuous _⟩
    let h : Y ⟶ Stonean.two := ⟨fun _ => ⟨1⟩, continuous_const⟩
    have H : h = g := by
      rw [← cancel_epi f]
      apply ContinuousMap.ext
      intro x
      apply ULift.ext
      change 1 =  _
      dsimp [LocallyConstant.ofClopen]
      -- BUG: Should not have to provide instance `(Stonean.instTopologicalSpace Y)` explicitely
      rw [comp_apply, @ContinuousMap.coe_mk _ _ (Stonean.instTopologicalSpace Y),
      Function.comp_apply, if_neg]
      refine mt (hVU ·) ?_
      simp only [Set.mem_compl_iff, Set.mem_range, not_exists, not_forall, not_not]
      exact ⟨x, rfl⟩
    apply_fun fun e => (e y).down at H
    dsimp only [LocallyConstant.ofClopen] at H
    change 1 = ite _ _ _ at H
    rw [if_pos hyV] at H
    exact top_ne_bot H
  · intro (h : Function.Surjective (toCompHaus.map f))
    rw [← CompHaus.epi_iff_surjective] at h
    constructor
    intro W a b h
    apply Functor.map_injective toCompHaus
    apply_fun toCompHaus.map at h
    simp only [Functor.map_comp] at h
    rwa [← cancel_epi (toCompHaus.map f)]

/-!
This section contains exclusively technical definitions and results that are used
in the proof of `Stonean.effectiveEpiFamily_of_jointly_surjective`.
-/
namespace EffectiveEpiFamily

/-- Implementation: Abbreviation for the fully faithful functor `Stonean ⥤ CompHaus`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/EffectiveEpi/Variant91d22f8a26748ff36956732555c16499e76476512f0ee57f823b2962d3c6b7a2.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea761c42e0ec29f78f1314217b0b11c9bb234360` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
