# ContDiffWithinAt.isSymmSndFDerivWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4ab4652a30b92ccfd172a3911a1eb77cee60984",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 544,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78040c78-5a5f-3a6d-2abb-615e9dccae34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a32323f9-90eb-d14c-8680-72fadf9f4de4",
  "kind": "theorem",
  "lexical_name": "ContDiffWithinAt.isSymmSndFDerivWithinAt",
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
  "slug": "contdiffwithinat-issymmsndfderivwithinat--e2ab6b97ca85044bf5f69f59",
  "source": {
    "blob": "e4ab4652a30b92ccfd172a3911a1eb77cee60984",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 544,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2ab6b97ca85044bf5f69f590c78c5e66020be276d3dceae9ae58c5f45b37c5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a32323f9-90eb-d14c-8680-72fadf9f4de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffWithinAt.isSymmSndFDerivWithinAt {n : WithTop ℕ∞}
    (hf : ContDiffWithinAt 𝕜 n f s x) (hn : minSmoothness 𝕜 2 ≤ n)
    (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ closure (interior s)) (h'x : x ∈ s) :
    IsSymmSndFDerivWithinAt 𝕜 f s x := by
  /- We argue that, at interior points, the second derivative is symmetric, and moreover by
  continuity it converges to the second derivative at `x`. Therefore, the latter is also
  symmetric. -/
  obtain ⟨m, hm, hmn, m_ne⟩ := exist_minSmoothness_le_ne_infty hn
  rcases (hf.of_le hmn).contDiffOn' le_rfl (by simp [m_ne]) with ⟨u, u_open, xu, hu⟩
  simp only [insert_eq_of_mem h'x] at hu
  have h'u : UniqueDiffOn 𝕜 (s ∩ u) := hs.inter u_open
  obtain ⟨y, hy, y_lim⟩ : ∃ y, (∀ (n : ℕ), y n ∈ interior s) ∧ Tendsto y atTop (𝓝 x) :=
    mem_closure_iff_seq_limit.1 hx
  have L : ∀ᶠ k in atTop, y k ∈ u := y_lim (u_open.mem_nhds xu)
  have I : ∀ᶠ k in atTop, IsSymmSndFDerivWithinAt 𝕜 f s (y k) := by
    filter_upwards [L] with k hk
    have s_mem : s ∈ 𝓝 (y k) := by
      apply mem_of_superset (isOpen_interior.mem_nhds (hy k))
      exact interior_subset
    have : IsSymmSndFDerivAt 𝕜 f (y k) := by
      apply ContDiffAt.isSymmSndFDerivAt _ (n := m) hm
      apply (hu (y k) ⟨(interior_subset (hy k)), hk⟩).contDiffAt
      exact inter_mem s_mem (u_open.mem_nhds hk)
    intro v w
    rw [fderivWithin_fderivWithin_eq_of_mem_nhds s_mem]
    exact this v w
  have A : ContinuousOn (fderivWithin 𝕜 (fderivWithin 𝕜 f s) s) (s ∩ u) := by
    have : ContinuousOn (fderivWithin 𝕜 (fderivWithin 𝕜 f (s ∩ u)) (s ∩ u)) (s ∩ u) :=
      ((hu.fderivWithin h'u (m := 1) (le_minSmoothness.trans hm)).fderivWithin h'u
      (m := 0) le_rfl).continuousOn
    apply this.congr
    intro y hy
    apply fderivWithin_fderivWithin_eq_of_eventuallyEq
    filter_upwards [u_open.mem_nhds hy.2] with z hz
    change (z ∈ s) = (z ∈ s ∩ u)
    aesop
  have B : Tendsto (fun k ↦ fderivWithin 𝕜 (fderivWithin 𝕜 f s) s (y k)) atTop
      (𝓝 (fderivWithin 𝕜 (fderivWithin 𝕜 f s) s x)) := by
    have : Tendsto y atTop (𝓝[s ∩ u] x) := by
      apply tendsto_nhdsWithin_iff.2 ⟨y_lim, ?_⟩
      filter_upwards [L] with k hk using ⟨interior_subset (hy k), hk⟩
    exact (A x ⟨h'x, xu⟩ ).tendsto.comp this
  have C (v w : E) : Tendsto (fun k ↦ fderivWithin 𝕜 (fderivWithin 𝕜 f s) s (y k) v w) atTop
      (𝓝 (fderivWithin 𝕜 (fderivWithin 𝕜 f s) s x v w)) := by
    have : Continuous (fun (A : E →L[𝕜] E →L[𝕜] F) ↦ A v w) := by fun_prop
    exact (this.tendsto _).comp B
  have C' (v w : E) : Tendsto (fun k ↦ fderivWithin 𝕜 (fderivWithin 𝕜 f s) s (y k) w v) atTop
      (𝓝 (fderivWithin 𝕜 (fderivWithin 𝕜 f s) s x v w)) := by
    apply (C v w).congr'
    filter_upwards [I] with k hk using hk v w
  intro v w
  exact tendsto_nhds_unique (C v w) (C' w v)

end IsRCLikeNormedField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4ab4652a30b92ccfd172a3911a1eb77cee60984` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
