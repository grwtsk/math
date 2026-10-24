# thetaTail_rankThree_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f99fc53f2340308500a0932cba2d045d6032744",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a97930cc-0d95-3414-b92e-1092d93dade8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fea61efb-ed19-bd9c-7ac7-9a4bfbaf5583",
  "kind": "theorem",
  "lexical_name": "thetaTail_rankThree_shift",
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
  "slug": "thetatail-rankthree-shift--5aa701aa450ae3751a35f2ee",
  "source": {
    "blob": "2f99fc53f2340308500a0932cba2d045d6032744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 184,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5aa701aa450ae3751a35f2ee4f27b0435ae87dd8009e4c91de59a4f7092017e2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fea61efb-ed19-bd9c-7ac7-9a4bfbaf5583`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_rankThree_shift
    {r s u : ℕ}
    (hsign : ∀ ⦃x y z : ℝ⦄, 0 ≤ x → x < y → y < z →
      Matrix.det !![thetaTail r x, thetaTail r y, thetaTail r z;
        thetaTail s x, thetaTail s y, thetaTail s z;
        thetaTail u x, thetaTail u y, thetaTail u z] ≤ 0)
    {x y z : ℝ} (hx : 0 ≤ x) (hxy : x < y) (hyz : y < z) :
    Matrix.det !![thetaTail (r + 1) x, thetaTail (r + 1) y, thetaTail (r + 1) z;
      thetaTail (s + 1) x, thetaTail (s + 1) y, thetaTail (s + 1) z;
      thetaTail (u + 1) x, thetaTail (u + 1) y, thetaTail (u + 1) z] ≤ 0 := by
  have hy : 0 ≤ y := hx.trans hxy.le
  have hz : 0 ≤ z := hy.trans hyz.le
  rw [det_three_tail_columns_sub]
  rw [thetaTail_succ_sub_eq_Ioc r hx hxy.le,
    thetaTail_succ_sub_eq_Ioc r hy hyz.le,
    thetaTail_succ_eq_integral r hz,
    thetaTail_succ_sub_eq_Ioc s hx hxy.le,
    thetaTail_succ_sub_eq_Ioc s hy hyz.le,
    thetaTail_succ_eq_integral s hz,
    thetaTail_succ_sub_eq_Ioc u hx hxy.le,
    thetaTail_succ_sub_eq_Ioc u hy hyz.le,
    thetaTail_succ_eq_integral u hz]
  rw [det_setIntegral_columns_eq
    (thetaTail r) (thetaTail s) (thetaTail u)
    (Ioc x y) (Ioc y z) (Ici z)
    (thetaTail_integrableOn_Ioc r hx) (thetaTail_integrableOn_Ioc r hy)
      ((thetaTail_integrableOn r).mono_set (Ici_subset_Ici.mpr hz))
    (thetaTail_integrableOn_Ioc s hx) (thetaTail_integrableOn_Ioc s hy)
      ((thetaTail_integrableOn s).mono_set (Ici_subset_Ici.mpr hz))
    (thetaTail_integrableOn_Ioc u hx) (thetaTail_integrableOn_Ioc u hy)
      ((thetaTail_integrableOn u).mono_set (Ici_subset_Ici.mpr hz))]
  apply integral_nonpos_of_ae
  filter_upwards [ae_restrict_mem
    ((measurableSet_Ioc.prod measurableSet_Ioc).prod measurableSet_Ici)] with p hp
  rcases hp with ⟨⟨hu, hv⟩, hw⟩
  have hu_nonneg : 0 ≤ p.1.1 := hx.trans hu.1.le
  have huv : p.1.1 < p.1.2 := hu.2.trans_lt hv.1
  have hvw : p.1.2 ≤ p.2 := hv.2.trans hw
  rw [rankThreeKernel_eq_det]
  rcases hvw.eq_or_lt with hEq | hlt
  · rw [← hEq]
    simp [Matrix.det_fin_three]
  · exact hsign hu_nonneg huv hlt

/-- The proved source seed propagates to every common tail shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f99fc53f2340308500a0932cba2d045d6032744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
