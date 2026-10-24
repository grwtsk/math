# area_disc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5f327f5c6e64088f39328b02b95905ebe4ac9c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0172f40-f7e7-096b-bcb8-8a9aafd71e90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f222b418-d21f-cbfc-6567-6dced9ac4d30",
  "kind": "theorem",
  "lexical_name": "area_disc",
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
  "slug": "area-disc--0d27e5e5a86ed622732ddc89",
  "source": {
    "blob": "e5f327f5c6e64088f39328b02b95905ebe4ac9c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d27e5e5a86ed622732ddc89e5d5b5137daf16941865c0071379851e4eeb5c42",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f222b418-d21f-cbfc-6567-6dced9ac4d30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem area_disc : volume (disc r) = NNReal.pi * r ^ 2 := by
  let f x := sqrt (r ^ 2 - x ^ 2)
  let F x := (r : ℝ) ^ 2 * arcsin (r⁻¹ * x) + x * sqrt (r ^ 2 - x ^ 2)
  have hf : Continuous f := by fun_prop
  suffices ∫ x in -r..r, 2 * f x = NNReal.pi * r ^ 2 by
    have h : IntegrableOn f (Ioc (-r) r) := hf.integrableOn_Icc.mono_set Ioc_subset_Icc_self
    calc
      volume (disc r) = volume (regionBetween (fun x => -f x) f (Ioc (-r) r)) := by
        rw [disc_eq_regionBetween]
      _ = ENNReal.ofReal (∫ x in Ioc (-r : ℝ) r, (f - Neg.neg ∘ f) x) :=
        (volume_regionBetween_eq_integral h.neg h measurableSet_Ioc fun x _ =>
          neg_le_self (sqrt_nonneg _))
      _ = ENNReal.ofReal (∫ x in (-r : ℝ)..r, 2 * f x) := by
        rw [integral_of_le] <;> simp [two_mul, neg_le_self]
      _ = NNReal.pi * r ^ 2 := by rw_mod_cast [this, ← ENNReal.coe_nnreal_eq]
  have hle := NNReal.coe_nonneg r
  obtain heq | hlt := hle.eq_or_lt; · simp [← heq]
  have hderiv : ∀ x ∈ Ioo (-r : ℝ) r, HasDerivAt F (2 * f x) x := by
    rintro x ⟨hx1, hx2⟩
    convert
      ((hasDerivAt_const x ((r : ℝ) ^ 2)).mul
            ((hasDerivAt_arcsin _ _).comp x
              ((hasDerivAt_const x (r : ℝ)⁻¹).mul (hasDerivAt_id' x)))).add
        ((hasDerivAt_id' x).mul ((((hasDerivAt_id' x).pow 2).const_sub ((r : ℝ) ^ 2)).sqrt _))
      using 1
    · have h₁ : (r:ℝ) ^ 2 - x ^ 2 > 0 := sub_pos_of_lt (sq_lt_sq' hx1 hx2)
      have h : sqrt ((r:ℝ) ^ 2 - x ^ 2) ^ 3 = ((r:ℝ) ^ 2 - x ^ 2) * sqrt ((r: ℝ) ^ 2 - x ^ 2) := by
        rw [pow_three, ← mul_assoc, mul_self_sqrt (by positivity)]
      field_simp [f]
      ring_nf
      rw [h]
      ring
    · suffices -(1 : ℝ) < (r : ℝ)⁻¹ * x by exact this.ne'
      calc
        -(1 : ℝ) = (r : ℝ)⁻¹ * -r := by simp [inv_mul_cancel₀ hlt.ne']
        _ < (r : ℝ)⁻¹ * x := by nlinarith [inv_pos.mpr hlt]
    · suffices (r : ℝ)⁻¹ * x < 1 by exact this.ne
      calc
        (r : ℝ)⁻¹ * x < (r : ℝ)⁻¹ * r := by nlinarith [inv_pos.mpr hlt]
        _ = 1 := inv_mul_cancel₀ hlt.ne'
    · nlinarith
  calc
    ∫ x in -r..r, 2 * f x = F r - F (-r) :=
      integral_eq_sub_of_hasDerivAt_of_le (neg_le_self r.2) (by fun_prop) hderiv
        (continuous_const.mul hf).continuousOn.intervalIntegrable
    _ = NNReal.pi * (r : ℝ) ^ 2 := by
      norm_num [F, inv_mul_cancel₀ hlt.ne', ← mul_div_assoc, mul_comm π]

end Theorems100
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantf4c82281ebda739292738e4c67513e1853c1ebbcb346e0b2792ca36646bbfb86.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5f327f5c6e64088f39328b02b95905ebe4ac9c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
