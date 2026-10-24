# shortDivisorCumulative_eq_psi_of_floor_le_two_mul_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a7408b1-0388-556e-d97e-d07301ea9342",
  "kind": "theorem",
  "lexical_name": "shortDivisorCumulative_eq_psi_of_floor_le_two_mul_add_one",
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
  "slug": "shortdivisorcumulative-eq-psi-of-floor-le-two-mul-add-one--918c8fad00c07e67e8ca1f6f",
  "source": {
    "blob": "d1b0f93d475681dfae998c738b88886359c31bbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictComplementaryDoubledPrefix/Variant5f87f5b35a5c28ba225c0dfe9714a649c2c97abdebfc3d665465bfafb349ffeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:918c8fad00c07e67e8ca1f6f11142e2583f4f2f494a5dc9ceaf057af99d9fdbd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictComplementaryDoubledPrefix/Variant5f87f5b35a5c28ba225c0dfe9714a649c2c97abdebfc3d665465bfafb349ffeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a7408b1-0388-556e-d97e-d07301ea9342`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortDivisorCumulative_eq_psi_of_floor_le_two_mul_add_one {U : ℕ} {x : ℝ}
    (hx : ⌊x⌋₊ ≤ 2 * U + 1) : shortDivisorCumulative U x = Chebyshev.psi x := by
  unfold shortDivisorCumulative
  rw [Chebyshev.psi_eq_sum_Icc]
  apply Finset.sum_congr rfl
  intro n hn
  have hz := strictDivisorLogCoefficient_zero_of_le_two_mul_add_one
    ((Finset.mem_Icc.mp hn).2.trans hx)
  have hs := strict_add_short_eq_vonMangoldt U n
  rw [hz, zero_add] at hs
  exact hs

/-- Actual G is exactly the negative closed floor, including the last integer 2U+1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictComplementaryDoubledPrefix/Variant5f87f5b35a5c28ba225c0dfe9714a649c2c97abdebfc3d665465bfafb349ffeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceStrictComplementaryDoubledPrefix/Variant5f87f5b35a5c28ba225c0dfe9714a649c2c97abdebfc3d665465bfafb349ffeb.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b0f93d475681dfae998c738b88886359c31bbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
