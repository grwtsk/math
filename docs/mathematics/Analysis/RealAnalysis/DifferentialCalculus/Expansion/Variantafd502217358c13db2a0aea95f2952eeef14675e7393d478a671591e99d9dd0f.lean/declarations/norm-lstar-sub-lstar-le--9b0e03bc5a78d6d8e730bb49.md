# norm_Lstar_sub_Lstar_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03d27645-9104-0ce4-2d6e-231afe66dc00",
  "kind": "theorem",
  "lexical_name": "norm_Lstar_sub_Lstar_le",
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
  "slug": "norm-lstar-sub-lstar-le--9b0e03bc5a78d6d8e730bb49",
  "source": {
    "blob": "3e3b9bfcde9101b8f3c28b140c8bb809278cf521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 445,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b0e03bc5a78d6d8e730bb49c5dd3418222ec873a0df60192905d58753abcbbc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03d27645-9104-0ce4-2d6e-231afe66dc00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_Lstar_sub_Lstar_le {t τ : ℝ} (ht : 0 < t) (hτ : 0 < τ) :
    ‖Lstar t - Lstar τ‖ ≤ |t - τ| / (2 * min t τ) := by
  have e : Lstar t - Lstar τ = (((Real.log t - Real.log τ) / 2 : ℝ) : ℂ) := by
    unfold Lstar
    have e1 : Real.log (t / (2 * Real.pi)) - Real.log (τ / (2 * Real.pi)) = Real.log t - Real.log τ := by
      rw [Real.log_div ht.ne' (by positivity), Real.log_div hτ.ne' (by positivity)]; ring
    have : (((Real.log (t / (2 * Real.pi)) / 2 : ℝ)) : ℂ) - ((Real.log (τ / (2 * Real.pi)) / 2 : ℝ) : ℂ)
        = (((Real.log t - Real.log τ) / 2 : ℝ) : ℂ) := by
      rw [← Complex.ofReal_sub]; congr 1; rw [← e1]; ring
    rw [← this]; ring
  rw [e, Complex.norm_real, Real.norm_eq_abs, abs_div, abs_two]
  have := abs_log_sub_log_le ht hτ
  have hm : 0 < min t τ := lt_min ht hτ
  rw [div_le_div_iff₀ two_pos (by positivity)]
  calc |Real.log t - Real.log τ| * (2 * min t τ) = 2 * (|Real.log t - Real.log τ| * min t τ) := by ring
    _ ≤ 2 * |t - τ| := by
        have := (le_div_iff₀ hm).mp this
        linarith
    _ = |t - τ| * 2 := by ring

/-- **L against a frozen L⋆(τ)**: ‖L(5/4+it) − L⋆(τ)‖ ≤ (|t−τ| + 16)/(2 min t τ) for t, τ ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3b9bfcde9101b8f3c28b140c8bb809278cf521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
