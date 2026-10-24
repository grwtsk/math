# actualClosedPrimeLogBoundary_moving_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c4654c6-1bef-a580-d3a5-e481512a20d0",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeLogBoundary_moving_norm_le",
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
  "slug": "actualclosedprimelogboundary-moving-norm-le--9a21976b8cf986cff290aa73",
  "source": {
    "blob": "0f5475191955a48dd82c667707d207bfa6738cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 282,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative06/Variantb156f18ed5bb4540bba060740d7b7b7a401529d00a7068644e6572861fbf819c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a21976b8cf986cff290aa73ecbe6c0eb26ae03e2f24f78b6e380fb51e5369a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative06/Variantb156f18ed5bb4540bba060740d7b7b7a401529d00a7068644e6572861fbf819c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c4654c6-1bef-a580-d3a5-e481512a20d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeLogBoundary_moving_norm_le (A c : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) :
    ‖actualClosedPrimeLogBoundary A c (actualBumpMovingHeight A c)‖ ≤
      actualEulerLogBoundaryConstant c*Real.exp (-((2*c-1)*A/5))/A^9 := by
  let T := actualBumpMovingHeight A c
  have hT : 0 < T := Real.exp_pos _
  have hHp := mellinEndpoint_norm_le A c T hA hc (abs_of_pos hT)
  have hHm := mellinEndpoint_norm_le A c (-T) hA hc (by rw [abs_neg, abs_of_pos hT])
  have hPp := actualClosedPrimeLogPotential_norm_le A c T hc
  have hPm := actualClosedPrimeLogPotential_norm_le A c (-T) hc
  have hK : 0 ≤ mellinEndpointConstant c := by unfold mellinEndpointConstant; positivity
  have hM := actualRightLineMass_nonneg c
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  unfold actualClosedPrimeLogBoundary
  rw [norm_mul]
  calc
    _ ≤ ‖(I/(2*Real.pi):ℂ)‖ *
        (‖actualInitialPrimeMellin A ((c:ℂ)+(T:ℂ)*I)*
            actualClosedPrimeLogPotential A ((c:ℂ)+(T:ℂ)*I)‖ +
          ‖actualInitialPrimeMellin A ((c:ℂ)+(-T:ℂ)*I)*
            actualClosedPrimeLogPotential A ((c:ℂ)+(-T:ℂ)*I)‖) := by
      exact mul_le_mul_of_nonneg_left (norm_sub_le _ _) (norm_nonneg _)
    _ ≤ (1/(2*Real.pi))*
        (2*(mellinEndpointConstant c*Real.exp (-((2*c-1)*A/5))/A^9)*
          (actualRightLineMass c/Real.log 2)) := by
      have hn : ‖(I/(2*Real.pi):ℂ)‖ = 1/(2*Real.pi) := by
        rw [norm_div, norm_I]
        norm_cast
        rw [Real.norm_eq_abs, abs_of_pos (show 0 < 2*Real.pi by positivity)]
      rw [hn, norm_mul, norm_mul]
      have hPm' : ‖actualClosedPrimeLogPotential A ((c:ℂ)+(-T:ℂ)*I)‖ ≤
          actualRightLineMass c/Real.log 2 := by simpa only [Complex.ofReal_neg] using hPm
      have hHm' : ‖actualInitialPrimeMellin A ((c:ℂ)+(-T:ℂ)*I)‖ ≤
          mellinEndpointConstant c*Real.exp (-((2*c-1)*A/5))/A^9 := by
        simpa only [Complex.ofReal_neg] using hHm
      have hb := add_le_add
        (mul_le_mul hHp hPp (norm_nonneg _) (by positivity))
        (mul_le_mul hHm' hPm' (norm_nonneg _) (by positivity))
      have hbb := mul_le_mul_of_nonneg_left hb
        (show 0 ≤ 1/(2*Real.pi) by positivity)
      convert hbb using 1 <;> ring
    _ = _ := by unfold actualEulerLogBoundaryConstant; ring

end
end FormalResearch.RiemannHypothesis.SourceActualEulerLogarithmicPrimitive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative06/Variantb156f18ed5bb4540bba060740d7b7b7a401529d00a7068644e6572861fbf819c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative06/Variantb156f18ed5bb4540bba060740d7b7b7a401529d00a7068644e6572861fbf819c.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5475191955a48dd82c667707d207bfa6738cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
