# ck_add_conj_k_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65568ab1-e574-bf9e-fccb-c621ea74896e",
  "kind": "theorem",
  "lexical_name": "ck_add_conj_k_neg",
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
  "slug": "ck-add-conj-k-neg--5bc96e23e1cd0b9a35d929e4",
  "source": {
    "blob": "0ad7b731b075be77880c8d65388a34b96aaf7eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bc96e23e1cd0b9a35d929e43aa43073d0430c69972cdd31e2911306ca18aa50",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65568ab1-e574-bf9e-fccb-c621ea74896e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ck_add_conj_k_neg {k : ℝ → ℂ} (hk : Continuous k) (hki : Integrable k)
    (hFk : Integrable (FourierTransform.fourier k)) (cc : ℂ) (y : ℝ) :
    cc * k y + (starRingEnd ℂ) cc * k (-y)
      = (1 / π : ℂ) * ∫ τ : ℝ, paperFT k τ
          * ((cc.re * Real.cos (τ * y) + cc.im * Real.sin (τ * y) : ℝ) : ℂ) := by
  rw [Zeta23.EF.paper_inversion hk hki hFk y, Zeta23.EF.paper_inversion hk hki hFk (-y),
    mul_left_comm cc, mul_left_comm ((starRingEnd ℂ) cc), ← mul_add,
    ← Zeta23.EF.cintegral_const_mul cc, ← Zeta23.EF.cintegral_const_mul ((starRingEnd ℂ) cc),
    ← integral_add ((Zeta23.EF.integrable_paperFT_mul_cexp hFk y).const_mul cc)
      ((Zeta23.EF.integrable_paperFT_mul_cexp hFk (-y)).const_mul _)]
  have hconj : (starRingEnd ℂ) cc = (cc.re : ℂ) - (cc.im : ℂ) * I := by
    apply Complex.ext <;> simp
  have hcc : cc = (cc.re : ℂ) + (cc.im : ℂ) * I := (Complex.re_add_im cc).symm
  have h2 : ∀ τ : ℝ, cc * (paperFT k τ * cexp (-I * τ * y))
      + (starRingEnd ℂ) cc * (paperFT k τ * cexp (-I * τ * ↑(-y)))
      = 2 * (paperFT k τ * ((cc.re * Real.cos (τ * y) + cc.im * Real.sin (τ * y) : ℝ) : ℂ)) := by
    intro τ
    have he1 : cexp (-I * τ * y) = Real.cos (τ * y) - Real.sin (τ * y) * I := by
      rw [show (-I * τ * y : ℂ) = ((-(τ * y) : ℝ) : ℂ) * I by push_cast; ring,
        Complex.exp_mul_I]
      push_cast
      simp
      ring
    have he2 : cexp (-I * τ * ((-y : ℝ) : ℂ)) = Real.cos (τ * y) + Real.sin (τ * y) * I := by
      rw [show (-I * τ * ((-y : ℝ) : ℂ) : ℂ) = (((τ * y) : ℝ) : ℂ) * I by push_cast; ring,
        Complex.exp_mul_I]
      push_cast
      ring
    rw [he1, he2]
    nth_rewrite 1 [hcc]
    rw [hconj]
    push_cast
    ring_nf
    rw [Complex.I_sq]
    ring
  simp_rw [h2]
  rw [Zeta23.EF.cintegral_const_mul, ← mul_assoc]
  congr 1
  field_simp

/-- Support step, twisted: the summand vanishes for n outside (0, floor(e^L)]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad7b731b075be77880c8d65388a34b96aaf7eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
