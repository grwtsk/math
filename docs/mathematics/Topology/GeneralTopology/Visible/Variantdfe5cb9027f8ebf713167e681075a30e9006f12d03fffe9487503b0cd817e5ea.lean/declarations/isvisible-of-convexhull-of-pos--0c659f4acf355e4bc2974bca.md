# IsVisible.of_convexHull_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c3941cd-a9ac-cd1e-a9e1-48b3c241010d",
  "kind": "lemma",
  "lexical_name": "IsVisible.of_convexHull_of_pos",
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
  "slug": "isvisible-of-convexhull-of-pos--0c659f4acf355e4bc2974bca",
  "source": {
    "blob": "4e746a4d69728a1015a3ad30fddfdc0c1e3f11ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c659f4acf355e4bc2974bca89d13ce2fc35e33d81b44d72905daa2358e35113",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c3941cd-a9ac-cd1e-a9e1-48b3c241010d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsVisible.of_convexHull_of_pos {ι : Type*} {t : Finset ι} {a : ι → V} {w : ι → 𝕜}
    (hw₀ : ∀ i ∈ t, 0 ≤ w i) (hw₁ : ∑ i ∈ t, w i = 1) (ha : ∀ i ∈ t, a i ∈ s)
    (hx : x ∉ convexHull 𝕜 s) (hw : IsVisible 𝕜 (convexHull 𝕜 s) x (∑ i ∈ t, w i • a i)) {i : ι}
    (hi : i ∈ t) (hwi : 0 < w i) : IsVisible 𝕜 (convexHull 𝕜 s) x (a i) := by
  classical
  obtain hwi | hwi : w i = 1 ∨ w i < 1 := eq_or_lt_of_le <| (single_le_sum hw₀ hi).trans_eq hw₁
  · convert! hw
    rw [← one_smul 𝕜 (a i), ← hwi, eq_comm]
    rw [← hwi, ← sub_eq_zero, ← sum_erase_eq_sub hi,
      sum_eq_zero_iff_of_nonneg fun j hj ↦ hw₀ _ <| erase_subset _ _ hj] at hw₁
    refine sum_eq_single _ (fun j hj hji ↦ ?_) (by simp [hi])
    rw [hw₁ _ <| mem_erase.2 ⟨hji, hj⟩, zero_smul]
  rintro _ hε ⟨⟨ε, ⟨hε₀, hε₁⟩, rfl⟩, h⟩
  replace hε₀ : 0 < ε := hε₀.lt_of_ne <| by rintro rfl; simp at h
  replace hε₁ : ε < 1 := hε₁.lt_of_ne <| by rintro rfl; simp at h
  have : 0 < 1 - ε := by linarith
  have hwi : 0 < 1 - w i := by linarith
  refine hw (z := lineMap x (∑ j ∈ t, w j • a j) ((w i)⁻¹ / ((1 - ε) / ε + (w i)⁻¹)))
    ?_ <| sbtw_lineMap_iff.2 ⟨(ne_of_mem_of_not_mem ((convex_convexHull ..).sum_mem hw₀ hw₁
    fun i hi ↦ subset_convexHull _ _ <| ha _ hi) hx).symm, by positivity,
    (div_lt_one <| by positivity).2 ?_⟩
  · have : Wbtw 𝕜
      (lineMap x (a i) ε)
      (lineMap x (∑ j ∈ t, w j • a j) ((w i)⁻¹ / ((1 - ε) / ε + (w i)⁻¹)))
      (∑ j ∈ t.erase i, (w j / (1 - w i)) • a j) := by
      refine ⟨((1 - w i) / w i) / ((1 - ε) / ε + (1 - w i) / w i + 1), ⟨by positivity, ?_⟩, ?_⟩
      · refine (div_le_one <| by positivity).2 ?_
        calc
          (1 - w i) / w i = 0 + (1 - w i) / w i + 0 := by simp
          _ ≤ (1 - ε) / ε + (1 - w i) / w i + 1 := by gcongr <;> positivity
      have :
        w i • a i + (1 - w i) • ∑ j ∈ t.erase i, (w j / (1 - w i)) • a j = ∑ j ∈ t, w j • a j := by
        rw [smul_sum]
        simp_rw [smul_smul, mul_div_cancel₀ _ hwi.ne']
        exact add_sum_erase _ (fun i ↦ w i • a i) hi
      simp_rw [lineMap_apply_module, ← this]
      match_scalars <;> field
    refine (convex_convexHull _ _).mem_of_wbtw this hε <| (convex_convexHull _ _).sum_mem ?_ ?_ ?_
    · intro j hj
      positivity [hw₀ j <| erase_subset _ _ hj]
    · rw [← sum_div, sum_erase_eq_sub hi, hw₁, div_self hwi.ne']
    · exact fun j hj ↦ subset_convexHull _ _ <| ha _ <| erase_subset _ _ hj
  · exact lt_add_of_pos_left _ <| by positivity

variable [TopologicalSpace 𝕜] [OrderTopology 𝕜] [TopologicalSpace V] [IsTopologicalAddGroup V]
  [ContinuousSMul 𝕜 V]

/-- One cannot see any point in the interior of a set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e746a4d69728a1015a3ad30fddfdc0c1e3f11ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
