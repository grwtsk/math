# scaleDerivativeState_norm_sub_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80ae005e-c1de-ea8b-57fd-62c5ca6e760f",
  "kind": "theorem",
  "lexical_name": "scaleDerivativeState_norm_sub_sq",
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
  "slug": "scalederivativestate-norm-sub-sq--a6e16ba39029b49ffd2f3852",
  "source": {
    "blob": "623c56bc23a158f9025fbbd0520f8dffc5b33d84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 277,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6e16ba39029b49ffd2f3852af43c8a6976816b1796ccd4ee49934250c80cc13",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80ae005e-c1de-ea8b-57fd-62c5ca6e760f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaleDerivativeState_norm_sub_sq {A B : ℝ} (hA : 0 < A) (hB : 0 < B) :
    ‖scaleDerivativeState B - scaleDerivativeState A‖ ^ 2 =
      ∫ x : ℝ, (scaleDerivative B x - scaleDerivative A x) ^ 2 := by
  have hi : ⟪scaleDerivativeState B - scaleDerivativeState A,
      scaleDerivativeState B - scaleDerivativeState A⟫_ℂ =
      ((∫ x : ℝ, (scaleDerivative B x - scaleDerivative A x) ^ 2 : ℝ) : ℂ) := by
    rw [L2.inner_def]
    calc
      _ = ∫ x : ℝ, (((scaleDerivative B x - scaleDerivative A x) ^ 2 : ℝ) : ℂ) := by
        apply integral_congr_ae
        filter_upwards [Lp.coeFn_sub (scaleDerivativeState B) (scaleDerivativeState A),
          scaleDerivativeState_coe_ae hA, scaleDerivativeState_coe_ae hB] with x hs ha hb
        rw [hs, Pi.sub_apply, ha, hb, RCLike.inner_apply']
        simp [pow_two]
      _ = _ := integral_complex_ofReal
  calc
    _ = (⟪scaleDerivativeState B - scaleDerivativeState A,
      scaleDerivativeState B - scaleDerivativeState A⟫_ℂ).re := norm_sq_eq_re_inner (𝕜 := ℂ) _
    _ = _ := by rw [hi]; rfl

/-- Difference energy varies continuously under one fixed local compact support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `623c56bc23a158f9025fbbd0520f8dffc5b33d84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
