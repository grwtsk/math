# divisorRemainderVector_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a66aa77-dd51-616d-a93f-49772632d65f",
  "kind": "theorem",
  "lexical_name": "divisorRemainderVector_norm_le",
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
  "slug": "divisorremaindervector-norm-le--4ca1c70a0ddfa6685804f18f",
  "source": {
    "blob": "a533865da79a6d85881d42b41f6da7b91d661fb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ca1c70a0ddfa6685804f18f81fe31f53e69dc54cca47fca8e0d65216b31e0e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a66aa77-dd51-616d-a93f-49772632d65f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisorRemainderVector_norm_le (ε : ℝ) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    ‖divisorRemainderVector ε hε Y hY‖ ≤ ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2 := by
  have hm := divisorRemainderCore_memLp ε hε Y hY
  have hi := (memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).mp hm
  have hb : (∫ u : ℝ, ‖divisorRemainderCore ε Y u‖ ^ 2) ≤
      ε ^ 4 * (Y - 1) * Real.log Y ^ 4 := by
    calc
      _ ≤ ∫ u : ℝ, (Icc (0 : ℝ) (Real.log Y)).indicator
          (fun u : ℝ => ε ^ 4 * Real.exp u * Real.log Y ^ 4) u :=
        integral_mono_ae hi (remainderMajorant_integrable ε Y)
          (Filter.Eventually.of_forall (divisorRemainderCore_sq_le ε hε Y hY))
      _ = _ := by
        rw [integral_indicator measurableSet_Icc, integral_mul_const, integral_const_mul,
          integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le (Real.log_nonneg hY),
          integral_exp, Real.exp_log (by linarith : 0 < Y), Real.exp_zero]
  apply (sq_le_sq₀ (norm_nonneg _) (by positivity)).mp
  change ‖hm.toLp (divisorRemainderCore ε Y)‖ ^ 2 ≤ _
  rw [FullLinePlancherel.norm_sq_toLp]
  calc
    _ ≤ ε ^ 4 * (Y - 1) * Real.log Y ^ 4 := hb
    _ = _ := by rw [mul_pow, mul_pow, Real.sq_sqrt (by linarith : 0 ≤ Y - 1)]; ring

/-- The actual source multiplier preserves the admitted remainder's uniform quadratic budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormAudit/Variant9b4ecff20f73d5fe9323a76deb5afee1a064c501b023e3873646fb342b934dd4.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a533865da79a6d85881d42b41f6da7b91d661fb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
