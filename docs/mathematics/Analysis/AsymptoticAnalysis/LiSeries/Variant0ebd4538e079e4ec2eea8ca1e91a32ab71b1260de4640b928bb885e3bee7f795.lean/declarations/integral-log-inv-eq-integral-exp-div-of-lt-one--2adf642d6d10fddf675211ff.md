# integral_log_inv_eq_integral_exp_div_of_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:040aa332-3c27-1231-4fc3-9c27ccd11774",
  "kind": "theorem",
  "lexical_name": "integral_log_inv_eq_integral_exp_div_of_lt_one",
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
  "slug": "integral-log-inv-eq-integral-exp-div-of-lt-one--2adf642d6d10fddf675211ff",
  "source": {
    "blob": "89ef6f525685569b90716827903f2340987df587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 468,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2adf642d6d10fddf675211ff1f3aff8f4b3cf53594905c9303350d23abc2c2fd",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:040aa332-3c27-1231-4fc3-9c27ccd11774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_log_inv_eq_integral_exp_div_of_lt_one {a b : ℝ}
    (ha : 0 < a) (hab : a ≤ b) (hb1 : b < 1) :
    ∫ t in a..b, 1 / log t = ∫ u in log a..log b, exp u / u := by
  have hb0 : (0 : ℝ) < b := lt_of_lt_of_le ha hab
  have key : ∫ u in log a..log b, ((fun t => 1 / log t) ∘ exp) u * exp u =
      ∫ t in exp (log a)..exp (log b), 1 / log t :=
    intervalIntegral.integral_comp_mul_deriv'
      (fun x _ => Real.hasDerivAt_exp x)
      continuous_exp.continuousOn
      ?_
  · rw [exp_log ha, exp_log hb0] at key
    rw [← key]
    apply intervalIntegral.integral_congr_ae
    apply Filter.Eventually.of_forall
    intro u _
    simp only [Function.comp, Real.log_exp]
    ring
  · apply ContinuousOn.mono (s := Set.Icc a b)
    · apply ContinuousOn.div continuousOn_const
      · exact continuousOn_log.mono (fun x hx => ne_of_gt (by linarith [hx.1]))
      · intro x hx; exact ne_of_lt (Real.log_neg (by linarith [hx.1]) (by linarith [hx.2]))
    · intro x hx
      have hsub := exp_strictMono.monotone.image_uIcc_subset (a := log a) (b := log b) hx
      rw [exp_log ha, exp_log hb0] at hsub
      rw [Set.uIcc_of_le (Real.log_le_log ha hab)] at hx
      rw [Set.uIcc_of_le hab] at hsub
      exact hsub

/-! ## Part D'': Connecting li(x) to the PV exponential integral -/

/-- For x > 1 and small ε, the set integral in the definition of li(x) splits into
    two interval integrals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ef6f525685569b90716827903f2340987df587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
