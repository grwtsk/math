# not_tendsto_diracProba_of_not_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6db515be-2d3a-80a2-e935-2f05000f32f7",
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
  "slug": "not-tendsto-diracproba-of-not-tendsto--52cf06a054db69fb35d868f9",
  "source": {
    "blob": "0de6275ad78f936ad4c7dbfbf6fa838b71a91e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52cf06a054db69fb35d868f96d93d2a42c60966ee82b236b6649a62d3ad6ee50",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6db515be-2d3a-80a2-e935-2f05000f32f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_tendsto_diracProba_of_not_tendsto [CompletelyRegularSpace X] {x : X} (L : Filter X)
    (h : ¬ Tendsto id L (𝓝 x)) :
    ¬ Tendsto diracProba L (𝓝 (diracProba x)) := by
  obtain ⟨U, U_nhds, hU⟩ : ∃ U, U ∈ 𝓝 x ∧ ∃ᶠ x in L, x ∉ U := by
    contrapose! h
    exact h
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
  rw [f_vanishes_outside x (compl_subset_compl.mpr interior_subset x_notin_U)]
  simp only [ENNReal.coe_zero, mem_Ioi, lt_self_iff_false, not_false_eq_true]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0de6275ad78f936ad4c7dbfbf6fa838b71a91e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
