# weighted_selberg_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8753649f-e54f-a96e-a8b2-15689d6b6389",
  "kind": "theorem",
  "lexical_name": "weighted_selberg_identity",
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
  "slug": "weighted-selberg-identity--275458b21d85c4c8a061566c",
  "source": {
    "blob": "87ca27a8b38295851f8ab5f835490e3cc795865e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransport/Variant44167f960e89264c4528486672dc40735cf750c2a0092a648f5d0b8f36182af1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:275458b21d85c4c8a061566cd7fc288d0ded7d1906f9b711b6784f27859afe5a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransport/Variant44167f960e89264c4528486672dc40735cf750c2a0092a648f5d0b8f36182af1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8753649f-e54f-a96e-a8b2-15689d6b6389`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_selberg_identity (A : ℝ) (n : ℕ) (hn : 2 ≤ n) :
    selbergCoefficient n * selbergSourceWeight A n =
      ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
        sourceCorrelation explicitSecondDerivative A (Real.log n) +
      (∑ d ∈ n.divisors,
        ArithmeticFunction.vonMangoldt d * ArithmeticFunction.vonMangoldt (n / d)) *
          selbergSourceWeight A n := by
  have hnR : (1 : ℝ) < n := by exact_mod_cast (show 1 < n by omega)
  have hl : Real.log (n : ℝ) ≠ 0 := (Real.log_pos hnR).ne'
  unfold selbergCoefficient selbergSourceWeight
  field_simp

/-- The Selberg rearrangement is bound to the complete original source sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransport/Variant44167f960e89264c4528486672dc40735cf750c2a0092a648f5d0b8f36182af1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransport/Variant44167f960e89264c4528486672dc40735cf750c2a0092a648f5d0b8f36182af1.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87ca27a8b38295851f8ab5f835490e3cc795865e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
