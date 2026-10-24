# not_tendsto_diracProba_of_not_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d82cc52-a883-3f5d-3c1e-da1d0760c9a1",
  "kind": "lemma",
  "lexical_name": "not_tendsto_diracProba_of_not_tendsto",
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
  "slug": "not-tendsto-diracproba-of-not-tendsto--a300b41a8dbd06d12793e76d",
  "source": {
    "blob": "45d512a1a20b2bd016de2c132e19daa96d384fd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 94,
    "path": "GRWTSK/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a300b41a8dbd06d12793e76ddf3dbb6db3fde015e5e8d6540ae3810750c47fa3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d82cc52-a883-3f5d-3c1e-da1d0760c9a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_tendsto_diracProba_of_not_tendsto [CompletelyRegularSpace X] {x : X} (L : Filter X)
    (h : ¬ Tendsto id L (𝓝 x)) :
    ¬ Tendsto diracProba L (𝓝 (diracProba x)) := by
  obtain ⟨U, U_nhds, hU⟩ : ∃ U, U ∈ 𝓝 x ∧ ∃ᶠ x in L, x ∉ U := by
    by_contra! con
    apply h
    intro U U_nhds
    simpa only [not_frequently, not_not] using con U U_nhds
  have Uint_nhds : interior U ∈ 𝓝 x := by simpa only [interior_mem_nhds] using U_nhds
  obtain ⟨f, fx_eq_one, f_vanishes_outside⟩ :=
    CompletelyRegularSpace.exists_BCNN isOpen_interior.isClosed_compl
      (by simpa only [mem_compl_iff, not_not] using mem_of_mem_nhds Uint_nhds)
  rw [ProbabilityMeasure.tendsto_iff_forall_lintegral_tendsto, not_forall]
  use f
  simp only [diracProba, ProbabilityMeasure.coe_mk, fx_eq_one,
             lintegral_dirac' _ (measurable_coe_nnreal_ennreal_iff.mpr f.continuous.measurable)]
  apply not_tendsto_iff_exists_frequently_notMem.mpr
  refine ⟨Ioi 0, Ioi_mem_nhds (by simp only [ENNReal.coe_one, zero_lt_one]),
          hU.mp (Eventually.of_forall ?_)⟩
  intro x x_notin_U
  rw [f_vanishes_outside x
        (compl_subset_compl.mpr (show interior U ⊆ U from interior_subset) x_notin_U)]
  simp only [ENNReal.coe_zero, mem_Ioi, lt_self_iff_false, not_false_eq_true]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45d512a1a20b2bd016de2c132e19daa96d384fd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
