# pair_parameters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d285b68f-1227-788c-c773-61abc27701bc",
  "kind": "theorem",
  "lexical_name": "pair_parameters",
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
  "slug": "pair-parameters--3535aadd1b468707ce84d617",
  "source": {
    "blob": "52b808c3776925575708810fcb34146374bd7b61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3535aadd1b468707ce84d617b22552a61b59df44c5824d93a55144f23762d9ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d285b68f-1227-788c-c773-61abc27701bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pair_parameters (δ γ : ℝ) (hγ : γ ≠ 0) :
    2 * pairScale δ γ * Real.cos (transverseAngle δ γ) =
      2 * (γ ^ 2 - δ ^ 2) / (δ ^ 2 + γ ^ 2) ^ 2 ∧
    pairScale δ γ ^ 2 = 1 / (δ ^ 2 + γ ^ 2) ^ 2 := by
  have hg : γ ^ 2 ≠ 0 := pow_ne_zero _ hγ
  have hD : δ ^ 2 + γ ^ 2 ≠ 0 := by
    have hgp : 0 < γ ^ 2 := sq_pos_of_ne_zero hγ
    nlinarith [sq_nonneg δ]
  have hQ : 1 + δ ^ 2 / γ ^ 2 ≠ 0 := by positivity
  constructor
  · unfold transverseAngle pairScale
    rw [cos_twice_arctan]
    simp only [div_pow, sq_abs]
    field_simp [hg, hD, hQ] <;> ring
  · simp [pairScale, div_pow]

/-- Clearing the actual conjugate-root denominators preserves their signed coefficients.
The nonzero-height condition is needed only when dividing this identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52b808c3776925575708810fcb34146374bd7b61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
