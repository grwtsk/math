# tent_samples_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8311ceff-007d-65cf-b348-73b14a32e9ab",
  "kind": "theorem",
  "lexical_name": "tent_samples_error",
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
  "slug": "tent-samples-error--25ce2feee0a08bf85d059dbe",
  "source": {
    "blob": "a22d196a5aaf22cc7ef2665eda3f005f7ab2ef4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 161,
    "path": "GRWTSK/Analysis/Complex/TentMellinQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25ce2feee0a08bf85d059dbeeb89364c7e33315b1760ac8c21b990280ca96e39",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8311ceff-007d-65cf-b348-73b14a32e9ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tent_samples_error (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (hN : 0 < N) {z : ℂ} (hz : z.re ≤ 2)
    (vL vR : ℕ → ℂ) (eL eR : ℕ → ℝ)
    (hvL : ∀ i < N, ‖density z (halfNode x h N i false) - vL i‖ ≤ eL i)
    (hvR : ∀ i < N, ‖density z (halfNode x h N i true) - vR i‖ ≤ eR i) :
    ‖tentKernel x h z -
      ((∑ i ∈ Finset.range N, halfMass h N i false • vL i) +
        ∑ i ∈ Finset.range N, halfMass h N i true • vR i)‖ ≤
      componentBound (z - 1) * h ^ 2 / (2 * (N : ℝ)) +
      ((∑ i ∈ Finset.range N, halfMass h N i false * eL i) +
        ∑ i ∈ Finset.range N, halfMass h N i true * eR i) := by
  have hh0 : h ≠ 0 := ne_of_gt hh
  have hN0 : (N : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hN)
  have hleft : x - h ≤ x := by linarith
  have hright : x ≤ x + h := by linarith
  have hLc (i : ℕ) :
      (uniformNodes (x - h) x N i + uniformNodes (x - h) x N (i + 1)) / 2 =
        halfNode x h N i false := by
    simp only [halfNode, Bool.false_eq_true, if_false, uniformNodes, Nat.cast_add, Nat.cast_one]
    ring
  have hRc (i : ℕ) :
      (uniformNodes x (x + h) N i + uniformNodes x (x + h) N (i + 1)) / 2 =
        halfNode x h N i true := by
    simp only [halfNode, if_true, uniformNodes, Nat.cast_add, Nat.cast_one]
    ring
  have hLm (i : ℕ) :
      affineMass (1 / h) (-(x - h) / h)
        (uniformNodes (x - h) x N i) (uniformNodes (x - h) x N (i + 1)) =
      halfMass h N i false := by
    simp only [affineMass, halfMass, Bool.false_eq_true, if_false, uniformNodes,
      Nat.cast_add, Nat.cast_one]
    field_simp [hh0, hN0]
    ring
  have hRm (i : ℕ) :
      affineMass (-1 / h) ((x + h) / h)
        (uniformNodes x (x + h) N i) (uniformNodes x (x + h) N (i + 1)) =
      halfMass h N i true := by
    simp only [affineMass, halfMass, if_true, uniformNodes, Nat.cast_add, Nat.cast_one]
    field_simp [hh0, hN0]
    ring
  have hL := affine_partition_error (uniformNodes (x - h) x N) N
    (uniformNodes_monotone hleft N) (by simpa using ha) (1 / h) (-(x - h) / h) hz
    (fun i hi t ht => by
      have hl := (uniformNodes_monotone hleft N) (Nat.zero_le i)
      simp only [uniformNodes_zero] at hl
      have : 0 ≤ (t - (x - h)) / h := div_nonneg (by linarith [ht.1]) hh.le
      convert this using 1
      ring)
    vL eL (fun i hi => by simpa only [hLc] using hvL i hi)
  have hR := affine_partition_error (uniformNodes x (x + h) N) N
    (uniformNodes_monotone hright N) (by simp; linarith) (-1 / h) ((x + h) / h) hz
    (fun i hi t ht => by
      have hr := (uniformNodes_monotone hright N) (Nat.succ_le_of_lt hi)
      rw [uniformNodes_end x (x + h) N hN] at hr
      have : 0 ≤ (x + h - t) / h := div_nonneg (by linarith [ht.2]) hh.le
      convert this using 1
      ring)
    vR eR (fun i hi => by simpa only [hRc] using hvR i hi)
  have intL : (∫ t in (x - h)..x, (tent x h t : ℂ) * density z t) =
      ∫ t in (x - h)..x, ((1 / h) * t + (-(x - h) / h)) • density z t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [uIcc_of_le hleft] at ht
    rw [tent_on_left x h t hh ht.1 ht.2, Complex.real_smul]
    congr 1
    push_cast
    ring
  have intR : (∫ t in x..(x + h), (tent x h t : ℂ) * density z t) =
      ∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density z t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [uIcc_of_le hright] at ht
    rw [tent_on_right x h t hh ht.1 ht.2, Complex.real_smul]
    congr 1
    push_cast
    ring
  simp only [uniformNodes_zero, uniformNodes_end _ _ N hN, hLm, hRm,
    uniformNodes_step, sub_sub_cancel, add_sub_cancel_left] at hL hR
  have htri := (norm_add_le
    ((∫ t in (x - h)..x, ((1 / h) * t + (-(x - h) / h)) • density z t) -
      ∑ i ∈ Finset.range N, halfMass h N i false • vL i)
    ((∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density z t) -
      ∑ i ∈ Finset.range N, halfMass h N i true • vR i)).trans (add_le_add hL hR)
  rw [tentKernel_eq_split_integral x h hh ha z, intL, intR]
  have hmesh :
      (∑ i ∈ Finset.range N, halfMass h N i false * (componentBound (z - 1) * (h / (N : ℝ)) / 2)) +
      (∑ i ∈ Finset.range N, halfMass h N i true * (componentBound (z - 1) * (h / (N : ℝ)) / 2)) =
        componentBound (z - 1) * h ^ 2 / (2 * (N : ℝ)) := by
    rw [← Finset.sum_mul, ← Finset.sum_mul, ← add_mul, total_mass h N hN]
    ring
  calc
    _ = ‖((∫ t in (x - h)..x, ((1 / h) * t + (-(x - h) / h)) • density z t) -
        ∑ i ∈ Finset.range N, halfMass h N i false • vL i) +
      ((∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density z t) -
        ∑ i ∈ Finset.range N, halfMass h N i true • vR i)‖ := by congr 1; abel
    _ ≤ _ := htri
    _ = _ := by
      simp only [mul_add, Finset.sum_add_distrib]
      linear_combination hmesh

end
end GRWTSK.Analysis.Complex.TentMellinQuadrature
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentMellinQuadrature.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a22d196a5aaf22cc7ef2665eda3f005f7ab2ef4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
