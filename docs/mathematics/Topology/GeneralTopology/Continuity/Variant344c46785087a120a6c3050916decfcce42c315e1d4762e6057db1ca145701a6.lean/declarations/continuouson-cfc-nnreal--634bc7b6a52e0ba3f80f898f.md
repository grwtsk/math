# continuousOn_cfcₙ_nnreal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8adee68b-8cdb-9f3e-554f-dcde5c8ef94a",
  "kind": "theorem",
  "lexical_name": "continuousOn_cfcₙ_nnreal",
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
  "slug": "continuouson-cfc-nnreal--634bc7b6a52e0ba3f80f898f",
  "source": {
    "blob": "7f65e7384596d418738f6bc1f56a23ad60c5657a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 994,
    "line": 971,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:634bc7b6a52e0ba3f80f898ff50f463a3f5342170620aa28b9cdaf88fefb326f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8adee68b-8cdb-9f3e-554f-dcde5c8ef94a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 971–994.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_cfcₙ_nnreal {s : Set ℝ≥0} (hs : IsCompact s) (f : ℝ≥0 → ℝ≥0)
    (hf : ContinuousOn f s := by cfc_cont_tac) (hf0 : f 0 = 0 := by cfc_zero_tac) :
    ContinuousOn (cfcₙ f · : A → A) {a : A | 0 ≤ a ∧ quasispectrum ℝ≥0 a ⊆ s} := by
  have : {a : A | 0 ≤ a ∧ quasispectrum ℝ≥0 a ⊆ s}.EqOn (cfcₙ f)
      (cfcₙ (fun x : ℝ ↦ f x.toNNReal)) :=
    fun a ha ↦ cfcₙ_nnreal_eq_real _ _ ha.1
  refine ContinuousOn.congr ?_ this
  replace hf : ContinuousOn (fun x ↦ f x.toNNReal : ℝ → ℝ) (NNReal.toReal '' s) := by
    apply hf.ofReal_map_toNNReal
    rw [Set.mapsTo_image_iff]
    intro x hx
    simpa
  refine continuousOn_cfcₙ A (hs.image NNReal.continuous_coe) _ hf |>.mono fun a ha ↦ ?_
  simp only [Set.mem_ofPred_eq, nonneg_iff_isSelfAdjoint_and_quasispectrumRestricts] at ha ⊢
  refine ⟨ha.1.1, ?_⟩
  rw [← ha.1.2.algebraMap_image]
  exact Set.image_mono ha.2

open UniformOnFun in
/-- Let `s : Set ℝ≥0` be a compact set and consider pairs `(f, a) : (ℝ≥0 → ℝ≥0) × A` where `f` is
continuous on `s`, maps zero to itself, `spectrum ℝ≥0 a ⊆ s` and `0 ≤ a`.

Then `cfcₙ` is jointly continuous in both variables (i.e., continuous in its uncurried form) on this
set of pairs when the function space is equipped with the topology of uniform convergence on `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean#L971).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f65e7384596d418738f6bc1f56a23ad60c5657a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
