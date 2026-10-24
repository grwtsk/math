# primitive_mixed_second_integrals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd0680c9-e84b-bb43-b794-783657c28219",
  "kind": "theorem",
  "lexical_name": "primitive_mixed_second_integrals",
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
  "slug": "primitive-mixed-second-integrals--da5a5668ad3607bf7b9b61d4",
  "source": {
    "blob": "8a42ac1b4df53084f1664553258f4dab5dc33c36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variant76ac2011e13705675e5b6db560c0c8440949265fde1ce29f79247537ebe5e3f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da5a5668ad3607bf7b9b61d460f85f9d942d8af06778b900fd1f66bff08211d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variant76ac2011e13705675e5b6db560c0c8440949265fde1ce29f79247537ebe5e3f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd0680c9-e84b-bb43-b794-783657c28219`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_mixed_second_integrals {A : ℝ} (hA : 0 < A) (s : ℝ) :
    (∫ x : ℝ, deriv (deriv (normalizedPrimitiveBump A)) x *
      normalizedPrimitiveBump A (x - s)) = -primitiveCorrelationOne A s ∧
    (∫ x : ℝ, normalizedPrimitiveBump A x *
      deriv (deriv (normalizedPrimitiveBump A)) (x - s)) =
        -primitiveCorrelationOne A s := by
  let b := normalizedPrimitiveBump A
  have hc : ContDiff ℝ 2 b := normalizedPrimitiveBump_contDiff hA
  have hc' : ContDiff ℝ 1 (deriv b) := hc.deriv'
  have hb := hc.continuous
  have hb' := hc'.continuous
  have hb'' := hc'.continuous_deriv_one
  have hs : HasCompactSupport b := normalizedPrimitiveBump_hasCompactSupport hA
  have hd (x : ℝ) : HasDerivAt b (deriv b x) x :=
    (hc.differentiable (by norm_num) x).hasDerivAt
  have hd' (x : ℝ) : HasDerivAt (deriv b) (deriv (deriv b) x) x :=
    (hc'.differentiable (by norm_num) x).hasDerivAt
  have left := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := deriv b) (u' := deriv (deriv b))
    (v := fun x => b (x - s)) (v' := fun x => deriv b (x - s))
    (fun x _ => hd' x)
    (fun x _ => by
      simpa only [Function.comp_def, mul_one] using
        (hd (x - s)).comp x ((hasDerivAt_id x).sub_const s))
    (compact_shifted_product_integrable hb' hb' hs.deriv s)
    (compact_shifted_product_integrable hb'' hb hs.deriv.deriv s)
    (compact_shifted_product_integrable hb' hb hs.deriv s)
  have right := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := b) (u' := deriv b)
    (v := fun x => deriv b (x - s)) (v' := fun x => deriv (deriv b) (x - s))
    (fun x _ => hd x)
    (fun x _ => by
      simpa only [Function.comp_def, mul_one] using
        (hd' (x - s)).comp x ((hasDerivAt_id x).sub_const s))
    (compact_shifted_product_integrable hb hb'' hs s)
    (compact_shifted_product_integrable hb' hb' hs.deriv s)
    (compact_shifted_product_integrable hb hb' hs s)
  change (∫ x : ℝ, deriv (deriv b) x * b (x - s)) =
      -(∫ x : ℝ, deriv b x * deriv b (x - s)) ∧
    (∫ x : ℝ, b x * deriv (deriv b) (x - s)) =
      -(∫ x : ℝ, deriv b x * deriv b (x - s))
  exact ⟨by linarith, right⟩

/-- The unchanged q=b''-b/4 source retains its three signed primitive correlations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variant76ac2011e13705675e5b6db560c0c8440949265fde1ce29f79247537ebe5e3f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variant76ac2011e13705675e5b6db560c0c8440949265fde1ce29f79247537ebe5e3f3.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a42ac1b4df53084f1664553258f4dab5dc33c36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
