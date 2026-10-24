# CoeffUnimodular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a37d2bd835d159664590e363b87230fe86097ac5ca94f8f214a869683d82a41",
  "kind": "structure",
  "lexical_name": "CoeffUnimodular",
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
  "slug": "coeffunimodular--7a592dab035b4b42000fca48",
  "source": {
    "blob": "b9ede0bad210c47dde7b2d1c3923048de8da05e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant668f034a989b3b4ff99a78186133d10c8db7c48963d753c800ee44bd5041c8f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a592dab035b4b42000fca486a63593b2a7191917e75a0305e1ac853011e3f72",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant668f034a989b3b4ff99a78186133d10c8db7c48963d753c800ee44bd5041c8f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a37d2bd835d159664590e363b87230fe86097ac5ca94f8f214a869683d82a41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoeffUnimodular (q : ℕ) (c : ℕ → ℂ) : Prop extends CoeffOK q c where
  norm_eq : ∀ n, 0 < n → Nat.Coprime n q → ‖c n‖ = 1

/-! ## 2. The published inputs, restated for L(s,χ)  (abstract zero configuration Z) -/

/-- **H-EF(χ), paper form** ([thm:E] proof (i) applied to [prop:EF]/[eq:EF]): for f,g ∈ C_c²(ℝ) with
supports in [−L/2, L/2],  W_χ(f,g) = ∫_ℝ h_f(τ) conj(h_g(τ)) ν_{X,χ}(τ) dτ, X = e^L, with the zero sum
absolutely convergent and the integrand integrable (same shape as `Zeta23.ExplicitFormulaPaper`, whose
ν_X is replaced by ν_{X,χ}). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant668f034a989b3b4ff99a78186133d10c8db7c48963d753c800ee44bd5041c8f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant668f034a989b3b4ff99a78186133d10c8db7c48963d753c800ee44bd5041c8f3.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9ede0bad210c47dde7b2d1c3923048de8da05e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
