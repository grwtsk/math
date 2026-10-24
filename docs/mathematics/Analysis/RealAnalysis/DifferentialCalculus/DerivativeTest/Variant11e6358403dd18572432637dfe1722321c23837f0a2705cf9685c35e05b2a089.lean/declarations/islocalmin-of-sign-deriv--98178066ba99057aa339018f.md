# isLocalMin_of_sign_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7954cbb3-7064-d6b4-9f84-2965ebcb59ec",
  "kind": "theorem",
  "lexical_name": "isLocalMin_of_sign_deriv",
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
  "slug": "islocalmin-of-sign-deriv--98178066ba99057aa339018f",
  "source": {
    "blob": "72104ad17098b03b48952f53e52cd894e9999582",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 403,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98178066ba99057aa339018f7b3ef6329517d0651d4f674e04014641877ab7e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7954cbb3-7064-d6b4-9f84-2965ebcb59ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalMin_of_sign_deriv {f : ℝ → ℝ} {x₀ : ℝ} (h : ContinuousAt f x₀)
    (hf : ∀ᶠ x in 𝓝[≠] x₀, sign (deriv f x) = sign (x - x₀)) :
    IsLocalMin f x₀ := by
  refine neg_neg f ▸ (isLocalMax_of_sign_deriv (f := (-f ·)) h.neg ?foo |>.neg)
  simpa [Left.sign_neg, -neg_sub, ← neg_sub _ x₀, deriv.neg]

/-- The Second-Derivative Test from calculus, minimum version.
Applies to functions like `x^2 + 1[x ≥ 0]` as well as twice differentiable
functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeTest/Variant11e6358403dd18572432637dfe1722321c23837f0a2705cf9685c35e05b2a089.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72104ad17098b03b48952f53e52cd894e9999582` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
