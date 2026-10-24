# gammaSeq_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07c45389-6455-4b8c-55ea-101cb893952e",
  "kind": "theorem",
  "lexical_name": "gammaSeq_error_bound",
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
  "slug": "gammaseq-error-bound--7aa40102444ee4306850f385",
  "source": {
    "blob": "a137138042801b801618e03a55b5b53cdd321ed8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 209,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aa40102444ee4306850f3855ae0f46b008757691a50634d4167cff84a067455",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07c45389-6455-4b8c-55ea-101cb893952e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gammaSeq_error_bound {a b : ℝ} (ha : 0 < a) (hb : 0 < b)
    {z : ℂ} (hza : a ≤ z.re) (hzb : z.re ≤ b) {n : ℕ} (hn : n ≠ 0) :
    ‖Complex.Gamma z - Complex.GammaSeq z n‖ ≤
      ∫ x : ℝ in Ioi 0, errorEnvelope n a b x := by
  have hz : 0 < z.re := ha.trans_le hza
  rw [Complex.Gamma_eq_integral hz, Complex.GammaIntegral, gammaSeq_integral hz hn,
    ← integral_sub (Complex.GammaIntegral_convergent hz) (euler_integrand_integrable hz n)]
  apply norm_integral_le_of_norm_le (errorEnvelope_integrable ha hb n)
  apply (ae_restrict_iff' measurableSet_Ioi).mpr
  filter_upwards with x hx
  rw [← sub_mul, ← Complex.ofReal_sub, norm_mul,
    Complex.norm_of_nonneg (sub_nonneg.mpr (eulerKernel_le n x)),
    Complex.norm_cpow_eq_rpow_re_of_pos hx, Complex.sub_re, Complex.one_re]
  exact mul_le_mul_of_nonneg_left (rpow_strip_bound hx hza hzb)
    (sub_nonneg.mpr (eulerKernel_le n x))

/-- Euler's finite Gamma approximants converge uniformly on every positive real-part
    strip, including unbounded imaginary coordinate; the error bound is independent of it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a137138042801b801618e03a55b5b53cdd321ed8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
