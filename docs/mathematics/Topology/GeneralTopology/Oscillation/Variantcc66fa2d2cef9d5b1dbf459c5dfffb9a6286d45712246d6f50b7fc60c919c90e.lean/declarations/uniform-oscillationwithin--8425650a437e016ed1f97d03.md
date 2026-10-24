# uniform_oscillationWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a32aec3b3fa69ef0f35ce3f4af8e590d0cca858",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80b486b9-5a66-21fe-99d7-cb49fdc92dcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ace3bce5-5ff5-094d-453c-3ddeb575df49",
  "kind": "theorem",
  "lexical_name": "uniform_oscillationWithin",
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
  "slug": "uniform-oscillationwithin--8425650a437e016ed1f97d03",
  "source": {
    "blob": "7a32aec3b3fa69ef0f35ce3f4af8e590d0cca858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8425650a437e016ed1f97d03212a40aba2ad650d16c825210436e01f3e900394",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ace3bce5-5ff5-094d-453c-3ddeb575df49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_oscillationWithin (comp : IsCompact K) (hK : ∀ x ∈ K, oscillationWithin f D x < ε) :
    ∃ δ > 0, ∀ x ∈ K, diam (f '' (ball x (ENNReal.ofReal δ) ∩ D)) ≤ ε := by
  let S := fun r ↦ { x : E | ∃ (a : ℝ), (a > r ∧ diam (f '' (ball x (ENNReal.ofReal a) ∩ D)) ≤ ε) }
  have S_open : ∀ r > 0, IsOpen (S r) := by
    refine fun r _ ↦ isOpen_iff.mpr fun x ⟨a, ar, ha⟩ ↦
      ⟨ENNReal.ofReal ((a - r) / 2), by simp [ar], ?_⟩
    refine fun y hy ↦ ⟨a - (a - r) / 2, by linarith,
      le_trans (diam_mono (image_mono fun z hz ↦ ?_)) ha⟩
    refine ⟨lt_of_le_of_lt (edist_triangle z y x) (lt_of_lt_of_eq (ENNReal.add_lt_add hz.1 hy) ?_),
      hz.2⟩
    rw [← ofReal_add (by linarith) (by linarith), sub_add_cancel]
  have S_cover : K ⊆ ⋃ r > 0, S r := by
    intro x hx
    have : oscillationWithin f D x < ε := hK x hx
    simp only [oscillationWithin, Filter.mem_map, iInf_lt_iff] at this
    obtain ⟨n, hn₁, hn₂⟩ := this
    obtain ⟨r, r0, hr⟩ := mem_nhdsWithin_iff.1 hn₁
    simp only [gt_iff_lt, mem_iUnion, exists_prop]
    have : ∀ r', (ENNReal.ofReal r') ≤ r → diam (f '' (ball x (ENNReal.ofReal r') ∩ D)) ≤ ε := by
      intro r' hr'
      refine le_trans (diam_mono (subset_trans ?_ (image_subset_iff.2 hr))) (le_of_lt hn₂)
      exact image_mono (inter_subset_inter_left D (ball_subset_ball hr'))
    by_cases r_top : r = ⊤
    · use 1, one_pos, 2, one_lt_two, this 2 (by simp only [r_top, le_top])
    · obtain ⟨r', hr'⟩ := exists_between (toReal_pos (ne_of_gt r0) r_top)
      use r', hr'.1, r.toReal, hr'.2, this r.toReal ofReal_toReal_le
  have S_antitone : ∀ (r₁ r₂ : ℝ), r₁ ≤ r₂ → S r₂ ⊆ S r₁ :=
    fun r₁ r₂ hr x ⟨a, ar₂, ha⟩ ↦ ⟨a, lt_of_le_of_lt hr ar₂, ha⟩
  obtain ⟨δ, δ0, hδ⟩ : ∃ r > 0, K ⊆ S r := by
    obtain ⟨T, Tb, Tfin, hT⟩ := comp.elim_finite_subcover_image S_open S_cover
    by_cases T_nonempty : T.Nonempty
    · use Tfin.isWF.min T_nonempty, Tb (Tfin.isWF.min_mem T_nonempty)
      intro x hx
      obtain ⟨r, hr⟩ := mem_iUnion.1 (hT hx)
      simp only [mem_iUnion, exists_prop] at hr
      exact (S_antitone _ r (IsWF.min_le Tfin.isWF T_nonempty hr.1)) hr.2
    · rw [not_nonempty_iff_eq_empty] at T_nonempty
      use 1, one_pos, subset_trans hT (by simp [T_nonempty])
  use δ, δ0
  intro x xK
  obtain ⟨a, δa, ha⟩ := hδ xK
  exact (diam_mono <| image_mono <| inter_subset_inter_left D <| ball_subset_ball <|
    coe_le_coe.2 <| Real.toNNReal_mono (le_of_lt δa)).trans ha

/-- If `oscillation f x < ε` at every `x` in a compact set `K`, then there exists `δ > 0` such
that the oscillation of `f` on `ball x δ` is less than `ε` for every `x` in `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a32aec3b3fa69ef0f35ce3f4af8e590d0cca858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
