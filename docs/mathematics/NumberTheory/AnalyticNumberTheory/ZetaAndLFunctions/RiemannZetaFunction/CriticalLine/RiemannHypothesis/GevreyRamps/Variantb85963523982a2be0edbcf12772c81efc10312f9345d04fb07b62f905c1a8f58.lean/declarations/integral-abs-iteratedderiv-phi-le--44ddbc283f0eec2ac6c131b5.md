# integral_abs_iteratedDeriv_phi_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b826885dbe6402f5cf219920a1667afaffb4f06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbf20524-5691-44c8-bc1d-e9e5272235d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dfba72c1-4538-3e25-7c1c-d81a879160f2",
  "kind": "theorem",
  "lexical_name": "integral_abs_iteratedDeriv_phi_le",
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
  "slug": "integral-abs-iteratedderiv-phi-le--44ddbc283f0eec2ac6c131b5",
  "source": {
    "blob": "7b826885dbe6402f5cf219920a1667afaffb4f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 203,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44ddbc283f0eec2ac6c131b5644a6fb40b173093c1c66ed0928e3c184c4ac900",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfba72c1-4538-3e25-7c1c-d81a879160f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_iteratedDeriv_phi_le (hϱ : GevreyProfile s A B ϱ) (hw : 0 < w)
    (hwL : 2 * w ≤ L) {k : ℕ} (hk : 1 ≤ k) :
    ∫ u, |iteratedDeriv k (phi ϱ L w) u| ≤ 2 * B * w * (A / w) ^ k * (k : ℝ) ^ (s * k) := by
  set M : ℝ := (w⁻¹) ^ k * (B * A ^ k * (k : ℝ) ^ (s * k)) with hM
  have hM0 : 0 ≤ M := by have := hϱ.A_pos; have := hϱ.B_pos; positivity
  set Rp := Set.Ioo (L / 2 - w) (L / 2)
  set Rm := Set.Ioo (-(L / 2)) (w - L / 2)
  have hIp : Integrable (Rp.indicator fun _ => M) :=
    (integrable_indicator_iff measurableSet_Ioo).mpr (integrableOn_const (by simp [Rp]))
  have hIm : Integrable (Rm.indicator fun _ => M) :=
    (integrable_indicator_iff measurableSet_Ioo).mpr (integrableOn_const (by simp [Rm]))
  have hmaj : ∀ u, |iteratedDeriv k (phi ϱ L w) u|
      ≤ Rp.indicator (fun _ => M) u + Rm.indicator (fun _ => M) u := fun u =>
    (abs_iteratedDeriv_phi_le hϱ hw hwL hk u).trans
      (add_le_add (abs_iteratedDeriv_fP_le hϱ hw hk u) (abs_iteratedDeriv_fM_le hϱ hw hk u))
  have hvol : ∀ a b : ℝ, b - a = w → ∫ u, (Set.Ioo a b).indicator (fun _ => M) u = M * w := by
    intro a b hab
    rw [integral_indicator_const _ measurableSet_Ioo, measureReal_def, Real.volume_Ioo,
      ENNReal.toReal_ofReal (by linarith), smul_eq_mul, hab, mul_comm]
  calc ∫ u, |iteratedDeriv k (phi ϱ L w) u|
      ≤ ∫ u, (Rp.indicator (fun _ => M) u + Rm.indicator (fun _ => M) u) :=
        integral_mono_of_nonneg (Eventually.of_forall fun u => abs_nonneg _) (hIp.add hIm)
          (Eventually.of_forall hmaj)
    _ = M * w + M * w := by
        rw [integral_add hIp hIm, hvol _ _ (by ring), hvol _ _ (by ring)]
    _ = 2 * B * w * (A / w) ^ k * (k : ℝ) ^ (s * k) := by
        rw [hM, div_eq_mul_inv, mul_pow]; ring

end Ramps

end Taper

/-- **Gevrey ramp lemma, in the `Params.GevreyPhiBound` interface**: a Gevrey-s profile makes
`P.phi T` a C^∞ window with ‖φ^{(k)}‖₁ ≤ 2B·w·(A/w)^k·k^{sk}. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b826885dbe6402f5cf219920a1667afaffb4f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
