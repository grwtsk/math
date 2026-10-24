# GammaFactsChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c920b89593a16f2edbb94182c5042ffe4d27a78e1f3a95f370eaaea3e7a997c6",
  "kind": "structure",
  "lexical_name": "GammaFactsChi",
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
  "slug": "gammafactschi--4b98c62897e3271110ac171c",
  "source": {
    "blob": "65062889f76af387d3e9feebf0d972e482aa4e16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant71e110346f37789777718d6b9e4ff68e41b4a726a3efe47a3803ecf89f2fad08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b98c62897e3271110ac171c32b0fc30f316e70f4002c53f30b155f908b58bb1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant71e110346f37789777718d6b9e4ff68e41b4a726a3efe47a3803ecf89f2fad08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c920b89593a16f2edbb94182c5042ffe4d27a78e1f3a95f370eaaea3e7a997c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GammaFactsChi (κ q : ℕ) : Prop where
  even : ∀ τ : ℝ, muq κ q (-τ) = muq κ q τ
  smooth : ContDiff ℝ ⊤ (muq κ q)
  monotoneOn : MonotoneOn (muq κ q) (Ici 0)
  mu_zero_le : ∀ τ : ℝ, muq κ q 0 ≤ muq κ q τ
  neg_one_lt_mu_zero : -1 < muq κ q 0
  stirling : ∃ C : ℝ, ∀ τ : ℝ, 1 ≤ |τ| →
    |muq κ q τ - (1 / (2 * Real.pi)) * Real.log (q * |τ| / (2 * Real.pi))| ≤ C / τ ^ 2
  deriv_bound : ∃ C : ℝ, ∀ τ : ℝ, 1 ≤ |τ| → |deriv (muq κ q) τ| ≤ C / |τ|
  int_mu : ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T →
    |(∫ τ in T..(2 * T), muq κ q τ) - T * ell1q q T / (2 * Real.pi)| ≤ C / T
  int_mu_sq : ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T →
    |(∫ τ in T..(2 * T), muq κ q τ ^ 2) - T * ell1q q T ^ 2 / (4 * Real.pi ^ 2)|
      ≤ C * (T * ell1q q T ^ 2 / (4 * Real.pi ^ 2)) / l T ^ 2

/-- **The Chebyshev–Mertens bounds for the coefficients Λ(n)χ(n)** ([thm:E] proof (iii): "|Λ(n)χ(n)| =
Λ(n)·1_{(n,q)=1}, so Lemma lem:cheb holds for these coefficients with O_q(·) errors (finitely many
primes removed)").  Since only |a_n| enters, and |χ(n)| ≤ 1, the UPPER bounds of [lem:cheb] hold
verbatim; the two-sided [eq:cheb2] asymptotics need the (n,q)=1 restriction.  Stated here in
hypothesis shape (cf. `Zeta23.Cheb.chebyshevMertens`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant71e110346f37789777718d6b9e4ff68e41b4a726a3efe47a3803ecf89f2fad08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Hypotheses/Variant71e110346f37789777718d6b9e4ff68e41b4a726a3efe47a3803ecf89f2fad08.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65062889f76af387d3e9feebf0d972e482aa4e16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
