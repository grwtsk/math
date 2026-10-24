# hasSum_difference_of_derivative_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9088aefd-053b-eac7-47f4-157480dc6341",
  "kind": "theorem",
  "lexical_name": "hasSum_difference_of_derivative_limit",
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
  "slug": "hassum-difference-of-derivative-limit--e3fd531a9b876ab383816e8f",
  "source": {
    "blob": "a137138042801b801618e03a55b5b53cdd321ed8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 285,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3fd531a9b876ab383816e8f2d9995928b4532c991fe59c25c87a3854845fc2a",
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

Occurrence: `result:9088aefd-053b-eac7-47f4-157480dc6341`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_difference_of_derivative_limit (h : EulerDerivativeLimit)
    {a : ℝ} (ha : 0 < a) (b : ℝ) :
    HasSum (fun n : ℕ ↦ b ^ 2 / ((a + n) * ((a + n) ^ 2 + b ^ 2)))
      ((Complex.digamma (a + b * Complex.I)).re - (Complex.digamma a).re) := by
  apply (hasSum_iff_tendsto_nat_of_nonneg (fun n ↦ by positivity) _).mpr
  apply (tendsto_add_atTop_iff_nat 1).mp
  have hab : 0 < ((a : ℂ) + b * Complex.I).re := by simpa using ha
  have ht := Complex.continuous_re.continuousAt.tendsto.comp
    ((logDeriv_tendsto_of_derivative_limit h hab).sub
      (logDeriv_tendsto_of_derivative_limit h (z := (a : ℂ)) (by simpa using ha)))
  simp only [Complex.sub_re] at ht
  apply ht.congr'
  filter_upwards [eventually_ne_atTop 0] with n hn
  exact gammaSeq_difference ha b hn

/-- Euler approximation converges after differentiation, proved from its locally uniform
    positive-half-plane convergence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variant5cc2726c925374f7241eed8fc8a57ceadd10c515a18e60ce7efd5c526f7a624d.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a137138042801b801618e03a55b5b53cdd321ed8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
