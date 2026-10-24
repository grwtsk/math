# erfInner_contDiff_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d84cfa8-e214-9073-cbdf-50d05d9c9597",
  "kind": "theorem",
  "lexical_name": "erfInner_contDiff_nat",
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
  "slug": "erfinner-contdiff-nat--eab0c036b3046d049b100428",
  "source": {
    "blob": "a5d77910a9e93a11e86c3302ea1599c8aaba4194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2079,
    "line": 2054,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eab0c036b3046d049b100428c502ffa4088124b35056a63853b45a88043f97d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d84cfa8-e214-9073-cbdf-50d05d9c9597`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2054–2079.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem erfInner_contDiff_nat (n : ℕ) : ContDiff ℝ n erfInner := by
  induction n with
  | zero =>
    -- C^0 = continuous
    refine contDiff_zero.mpr ?_
    have hcont : Continuous (fun t => Real.exp (-(t^2))) :=
      Real.continuous_exp.comp (continuous_neg.comp (continuous_pow 2))
    have h_int : ∀ a b : ℝ, IntervalIntegrable (fun t => Real.exp (-(t^2))) MeasureTheory.volume a b :=
      fun a b => hcont.intervalIntegrable a b
    exact intervalIntegral.continuous_primitive h_int 0
  | succ n _ih =>
    -- C^(n+1) from C^n of derivative
    have hdiff : Differentiable ℝ erfInner := fun x =>
      (Real.continuous_exp.comp (continuous_neg.comp (continuous_pow 2))).integral_hasStrictDerivAt 0 x
        |>.hasStrictFDerivAt.differentiableAt
    have hderiv_smooth : ContDiff ℝ n (deriv erfInner) := by
      simp only [erfInner_deriv]
      exact contDiff_exp_neg_sq.of_le le_top
    exact contDiff_succ_iff_deriv.mpr ⟨hdiff, by simp, hderiv_smooth⟩


/-! ### Computable atanh interval via endpoint evaluation -/

/-- Computable interval enclosure for atanh using endpoint evaluation.
    Since atanh is strictly increasing on (-1, 1), we evaluate at endpoints.
    Requires the interval to be strictly inside (-1, 1); returns a wide fallback otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean#L2054).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d77910a9e93a11e86c3302ea1599c8aaba4194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
