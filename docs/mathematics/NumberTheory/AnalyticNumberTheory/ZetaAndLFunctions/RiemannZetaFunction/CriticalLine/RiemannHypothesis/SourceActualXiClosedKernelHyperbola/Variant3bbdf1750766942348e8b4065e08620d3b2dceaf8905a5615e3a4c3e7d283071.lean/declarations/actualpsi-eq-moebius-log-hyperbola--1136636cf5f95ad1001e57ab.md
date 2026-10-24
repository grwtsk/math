# actualPsi_eq_moebius_log_hyperbola

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:659eecd9-695b-e0cc-4a5e-148a380c990a",
  "kind": "theorem",
  "lexical_name": "actualPsi_eq_moebius_log_hyperbola",
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
  "slug": "actualpsi-eq-moebius-log-hyperbola--1136636cf5f95ad1001e57ab",
  "source": {
    "blob": "e67a26b7d55e7afe4cc0400982108d20cd0ff3ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variant3bbdf1750766942348e8b4065e08620d3b2dceaf8905a5615e3a4c3e7d283071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1136636cf5f95ad1001e57abeddf3e83fe8c1148f34ec6475f1fa67d352153e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variant3bbdf1750766942348e8b4065e08620d3b2dceaf8905a5615e3a4c3e7d283071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:659eecd9-695b-e0cc-4a5e-148a380c990a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsi_eq_moebius_log_hyperbola (Y : ℝ) :
    Chebyshev.psi Y = ∑ d ∈ Finset.Icc 1 (Nat.floor Y), (moebius d : ℝ) *
      ∑ m ∈ Finset.Icc 1 (Nat.floor Y / d), Real.log (m : ℝ) := by
  have hh := sum_Ioc_mul_eq_sum_sum (moebius : ArithmeticFunction ℝ)
    ArithmeticFunction.log (Nat.floor Y)
  simp only [moebius_mul_log_eq_vonMangoldt, log_apply, intCoe_apply, ioc_zero_eq] at hh
  rw [psi_eq_positive_prefix]
  exact hh

/-- The closed psi boundary remains exact before any estimate of a signed quotient row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variant3bbdf1750766942348e8b4065e08620d3b2dceaf8905a5615e3a4c3e7d283071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variant3bbdf1750766942348e8b4065e08620d3b2dceaf8905a5615e3a4c3e7d283071.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e67a26b7d55e7afe4cc0400982108d20cd0ff3ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
