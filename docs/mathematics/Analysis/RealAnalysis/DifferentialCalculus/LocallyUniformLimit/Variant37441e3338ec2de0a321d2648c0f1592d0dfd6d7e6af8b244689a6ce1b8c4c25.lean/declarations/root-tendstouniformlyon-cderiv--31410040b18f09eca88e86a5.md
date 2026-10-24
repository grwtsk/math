# _root_.TendstoUniformlyOn.cderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03f3d9a6bf0df6146dde5007fd820fb253b328cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbae3b03-3aa9-c86a-fb17-d2b1b3e1b4ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52b6ee86-6bc1-c1c0-bb00-9d83c8f60919",
  "kind": "theorem",
  "lexical_name": "_root_.TendstoUniformlyOn.cderiv",
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
  "slug": "root-tendstouniformlyon-cderiv--31410040b18f09eca88e86a5",
  "source": {
    "blob": "03f3d9a6bf0df6146dde5007fd820fb253b328cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31410040b18f09eca88e86a5a9bd1d9af93a8e8e123a0e18c3cb7e4217c0e20c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52b6ee86-6bc1-c1c0-bb00-9d83c8f60919`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.TendstoUniformlyOn.cderiv (hF : TendstoUniformlyOn F f φ (cthickening δ K))
    (hδ : 0 < δ) (hFn : ∀ᶠ n in φ, ContinuousOn (F n) (cthickening δ K)) :
    TendstoUniformlyOn (cderiv δ ∘ F) (cderiv δ f) φ K := by
  rcases φ.eq_or_neBot with rfl | hne
  · simp only [TendstoUniformlyOn, eventually_bot, imp_true_iff]
  have e1 : ContinuousOn f (cthickening δ K) := TendstoUniformlyOn.continuousOn hF hFn
  rw [tendstoUniformlyOn_iff] at hF ⊢
  rintro ε hε
  filter_upwards [hF (ε * δ) (mul_pos hε hδ), hFn] with n h h' z hz
  simp_rw [dist_eq_norm] at h ⊢
  have e2 : ∀ w ∈ sphere z δ, ‖f w - F n w‖ < ε * δ := fun w hw1 =>
    h w (closedBall_subset_cthickening hz δ (sphere_subset_closedBall hw1))
  have e3 := sphere_subset_closedBall.trans (closedBall_subset_cthickening hz δ)
  have hf : ContinuousOn f (sphere z δ) :=
    e1.mono (sphere_subset_closedBall.trans (closedBall_subset_cthickening hz δ))
  simpa only [mul_div_cancel_right₀ _ hδ.ne.symm] using norm_cderiv_sub_lt hδ e2 hf (h'.mono e3)

end Cderiv

variable [CompleteSpace E]

section Weierstrass

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant37441e3338ec2de0a321d2648c0f1592d0dfd6d7e6af8b244689a6ce1b8c4c25.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03f3d9a6bf0df6146dde5007fd820fb253b328cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
