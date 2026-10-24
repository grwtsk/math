# edgeIntegrable_of_analytic_germs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b7bc09a-5763-6c54-9796-caa398db6ab4",
  "kind": "theorem",
  "lexical_name": "edgeIntegrable_of_analytic_germs",
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
  "slug": "edgeintegrable-of-analytic-germs--ec2885218ae9d9932e186bc0",
  "source": {
    "blob": "7e21eb584148f5bfbc9c959330c5578f2452ae79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 95,
    "path": "GRWTSK/Analysis/Complex/RectangularPoleReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec2885218ae9d9932e186bc02dade6ce04a9f2acace7f58ad4351e83fe7d39be",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b7bc09a-5763-6c54-9796-caa398db6ab4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edgeIntegrable_of_analytic_germs (f : ℂ → ℂ) (l r T : ℝ)
    (hlr : l ≤ r) (hT : 0 ≤ T)
    (hh : ∀ y : ℝ, |y| = T → ∀ u ∈ Icc l r,
      AnalyticAt ℂ f ((u : ℂ) + (y : ℂ) * Complex.I))
    (hv : ∀ c : ℝ, c = l ∨ c = r → ∀ t ∈ Icc (-T) T,
      AnalyticAt ℂ f ((c : ℂ) + (t : ℂ) * Complex.I)) :
    EdgeIntegrable f l r T := by
  have hpath (e : ℝ → ℂ) (he : Continuous e) (a b : ℝ) (hab : a ≤ b)
      (ha : ∀ t ∈ Icc a b, AnalyticAt ℂ f (e t)) :
      IntervalIntegrable (fun t => f (e t)) volume a b := by
    apply ContinuousOn.intervalIntegrable_of_Icc hab
    intro t ht
    exact ((ha t ht).continuousAt.comp he.continuousAt).continuousWithinAt
  exact ⟨hpath _ (by fun_prop) l r hlr (hh (-T) (by simp [abs_of_nonneg hT])),
    hpath _ (by fun_prop) l r hlr (hh T (abs_of_nonneg hT)),
    hpath _ (by fun_prop) (-T) T (by linarith) (hv r (Or.inr rfl)),
    hpath _ (by fun_prop) (-T) T (by linarith) (hv l (Or.inl rfl))⟩

/-- Finite meromorphic data reduce the actual closed integral to explicit Cauchy kernels.
No winding-number value, residue integral or analytic remainder is a hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RectangularPoleReduction.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e21eb584148f5bfbc9c959330c5578f2452ae79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
