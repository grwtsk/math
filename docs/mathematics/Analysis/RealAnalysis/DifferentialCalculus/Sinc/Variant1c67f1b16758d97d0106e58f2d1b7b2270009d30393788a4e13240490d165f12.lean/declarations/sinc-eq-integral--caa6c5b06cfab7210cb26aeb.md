# sinc_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c155e15f1b59fe5465099559191856416a60cfd5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 307,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afa46d96-1deb-97d7-0c20-efd364a309b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcb9e7fb-c4a6-8449-1e58-b8297e5873d0",
  "kind": "theorem",
  "lexical_name": "sinc_eq_integral",
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
  "slug": "sinc-eq-integral--caa6c5b06cfab7210cb26aeb",
  "source": {
    "blob": "c155e15f1b59fe5465099559191856416a60cfd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 307,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caa6c5b06cfab7210cb26aeb7b4c7bd007ffae97135bb7cee41f1162c8b68aac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcb9e7fb-c4a6-8449-1e58-b8297e5873d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sinc_eq_integral (x : ℝ) : sinc x = ∫ t in (0 : ℝ)..1, cos (t * x) := by
  rcases eq_or_ne x 0 with rfl | hx
  · -- Case x = 0: both sides equal 1
    simp only [sinc_zero, mul_zero, cos_zero]
    rw [intervalIntegral.integral_const, sub_zero, smul_eq_mul, mul_one]
  · -- Case x ≠ 0: use fundamental theorem of calculus
    have hcont : Continuous (fun t => cos (t * x)) := continuous_cos.comp (continuous_mul_const x)
    have hderiv : ∀ t, HasDerivAt (fun u => sin (u * x) / x) (cos (t * x)) t := by
      intro t
      have : HasDerivAt (fun u => sin (u * x)) (x * cos (t * x)) t := by
        have := Real.hasDerivAt_sin (t * x)
        convert HasDerivAt.comp t this (hasDerivAt_mul_const x) using 1
        ring
      convert this.div_const x using 1
      field_simp
    -- The antiderivative is sin(tx)/x, which is continuous
    have hcont_anti : ContinuousOn (fun t => sin (t * x) / x) (Set.Icc 0 1) :=
      (continuous_sin.comp (continuous_mul_const x)).continuousOn.div_const x
    -- cos(tx) is interval integrable since it's continuous
    have hint : IntervalIntegrable (fun t => cos (t * x)) volume 0 1 :=
      hcont.intervalIntegrable 0 1
    rw [integral_eq_sub_of_hasDerivAt_of_le (by norm_num : (0 : ℝ) ≤ 1)
        hcont_anti (fun t _ => hderiv t) hint]
    simp only [one_mul, zero_mul, sin_zero, zero_div, sub_zero]
    rw [sinc_of_ne_zero hx]

/-- The derivative of sinc equals dslope (cos - sinc) at 0.

For x ≠ 0:
  dslope (cos - sinc) 0 x = (cos x - sinc x) / x = (x cos x - sin x) / x² = deriv sinc x

For x = 0:
  dslope (cos - sinc) 0 0 = deriv (cos - sinc) 0 = -sin 0 - deriv sinc 0 = 0 = deriv sinc 0
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c155e15f1b59fe5465099559191856416a60cfd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
