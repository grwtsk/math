# taylor_mean_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "088700ed9f2d0b74a86d1238b938bb0070c7f297",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:018adbcd-4124-ec50-b8ba-a2b554ad5181",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d59e6cb1-79ec-cd29-34ac-43e133c2bedf",
  "kind": "theorem",
  "lexical_name": "taylor_mean_remainder",
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
  "slug": "taylor-mean-remainder--12ffd149ef8d1b2fba9927ea",
  "source": {
    "blob": "088700ed9f2d0b74a86d1238b938bb0070c7f297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 301,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12ffd149ef8d1b2fba9927ea775ee2d8816aea3cc7f54cd6b20b70f9c6919a22",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d59e6cb1-79ec-cd29-34ac-43e133c2bedf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylor_mean_remainder {f : ℝ → ℝ} {g g' : ℝ → ℝ} {x x₀ : ℝ} {n : ℕ} (hx : x₀ ≠ x)
    (hf : ContDiffOn ℝ n f (uIcc x₀ x))
    (hf' : DifferentiableOn ℝ (iteratedDerivWithin n f (uIcc x₀ x)) (uIoo x₀ x))
    (gcont : ContinuousOn g (uIcc x₀ x))
    (gdiff : ∀ x_1 : ℝ, x_1 ∈ uIoo x₀ x → HasDerivAt g (g' x_1) x_1)
    (g'_ne : ∀ x_1 : ℝ, x_1 ∈ uIoo x₀ x → g' x_1 ≠ 0) :
    ∃ x' ∈ uIoo x₀ x, f x - taylorWithinEval f n (uIcc x₀ x) x₀ x = ((x - x') ^ n / n ! *
      (g x - g x₀) / g' x') • iteratedDerivWithin (n + 1) f (uIcc x₀ x) x' := by
  have hx₁ : min x₀ x < max x₀ x := by grind
  -- We apply the mean value theorem
  rcases exists_ratio_hasDerivAt_eq_ratio_slope (fun t => taylorWithinEval f n (uIcc x₀ x) t x)
      (fun t => ((n ! : ℝ)⁻¹ * (x - t) ^ n) • iteratedDerivWithin (n + 1) f (uIcc x₀ x) t) hx₁
      (continuousOn_taylorWithinEval (uniqueDiffOn_Icc hx₁) hf)
      (fun _ hy => taylorWithinEval_hasDerivAt_Ioo x hx₁ hy hf hf')
    g g' gcont gdiff with ⟨y, hy, h⟩
  use y, hy
  -- The rest is simplifications and trivial calculations
  grind [uIoo, smul_eq_mul, taylorWithinEval_self]

-- see https://github.com/leanprover-community/mathlib4/issues/29041
set_option linter.unusedSimpArgs false in
/-- **Taylor's theorem** with the Lagrange form of the remainder.

We assume that `f` is `n`-times continuously differentiable in the closed set `uIcc x₀ x` and
`n+1`-times differentiable on the open set `uIoo x₀ x`. Then there exists an `x' ∈ uIoo x₀ x` such
that
$$f(x) - (P_n f)(x₀, x) = \frac{f^{(n+1)}(x') (x - x₀)^{n+1}}{(n+1)!},$$
where $P_n f$ denotes the Taylor polynomial of degree $n$ and $f^{(n+1)}$ is the $n+1$-th iterated
derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `088700ed9f2d0b74a86d1238b938bb0070c7f297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
