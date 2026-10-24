# polynomial_square_integral_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d61a97bbbef77b66bc2c13cda190b37bd32491b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14f4393b-399e-ca90-bc25-6677a5888d27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7baa724f-5f23-879f-1305-96fc8061beff",
  "kind": "theorem",
  "lexical_name": "polynomial_square_integral_positive",
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
  "slug": "polynomial-square-integral-positive--8ed4d88a26afda57982908c1",
  "source": {
    "blob": "6d61a97bbbef77b66bc2c13cda190b37bd32491b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 174,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ed4d88a26afda57982908c173bba2f44c975683cf06f74906202a4ad6b509f2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7baa724f-5f23-879f-1305-96fc8061beff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_square_integral_positive (p : ℝ[X]) (hp : p ≠ 0)
    {t : ℝ} (ht : 0 ≤ t) : 0 < ∫ x, p.eval x ^ 2 ∂momentMeasure t := by
  rw [integral_momentMeasure_eq_source ht (fun x : ℝ => p.eval x ^ 2) (p.continuous.pow 2)]
  have hint : IntegrableOn (fun u => thetaPhi u * p.eval (u - t) ^ 2) (Ici t) :=
    (integrable_momentMeasure_iff ht (fun x : ℝ => p.eval x ^ 2) (p.continuous.pow 2)).mp
      (polynomial_square_integrable p ht)
  apply (setIntegral_pos_iff_support_of_nonneg_ae ?_ hint).mpr
  · obtain ⟨r, hr⟩ := p.exists_max_root hp
    let x : ℝ := max r 0 + 1
    have hx : 0 < x := by dsimp [x]; have := le_max_right r 0; linarith
    have hxr : r < x := by dsimp [x]; have := le_max_left r 0; linarith
    have heval : p.eval x ≠ 0 := by
      intro heval
      have hroot : p.IsRoot x := heval
      exact (not_le_of_gt hxr) (hr x hroot)
    have hc : Continuous (fun u => thetaPhi u * p.eval (u - t) ^ 2) :=
      continuous_thetaPhi.mul ((p.continuous.comp (continuous_id.sub continuous_const)).pow 2)
    have hopen : IsOpen (Function.support (fun u => thetaPhi u * p.eval (u - t) ^ 2) ∩ Ioi t) :=
      hc.isOpen_support.inter isOpen_Ioi
    have hnonempty : (Function.support (fun u => thetaPhi u * p.eval (u - t) ^ 2) ∩ Ioi t).Nonempty := by
      refine ⟨t + x, ?_, ?_⟩
      · change thetaPhi (t + x) * p.eval (t + x - t) ^ 2 ≠ 0
        have hphi := thetaPhi_positive (t + x) (by linarith)
        have heval' : p.eval (t + x - t) ≠ 0 := by simpa using heval
        exact (mul_pos hphi (sq_pos_of_ne_zero heval')).ne'
      · exact lt_add_of_pos_right t hx
    apply (hopen.measure_pos volume hnonempty).trans_le
    apply measure_mono
    intro u hu
    exact ⟨hu.1, (show t < u from hu.2).le⟩
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    exact mul_nonneg (thetaPhi_positive u (ht.trans hu)).le (sq_nonneg _)

/-- Exact zeroth normalization: total mass is T₁, not silently one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d61a97bbbef77b66bc2c13cda190b37bd32491b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
