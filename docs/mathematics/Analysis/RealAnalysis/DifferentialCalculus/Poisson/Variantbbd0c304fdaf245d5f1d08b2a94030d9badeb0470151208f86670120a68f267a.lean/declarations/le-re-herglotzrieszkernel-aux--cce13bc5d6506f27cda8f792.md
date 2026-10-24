# le_re_herglotzRieszKernel_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f53b85dc-d8fb-aeca-7621-c80943f343e0",
  "kind": "lemma",
  "lexical_name": "le_re_herglotzRieszKernel_aux",
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
  "slug": "le-re-herglotzrieszkernel-aux--cce13bc5d6506f27cda8f792",
  "source": {
    "blob": "0eaa5bbe40b6c8e441c9e1fbeb2b0a49f835fba0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 119,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variantbbd0c304fdaf245d5f1d08b2a94030d9badeb0470151208f86670120a68f267a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cce13bc5d6506f27cda8f792c344ae4323a24be34da0a6295af6ed523f075aa4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variantbbd0c304fdaf245d5f1d08b2a94030d9badeb0470151208f86670120a68f267a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f53b85dc-d8fb-aeca-7621-c80943f343e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma le_re_herglotzRieszKernel_aux (θ φ r R : ℝ) (h₁ : 0 < r) (h₂ : r < R) :
    (R - r) / (R + r)
      ≤ ((R * exp (θ * I) + r * exp (φ * I)) / (R * exp (θ * I) - r * exp (φ * I))).re := by
  rw [poissonKernel_eq_re_herglotzRieszKernel_aux]
  simp only [Complex.norm_mul, norm_real, norm_eq_abs, norm_exp_ofReal_mul_I, mul_one, sq_abs,
    sq_sub_sq]
  field_simp [sub_pos.mpr h₂]
  simp only [mul_comm I] -- make sure exponents are in the form `?angle * I` for the simplification
  rw [div_le_div_iff₀ (by positivity [h₁.trans h₂]) ?hpos, ← normSq_eq_norm_sq, normSq_sub,
    normSq_eq_norm_sq, normSq_eq_norm_sq]
  case hpos => simpa [sq_pos_iff, sub_eq_zero] using
    (mt <| congr_arg (‖·‖)) <| by simpa [abs_of_pos, h₁, h₁.trans h₂] using h₂.ne'
  have key := calc
    (-(R * cexp (θ * I) * (starRingEnd ℂ) (r * cexp (φ * I)))).re ≤ _ := re_le_norm _
    _ ≤ R * r := by simp [abs_of_pos, h₁, h₁.trans h₂]
  simpa using calc
    R ^ 2 + r ^ 2 - 2 * (R * cexp (θ * I) * (starRingEnd ℂ) (r * cexp (φ * I))).re
    _ ≤ R ^ 2 + r ^ 2 + 2 * (R * r) := by rw [sub_eq_add_neg, ← mul_neg, ← neg_re]; gcongr
    _ = (R + r) * (R + r) := by ring

/--
Companion theorem to the Poisson Integral Formula: Lower estimate for the real part of the
Herglotz-Riesz kernel.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variantbbd0c304fdaf245d5f1d08b2a94030d9badeb0470151208f86670120a68f267a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variantbbd0c304fdaf245d5f1d08b2a94030d9badeb0470151208f86670120a68f267a.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eaa5bbe40b6c8e441c9e1fbeb2b0a49f835fba0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
