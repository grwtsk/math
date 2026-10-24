# chebyshev_prime_power_ibp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d9832d6237c01078cf6aa307e3f7dcd1d05df3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fa36445-1ed1-4487-48a1-edf0da3f7271",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ab6ad13-084f-8f0b-af00-4c5039bfb022",
  "kind": "theorem",
  "lexical_name": "chebyshev_prime_power_ibp",
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
  "slug": "chebyshev-prime-power-ibp--eddcf931f78446ffc42262e1",
  "source": {
    "blob": "7d9832d6237c01078cf6aa307e3f7dcd1d05df3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eddcf931f78446ffc42262e1d6abe8e94bbede99ac9c9143144f433cfc66128b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ab6ad13-084f-8f0b-af00-4c5039bfb022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshev_prime_power_ibp (b : ℝ) (hb : lowerEndpoint ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ t in lowerEndpoint..b, chebyshevError (Real.exp t) * deriv F t) =
      chebyshevError (Real.exp b) * F b -
        ∑ n ∈ primePowerInventory b, ArithmeticFunction.vonMangoldt n * F (Real.log n) +
      2 * F lowerEndpoint + ∫ t in lowerEndpoint..b, Real.exp t * F t := by
  have hexp := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    Real.continuous_exp.continuousOn hF.continuous.continuousOn
    (fun t _ ↦ Real.hasDerivAt_exp t)
    (fun t _ ↦ ((contDiff_one_iff_deriv.mp hF).1 t).hasDerivAt)
    (Real.continuous_exp.intervalIntegrable lowerEndpoint b)
    (hF.continuous_deriv_one.intervalIntegrable lowerEndpoint b)
  have hcontinuous : Continuous (fun t ↦ Real.exp t * deriv F t) :=
    Real.continuous_exp.mul hF.continuous_deriv_one
  simp only [chebyshevError, sub_mul]
  rw [intervalIntegral.integral_sub
    (chebyshev_mul_deriv_intervalIntegrable b hb F hF)
    (hcontinuous.intervalIntegrable lowerEndpoint b),
    chebyshev_prime_power_step_integral b hb F hF, hexp]
  rw [lowerEndpoint, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  ring

/-- The source's exponentially weighted test, without a weak-family realization assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant636489aab44865316017a0db2f7c6733dcb076bc15af699748c6401230ee9373.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d9832d6237c01078cf6aa307e3f7dcd1d05df3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
