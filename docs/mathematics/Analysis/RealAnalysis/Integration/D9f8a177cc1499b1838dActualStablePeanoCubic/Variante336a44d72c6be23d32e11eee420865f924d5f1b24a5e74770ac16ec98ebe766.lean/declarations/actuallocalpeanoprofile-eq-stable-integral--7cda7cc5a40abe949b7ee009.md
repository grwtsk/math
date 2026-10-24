# actualLocalPeanoProfile_eq_stable_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3b14acf-6826-7bae-5fbf-9e8b70067f33",
  "kind": "theorem",
  "lexical_name": "actualLocalPeanoProfile_eq_stable_integral",
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
  "slug": "actuallocalpeanoprofile-eq-stable-integral--7cda7cc5a40abe949b7ee009",
  "source": {
    "blob": "6f6172ae7d5f27640f045432315c1d19d9447097",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D9f8a177cc1499b1838dActualStablePeanoCubic/Variante336a44d72c6be23d32e11eee420865f924d5f1b24a5e74770ac16ec98ebe766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cda7cc5a40abe949b7ee00930afdc2f7933a0171fe6a89fda7736738bad486b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D9f8a177cc1499b1838dActualStablePeanoCubic/Variante336a44d72c6be23d32e11eee420865f924d5f1b24a5e74770ac16ec98ebe766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3b14acf-6826-7bae-5fbf-9e8b70067f33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLocalPeanoProfile_eq_stable_integral (A t : ℝ) (hA : 0 < A) :
    actualLocalPeanoProfile A t = ∫ s in Ioi (0 : ℝ), actualStablePeanoIntegrand A t s := by
  let G : ℝ → ℝ := fun s => -Real.exp (-t / 2) *
    (s * deriv (sourcePeanoPrimitive A) (t - s) + sourcePeanoPrimitive A (t - s))
  have hc := sourcePeanoPrimitive_contDiff_two hA
  have hc1 : ContDiff ℝ 1 (deriv (sourcePeanoPrimitive A)) := hc.deriv'
  have hp (x : ℝ) := (hc.differentiable (by norm_num) x).hasDerivAt
  have hpp (x : ℝ) := (hc1.differentiable (by norm_num) x).hasDerivAt
  have hd (s : ℝ) : HasDerivAt G (actualStablePeanoIntegrand A t s) s := by
    have hn := (hasDerivAt_id s).const_sub t
    have hh := (((hasDerivAt_id s).mul ((hpp (t - s)).comp s hn)).add
      ((hp (t - s)).comp s hn)).const_mul (-Real.exp (-t / 2))
    apply hh.congr_deriv
    rw [sourcePeanoPrimitive_second_deriv hA]
    unfold actualStablePeanoIntegrand
    have he : Real.exp (-t / 2) * Real.exp ((t - s) / 2) = Real.exp (-s / 2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    simp only [id_eq, Function.comp_apply]
    calc
      _ = s * (Real.exp (-t / 2) * Real.exp ((t - s) / 2)) *
          sourceCorrelation explicitSecondDerivative A (t - s) := by ring
      _ = _ := by rw [he]
  have hz : G =ᶠ[atTop] fun _ => 0 := by
    filter_upwards [eventually_ge_atTop (t + 2 * A)] with s hs
    unfold G
    rw [actualPeano_zero_of_support_lower_le hA (by linarith),
      actualPeano_deriv_zero_of_support_lower_le hA (by linarith)]
    ring
  have hl : Tendsto G atTop (𝓝 0) := Tendsto.congr' hz.symm tendsto_const_nhds
  have hf := integral_Ioi_of_hasDerivAt_of_tendsto'
    (a := (0 : ℝ))
    (fun s _ => hd s) (actualStablePeanoIntegrand_integrable A t hA).integrableOn hl
  rw [hf]
  unfold G
  simp only [zero_mul, zero_add, sub_zero, zero_sub, neg_mul, neg_neg]
  rw [actualLocalPeanoProfile_eq_conjugated, ← mul_assoc, ← Real.exp_add]
  rw [show -t / 2 + t / 2 = 0 by ring, Real.exp_zero, one_mul]

/-- Independently specified full cubic inverse-filter source jet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D9f8a177cc1499b1838dActualStablePeanoCubic/Variante336a44d72c6be23d32e11eee420865f924d5f1b24a5e74770ac16ec98ebe766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D9f8a177cc1499b1838dActualStablePeanoCubic/Variante336a44d72c6be23d32e11eee420865f924d5f1b24a5e74770ac16ec98ebe766.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f6172ae7d5f27640f045432315c1d19d9447097` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
