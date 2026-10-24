# isMinOn_Ioc_of_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3c08609-27d4-895d-7562-4a9fe113b033",
  "kind": "lemma",
  "lexical_name": "isMinOn_Ioc_of_deriv",
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
  "slug": "isminon-ioc-of-deriv--1023ffa0278d1f90325cce4a",
  "source": {
    "blob": "72104ad17098b03b48952f53e52cd894e9999582",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 213,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1023ffa0278d1f90325cce4a8e4c4ec9e5d4552b43378e98de429ee3cf1b8030",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3c08609-27d4-895d-7562-4a9fe113b033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isMinOn_Ioc_of_deriv {f : ℝ → ℝ} {a b c : ℝ} (hb : ContinuousAt f b) (hc : ContinuousAt f c)
    (hd₀ : DifferentiableOn ℝ f (Ioo a b)) (hd₁ : DifferentiableOn ℝ f (Ioo b c))
    (h₀ : ∀ x ∈ Ioo a b, deriv f x ≤ 0) (h₁ : ∀ x ∈ Ioo b c, 0 ≤ deriv f x) :
    IsMinOn f (Ioc a c) b := by
  refine isMinOn_Ioc_of_anti_mono ?_ ?_
  · apply antitoneOn_of_deriv_nonpos (convex_Ioc a b) (continuousOn_Ioc hb hd₀) <;> simp_all
  · apply monotoneOn_of_deriv_nonneg (convex_Icc b c) (continuousOn_Icc hb hc hd₁) <;> simp_all

/-- Suppose `f : ℝ → ℝ` is continuous at `a` and `b`, the derivative `f'` is nonpositive on
`Ioo a b` and nonnegative on `Ioo b c`. Then `f` attains its minimum on `Ico a c` at `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72104ad17098b03b48952f53e52cd894e9999582` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
