# leibniz_identity_mlieBracketWithin_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1be8b63db73d21e9a34ba421d3fea814566239d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 840,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fafdcdfa-4865-7441-1e86-bf5a7d16d682",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79927bfd-4da4-a62a-8fcf-2ee31b0d0150",
  "kind": "theorem",
  "lexical_name": "leibniz_identity_mlieBracketWithin_apply",
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
  "slug": "leibniz-identity-mliebracketwithin-apply--0d84266579cfc0e5a2e05677",
  "source": {
    "blob": "d1be8b63db73d21e9a34ba421d3fea814566239d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 975,
    "line": 840,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d84266579cfc0e5a2e0567715f5bb82e7cafbd003cc857bb2fb57252b466d8e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79927bfd-4da4-a62a-8fcf-2ee31b0d0150`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 840–975.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leibniz_identity_mlieBracketWithin_apply
    {U V W : Π (x : M), TangentSpace I x} {s : Set M} {x : M}
    (hs : UniqueMDiffOn I s) (h's : x ∈ closure (interior s)) (hx : x ∈ s)
    (hU : ContMDiffWithinAt I I.tangent (minSmoothness 𝕜 2)
      (fun x ↦ (U x : TangentBundle I M)) s x)
    (hV : ContMDiffWithinAt I I.tangent (minSmoothness 𝕜 2)
      (fun x ↦ (V x : TangentBundle I M)) s x)
    (hW : ContMDiffWithinAt I I.tangent (minSmoothness 𝕜 2)
      (fun x ↦ (W x : TangentBundle I M)) s x) :
    mlieBracketWithin I U (mlieBracketWithin I V W s) s x =
      mlieBracketWithin I (mlieBracketWithin I U V s) W s x
      + mlieBracketWithin I V (mlieBracketWithin I U W s) s x := by
  have A : minSmoothness 𝕜 2 + 1 ≤ minSmoothness 𝕜 3 := by
    simp only [← minSmoothness_add]
    exact le_rfl
  have s_inter_mem : s ∩ (extChartAt I x).source ∈ 𝓝[s] x :=
    inter_mem self_mem_nhdsWithin (nhdsWithin_le_nhds (extChartAt_source_mem_nhds x))
  have pre_mem : (extChartAt I x) ⁻¹' ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s)
      ∈ 𝓝[s] x := by
    filter_upwards [s_inter_mem] with y hy
    exact ⟨(extChartAt I x).map_source hy.2,
      by simpa only [mem_preimage, (extChartAt I x).left_inv hy.2] using hy.1⟩
  -- write everything as pullbacks of vector fields in `E` (denoted with primes), for which
  -- the identity can be checked via direct calculation.
  let U' := mpullbackWithin 𝓘(𝕜, E) I (extChartAt I x).symm U (range I)
  let V' := mpullbackWithin 𝓘(𝕜, E) I (extChartAt I x).symm V (range I)
  let W' := mpullbackWithin 𝓘(𝕜, E) I (extChartAt I x).symm W (range I)
  -- register basic facts on the pullbacks in the vector space
  have J0U : ContMDiffWithinAt 𝓘(𝕜, E) 𝓘(𝕜, E).tangent (minSmoothness 𝕜 2)
      (fun y ↦ (U' y : TangentBundle 𝓘(𝕜, E) E))
      ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s) (extChartAt I x x) :=
    contMDiffWithinAt_mpullbackWithin_extChartAt_symm hU hs hx A
  have J0V : ContMDiffWithinAt 𝓘(𝕜, E) 𝓘(𝕜, E).tangent (minSmoothness 𝕜 2)
      (fun y ↦ (V' y : TangentBundle 𝓘(𝕜, E) E))
      ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s) (extChartAt I x x) :=
    contMDiffWithinAt_mpullbackWithin_extChartAt_symm hV hs hx A
  have J0W : ContMDiffWithinAt 𝓘(𝕜, E) 𝓘(𝕜, E).tangent (minSmoothness 𝕜 2)
      (fun y ↦ (W' y : TangentBundle 𝓘(𝕜, E) E))
      ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s) (extChartAt I x x) :=
    contMDiffWithinAt_mpullbackWithin_extChartAt_symm hW hs hx A
  have J1U : ∀ᶠ y in 𝓝[s] x, ContMDiffWithinAt 𝓘(𝕜, E) 𝓘(𝕜, E).tangent (minSmoothness 𝕜 2)
      (fun y ↦ (U' y : TangentBundle 𝓘(𝕜, E) E))
      ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s) (extChartAt I x y) :=
    eventually_contMDiffWithinAt_mpullbackWithin_extChartAt_symm hU hs hx A (by simp)
  have J1V : ∀ᶠ y in 𝓝[s] x, ContMDiffWithinAt 𝓘(𝕜, E) 𝓘(𝕜, E).tangent (minSmoothness 𝕜 2)
      (fun y ↦ (V' y : TangentBundle 𝓘(𝕜, E) E))
      ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s) (extChartAt I x y) :=
    eventually_contMDiffWithinAt_mpullbackWithin_extChartAt_symm hV hs hx A (by simp)
  have J1W : ∀ᶠ y in 𝓝[s] x, ContMDiffWithinAt 𝓘(𝕜, E) 𝓘(𝕜, E).tangent (minSmoothness 𝕜 2)
      (fun y ↦ (W' y : TangentBundle 𝓘(𝕜, E) E))
      ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s) (extChartAt I x y) :=
    eventually_contMDiffWithinAt_mpullbackWithin_extChartAt_symm hW hs hx A (by simp)
  have JU : U =ᶠ[𝓝[s] x] mpullback I 𝓘(𝕜, E) (extChartAt I x) U' :=
    eventuallyEq_mpullback_mpullbackWithin_extChartAt U
  have JV : V =ᶠ[𝓝[s] x] mpullback I 𝓘(𝕜, E) (extChartAt I x) V' :=
    eventuallyEq_mpullback_mpullbackWithin_extChartAt V
  have JW : W =ᶠ[𝓝[s] x] mpullback I 𝓘(𝕜, E) (extChartAt I x) W' :=
    eventuallyEq_mpullback_mpullbackWithin_extChartAt W
  rw [JU.mlieBracketWithin_vectorField_eq_of_mem (JV.mlieBracketWithin_vectorField JW) hx,
    (JU.mlieBracketWithin_vectorField JV).mlieBracketWithin_vectorField_eq_of_mem JW hx,
    JV.mlieBracketWithin_vectorField_eq_of_mem (JU.mlieBracketWithin_vectorField JW) hx]
  /- Rewrite the first term as a pullback-/
  have : ∀ᶠ y in 𝓝[s] x, mlieBracketWithin I
        (mpullback I 𝓘(𝕜, E) (extChartAt I x) V') (mpullback I 𝓘(𝕜, E) (extChartAt I x) W') s y
      = mpullback I 𝓘(𝕜, E) (extChartAt I x) (mlieBracketWithin 𝓘(𝕜, E) V' W'
        ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s)) y := by
    filter_upwards [eventually_eventually_nhdsWithin.2 pre_mem, J1V, J1W,
      nhdsWithin_le_nhds (chart_source_mem_nhds H x), self_mem_nhdsWithin] with y hy hyV hyW h'y ys
    symm
    exact mpullback_mlieBracketWithin (n := minSmoothness 𝕜 2)
      (hyV.mdifferentiableWithinAt (one_le_two.trans le_minSmoothness))
      (hyW.mdifferentiableWithinAt (one_le_two.trans le_minSmoothness)) hs
      (contMDiffAt_extChartAt' h'y) ys le_rfl hy
  rw [Filter.EventuallyEq.mlieBracketWithin_vectorField_eq_of_mem EventuallyEq.rfl this hx,
    ← mpullback_mlieBracketWithin (J0U.mdifferentiableWithinAt (one_le_two.trans le_minSmoothness))
      _ hs contMDiffAt_extChartAt hx le_rfl pre_mem]; swap
  · apply ContMDiffWithinAt.mdifferentiableWithinAt _ le_rfl
    apply J0V.mlieBracketWithin_vectorField J0W (m := 1)
    · exact hs.uniqueMDiffOn_target_inter x
    · exact ⟨mem_extChartAt_target x, by simp [hx]⟩
    · exact le_rfl
  /- Rewrite the second term as a pullback-/
  have : ∀ᶠ y in 𝓝[s] x, mlieBracketWithin I
        (mpullback I 𝓘(𝕜, E) (extChartAt I x) U') (mpullback I 𝓘(𝕜, E) (extChartAt I x) V') s y
      = mpullback I 𝓘(𝕜, E) (extChartAt I x) (mlieBracketWithin 𝓘(𝕜, E) U' V'
        ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s)) y := by
    filter_upwards [eventually_eventually_nhdsWithin.2 pre_mem, J1U, J1V,
      nhdsWithin_le_nhds (chart_source_mem_nhds H x), self_mem_nhdsWithin] with y hy hyU hyV h'y ys
    symm
    exact mpullback_mlieBracketWithin (n := minSmoothness 𝕜 2)
      (hyU.mdifferentiableWithinAt (one_le_two.trans le_minSmoothness))
      (hyV.mdifferentiableWithinAt (one_le_two.trans le_minSmoothness)) hs
      (contMDiffAt_extChartAt' h'y) ys le_rfl hy
  rw [Filter.EventuallyEq.mlieBracketWithin_vectorField_eq_of_mem this EventuallyEq.rfl hx,
    ← mpullback_mlieBracketWithin _ (J0W.mdifferentiableWithinAt
      (one_le_two.trans le_minSmoothness)) hs contMDiffAt_extChartAt hx le_rfl pre_mem]; swap
  · apply ContMDiffWithinAt.mdifferentiableWithinAt _ le_rfl
    apply J0U.mlieBracketWithin_vectorField J0V (m := 1)
    · exact hs.uniqueMDiffOn_target_inter x
    · exact ⟨mem_extChartAt_target x, by simp [hx]⟩
    · exact le_rfl
  /- Rewrite the third term as a pullback-/
  have : ∀ᶠ y in 𝓝[s] x, mlieBracketWithin I
        (mpullback I 𝓘(𝕜, E) (extChartAt I x) U') (mpullback I 𝓘(𝕜, E) (extChartAt I x) W') s y
      = mpullback I 𝓘(𝕜, E) (extChartAt I x) (mlieBracketWithin 𝓘(𝕜, E) U' W'
        ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s)) y := by
    filter_upwards [eventually_eventually_nhdsWithin.2 pre_mem, J1U, J1W,
      nhdsWithin_le_nhds (chart_source_mem_nhds H x), self_mem_nhdsWithin] with y hy hyU hyW h'y ys
    symm
    exact mpullback_mlieBracketWithin (n := minSmoothness 𝕜 2)
      (hyU.mdifferentiableWithinAt (one_le_two.trans le_minSmoothness))
      (hyW.mdifferentiableWithinAt (one_le_two.trans le_minSmoothness)) hs
      (contMDiffAt_extChartAt' h'y) ys le_rfl hy
  rw [Filter.EventuallyEq.mlieBracketWithin_vectorField_eq_of_mem EventuallyEq.rfl this hx,
    ← mpullback_mlieBracketWithin (J0V.mdifferentiableWithinAt (one_le_two.trans le_minSmoothness))
      _ hs contMDiffAt_extChartAt hx le_rfl pre_mem]; swap
  · apply ContMDiffWithinAt.mdifferentiableWithinAt _ le_rfl
    apply J0U.mlieBracketWithin_vectorField J0W (m := 1)
    · exact hs.uniqueMDiffOn_target_inter x
    · exact ⟨mem_extChartAt_target x, by simp [hx]⟩
    · exact le_rfl
  /- Now that everything is in pullback form, use the leibniz identity in the vector space -/
  rw [← mpullback_add_apply, mpullback_apply, mpullback_apply]
  congr 1
  simp_rw [mlieBracketWithin_eq_lieBracketWithin]
  apply leibniz_identity_lieBracketWithin (E := E) le_rfl
  · exact hs.uniqueDiffOn_target_inter x
  · rw [inter_comm]
    exact extChartAt_mem_closure_interior h's (mem_extChartAt_source x)
  · exact ⟨mem_extChartAt_target x, by simp [hx]⟩
  · exact contMDiffWithinAt_vectorSpace_iff_contDiffWithinAt.mp J0U
  · exact contMDiffWithinAt_vectorSpace_iff_contDiffWithinAt.mp J0V
  · exact contMDiffWithinAt_vectorSpace_iff_contDiffWithinAt.mp J0W

/-- The Lie bracket of vector fields in manifolds satisfies the Leibniz identity
`[U, [V, W]] = [[U, V], W] + [V, [U, W]]` (also called Jacobi identity). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean#L840).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1be8b63db73d21e9a34ba421d3fea814566239d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
