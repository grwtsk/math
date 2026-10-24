# exists_isMIntegralCurve_of_isMIntegralCurveOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e4a7e2723fe6ef8e7f9deb69d3a2a274fbcc425",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba762bb4-2866-0151-4c18-5b5eb40b25f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d98c739a-5bfe-2624-f18f-7860f045856a",
  "kind": "lemma",
  "lexical_name": "exists_isMIntegralCurve_of_isMIntegralCurveOn",
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
  "slug": "exists-ismintegralcurve-of-ismintegralcurveon--f37561993ec6edb079c68af6",
  "source": {
    "blob": "2e4a7e2723fe6ef8e7f9deb69d3a2a274fbcc425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 167,
    "path": "GRWTSK/Geometry/DifferentialGeometry/UniformTime/Variant50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f37561993ec6edb079c68af60d51ea5a5f5474b36b9c44addb0cadf4971dc988",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/UniformTime/Variant50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d98c739a-5bfe-2624-f18f-7860f045856a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isMIntegralCurve_of_isMIntegralCurveOn [BoundarylessManifold I M]
    {v : (x : M) → TangentSpace I x}
    (hv : CMDiff 1 (fun x ↦ (⟨x, v x⟩ : TangentBundle I M)))
    {ε : ℝ} (hε : 0 < ε) (h : ∀ x : M, ∃ γ : ℝ → M, γ 0 = x ∧ IsMIntegralCurveOn γ v (Ioo (-ε) ε))
    (x : M) : ∃ γ : ℝ → M, γ 0 = x ∧ IsMIntegralCurve γ v := by
  let s := { a | ∃ γ, γ 0 = x ∧ IsMIntegralCurveOn γ v (Ioo (-a) a) }
  suffices hbdd : ¬BddAbove s by
    rw [not_bddAbove_iff] at hbdd
    rw [exists_isMIntegralCurve_iff_exists_isMIntegralCurveOn_Ioo hv]
    intro a
    obtain ⟨y, ⟨γ, hγ1, hγ2⟩, hlt⟩ := hbdd a
    exact ⟨γ, hγ1, hγ2.mono <| Ioo_subset_Ioo (neg_le_neg hlt.le) hlt.le⟩
  intro hbdd
  set asup := sSup s with hasup
  -- we will obtain two integral curves, one centred at some `t₀ > 0` with
  -- `0 ≤ asup - ε < t₀ < asup`; let `t₀ = asup - ε / 2`
  -- another centred at 0 with domain up to `a ∈ S` with `t₀ < a < asup`
  obtain ⟨a, ha, hlt⟩ := Real.add_neg_lt_sSup (⟨ε, h x⟩ : Set.Nonempty s) (ε := - (ε / 2))
    (by rw [neg_lt, neg_zero]; exact half_pos hε)
  rw [mem_ofPred] at ha
  rw [← hasup, ← sub_eq_add_neg] at hlt
  -- integral curve defined on `Ioo (-a) a`
  obtain ⟨γ, h0, hγ⟩ := ha
  -- integral curve starting at `-(asup - ε / 2)` with radius `ε`
  obtain ⟨γ1_aux, h1_aux, hγ1⟩ := h (γ (-(asup - ε / 2)))
  rw [← isMIntegralCurveOn_comp_add (dt := asup - ε / 2)] at hγ1
  set γ1 := γ1_aux ∘ (· + (asup - ε / 2)) with γ1_def
  have heq1 : γ1 (-(asup - ε / 2)) = γ (-(asup - ε / 2)) := by simp [γ1_def, h1_aux]
  -- integral curve starting at `asup - ε / 2` with radius `ε`
  obtain ⟨γ2_aux, h2_aux, hγ2⟩ := h (γ (asup - ε / 2))
  rw [← isMIntegralCurveOn_comp_sub (dt := asup - ε / 2)] at hγ2
  set γ2 := γ2_aux ∘ (· - (asup - ε / 2)) with γ2_def
  have heq2 : γ2 (asup - ε / 2) = γ (asup - ε / 2) := by simp [γ2_def, h2_aux]
  -- rewrite shifted Ioo as Ioo
  simp_rw [Set.mem_Ioo, ← sub_lt_iff_lt_add, ← lt_sub_iff_add_lt, ← Set.mem_Ioo] at hγ1
  simp_rw [Set.mem_Ioo, lt_sub_iff_add_lt, sub_lt_iff_lt_add, ← Set.mem_Ioo] at hγ2
  -- to help `linarith`
  have hεle : ε ≤ asup := le_csSup hbdd (h x)
  -- extend `γ` on the left by `γ1` and on the right by `γ2`
  set γ_ext : ℝ → M := piecewise (Ioo (-(asup + ε / 2)) a)
    (piecewise (Ioo (-a) a) γ γ1) γ2 with γ_ext_def
  have heq_ext : γ_ext 0 = x := by
    rw [γ_ext_def, piecewise, ite_eq_left ⟨by linarith, by linarith⟩, piecewise,
      ite_eq_left ⟨by linarith, by linarith⟩, h0]
  -- `asup + ε / 2` is an element of `s` greater than `asup`, a contradiction
  suffices hext : IsMIntegralCurveOn γ_ext v (Ioo (-(asup + ε / 2)) (asup + ε / 2)) from
    (not_lt.mpr <| le_csSup hbdd ⟨γ_ext, heq_ext, hext⟩) <| lt_add_of_pos_right asup (half_pos hε)
  apply (isMIntegralCurveOn_piecewise (t₀ := asup - ε / 2) hv _ hγ2
      ⟨⟨by linarith, hlt⟩, ⟨by linarith, by linarith⟩⟩
      (by rw [piecewise, ite_eq_left ⟨by linarith, hlt⟩, ← heq2])).mono
    (Ioo_subset_Ioo_union_Ioo le_rfl (by linarith) (by linarith))
  exact (isMIntegralCurveOn_piecewise (t₀ := -(asup - ε / 2)) hv hγ hγ1
      ⟨⟨neg_lt_neg hlt, by linarith⟩, ⟨by linarith, by linarith⟩⟩ heq1.symm).mono
    (union_comm _ _ ▸ Ioo_subset_Ioo_union_Ioo (by linarith) (by linarith) le_rfl)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/UniformTime/Variant50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/UniformTime/Variant50b9021e83108d21b748395df9145ccf05b6eb3908d8cc6f40cbfb15b7d0b9f2.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e4a7e2723fe6ef8e7f9deb69d3a2a274fbcc425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
