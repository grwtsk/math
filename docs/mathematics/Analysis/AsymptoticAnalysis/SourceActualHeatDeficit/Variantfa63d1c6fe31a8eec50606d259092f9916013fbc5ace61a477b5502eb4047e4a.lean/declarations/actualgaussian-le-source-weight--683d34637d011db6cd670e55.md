# actualGaussian_le_source_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f389c4d6-6081-5de3-947e-39433f72a75d",
  "kind": "theorem",
  "lexical_name": "actualGaussian_le_source_weight",
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
  "slug": "actualgaussian-le-source-weight--683d34637d011db6cd670e55",
  "source": {
    "blob": "345cc43ea67a5458e8f45431c621f7d9f6b42c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 81,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variantfa63d1c6fe31a8eec50606d259092f9916013fbc5ace61a477b5502eb4047e4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:683d34637d011db6cd670e5589405d9a6920a583bf45d6a24bfb6da3b91b5799",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variantfa63d1c6fe31a8eec50606d259092f9916013fbc5ace61a477b5502eb4047e4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f389c4d6-6081-5de3-947e-39433f72a75d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualGaussian_le_source_weight {t : ℝ} (ht : 0 < t) (o : ZeroOccurrence) :
    Real.exp (-t * actualGamma o ^ 2) ≤
      (Real.exp (t / 4) * (32 * (1 + 6 / t ^ 3))) *
        (1 + ‖shiftedValue o‖) ^ (-6 : ℝ) := by
  have hd : actualDelta o ^ 2 ≤ (1 / 2 : ℝ) ^ 2 := by
    simpa only [sq_abs] using
      (sq_le_sq₀ (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 2)).2
        (actualDelta_abs_le_half o)
  have he : Real.exp (-t * actualGamma o ^ 2) ≤
      Real.exp (t / 4) * Real.exp (-t * ‖shiftedValue o‖ ^ 2) := by
    rw [← Real.exp_add]
    apply Real.exp_le_exp.mpr
    rw [shiftedValue_norm_sq]
    nlinarith
  have hp := gaussian_polynomial_bound ht (norm_nonneg (shiftedValue o))
  have hb : (1 + ‖shiftedValue o‖) ^ 6 * Real.exp (-t * actualGamma o ^ 2) ≤
      Real.exp (t / 4) * (32 * (1 + 6 / t ^ 3)) := by
    calc
      _ ≤ (1 + ‖shiftedValue o‖) ^ 6 *
          (Real.exp (t / 4) * Real.exp (-t * ‖shiftedValue o‖ ^ 2)) :=
        mul_le_mul_of_nonneg_left he (by positivity)
      _ = Real.exp (t / 4) *
          ((1 + ‖shiftedValue o‖) ^ 6 * Real.exp (-t * ‖shiftedValue o‖ ^ 2)) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left hp (Real.exp_pos _).le
  rw [show (-6 : ℝ) = -(6 : ℝ) by norm_num,
    Real.rpow_neg (by positivity), Real.rpow_ofNat, ← div_eq_mul_inv]
  apply (le_div_iff₀ (by positivity : 0 < (1 + ‖shiftedValue o‖) ^ 6)).mpr
  simpa only [mul_comm] using hb

/-- The existing complete, multiplicity-aware sixth-power tail gives actual
Gaussian summability at every positive time, without an RH premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variantfa63d1c6fe31a8eec50606d259092f9916013fbc5ace61a477b5502eb4047e4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variantfa63d1c6fe31a8eec50606d259092f9916013fbc5ace61a477b5502eb4047e4a.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `345cc43ea67a5458e8f45431c621f7d9f6b42c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
