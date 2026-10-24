# problemP_of_complete_scalar_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba1c6dc1-49d7-98d4-1a2e-d3f60000c942",
  "kind": "theorem",
  "lexical_name": "problemP_of_complete_scalar_decomposition",
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
  "slug": "problemp-of-complete-scalar-decomposition--771730a974b22e1cc4f1dbe1",
  "source": {
    "blob": "6a7f31e36d7d82f01d4e0d94e52072631aa74142",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialComposition/Variantcf06448bf0668934a9e6b3542f05392bcbc077ed9a16d606984ab967ba466e3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:771730a974b22e1cc4f1dbe10f549572c6b7a49ced2763a296be15827f4d44ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialComposition/Variantcf06448bf0668934a9e6b3542f05392bcbc077ed9a16d606984ab967ba466e3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba1c6dc1-49d7-98d4-1a2e-d3f60000c942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem problemP_of_complete_scalar_decomposition {fixed trace residual : ℝ → ℝ}
    (hdecode : ∀ A : ℝ, 1 ≤ A → closedPrimeMoment A = fixed A + trace A + residual A)
    (hfixed : EventuallyPolynomialUpper fixed) (htrace : EventuallyPolynomialUpper trace)
    (hresidual : EventuallyPolynomialUpper residual) : ProblemP := by
  have h := polynomial_upper_add (polynomial_upper_add hfixed htrace) hresidual
  obtain ⟨m, D, R, hD, hR, h⟩ := h
  refine ⟨m, D, R, hD, hR, ?_⟩
  intro A hA
  rw [hdecode A (hR.trans hA)]
  exact h A hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialComposition/Variantcf06448bf0668934a9e6b3542f05392bcbc077ed9a16d606984ab967ba466e3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialComposition/Variantcf06448bf0668934a9e6b3542f05392bcbc077ed9a16d606984ab967ba466e3d.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a7f31e36d7d82f01d4e0d94e52072631aa74142` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
