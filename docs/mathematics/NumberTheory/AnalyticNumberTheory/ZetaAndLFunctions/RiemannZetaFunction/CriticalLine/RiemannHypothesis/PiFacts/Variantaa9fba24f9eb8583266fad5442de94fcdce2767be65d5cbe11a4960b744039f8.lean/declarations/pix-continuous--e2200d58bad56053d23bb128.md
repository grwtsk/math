# PiX_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfc6ff9dc2649b5928f3bbed3e2fbcc702bc3b71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb816d3e-2a02-7b0a-09b6-1ddd6c090524",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98a900d4-9ede-ebae-fd1e-b4f3eecd4b4d",
  "kind": "theorem",
  "lexical_name": "PiX_continuous",
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
  "slug": "pix-continuous--e2200d58bad56053d23bb128",
  "source": {
    "blob": "cfc6ff9dc2649b5928f3bbed3e2fbcc702bc3b71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 136,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2200d58bad56053d23bb128a0bb1089cb65dc9b04cafae4eda34eb54a1d7d16",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98a900d4-9ede-ebae-fd1e-b4f3eecd4b4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PiX_continuous {X : ℝ} (hX : 0 < X) : Continuous (PiX X) := by
  have hXc0 : (X : ℂ) ≠ 0 := by
    exact_mod_cast hX.ne'
  have hscont : Continuous fun τ : ℝ => (1 / 2 + Complex.I * (τ : ℂ)) :=
    continuous_const.add (continuous_const.mul Complex.continuous_ofReal)
  have hsne : ∀ τ : ℝ, (1 / 2 + Complex.I * (τ : ℂ)) ≠ 0 := by
    intro τ h
    have hre := congrArg Complex.re h
    simp at hre
  unfold PiX
  simp only []
  refine Continuous.add ?_ ?_
  · refine Continuous.div continuous_const ?_ fun τ => ?_
    · exact continuous_const.mul (continuous_const.add (continuous_pow 2))
    · positivity
  · refine continuous_const.mul (Complex.continuous_re.comp ?_)
    refine Continuous.div ?_ hscont hsne
    exact (hscont.const_cpow (Or.inl hXc0)).sub continuous_const

/-! ### [eq:Bdef]: the pointwise bound |ν_X(τ)| ≤ B + log⁺(|τ|/4T), B = l + 4√X

Paper (after [eq:deltan]): "We shall use the following pointwise bound for ν_X.
By (eq:mufacts), (eq:PiPfacts) and (eq:cheb1), for T ≥ T₀,
  |ν_X(τ)| ≤ B + log⁺(|τ|/4T)  (τ ∈ ℝ),  |ν_X(τ)| ≤ B  (|τ| ≤ 4T),
  B := l + 4√X,  B² ≪ l² + X."                                        [eq:Bdef]

The μ-part consumes the H-Γ fields, so these lemmas take
hΓ : GammaFacts as a hypothesis — conditional on H-Γ exactly as the paper's §5.
The P_X-part uses the Chebyshev bound Zeta23.Cheb.chebyshevMertens.cheb1b
(paper's literal Σ_{n≤X} Λ(n)/√n ≤ 3√X for X ≥ x₀, absorbed into T₀), so no
Chebyshev hypothesis is needed. -/

section NuBound

open ArithmeticFunction in
/-- Triangle inequality for [eq:Pdef]: |P_X(τ)| ≤ (1/π)·Σ_{n≤X} Λ(n)/√n. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PiFacts/Variantaa9fba24f9eb8583266fad5442de94fcdce2767be65d5cbe11a4960b744039f8.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfc6ff9dc2649b5928f3bbed3e2fbcc702bc3b71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
