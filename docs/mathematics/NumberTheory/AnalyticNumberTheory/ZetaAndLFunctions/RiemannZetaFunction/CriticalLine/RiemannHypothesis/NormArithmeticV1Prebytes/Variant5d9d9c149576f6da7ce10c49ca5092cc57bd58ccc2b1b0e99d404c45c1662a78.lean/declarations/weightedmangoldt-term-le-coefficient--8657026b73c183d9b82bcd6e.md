# weightedMangoldt_term_le_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:328921cd-2062-138f-a3c8-05f5278345da",
  "kind": "theorem",
  "lexical_name": "weightedMangoldt_term_le_coefficient",
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
  "slug": "weightedmangoldt-term-le-coefficient--8657026b73c183d9b82bcd6e",
  "source": {
    "blob": "9d58848e723bc15a46cca7704082ffa342a4fe70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 229,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8657026b73c183d9b82bcd6e23d89aabfb5c9e948fb877e7d1eb5d4f002dbf0c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:328921cd-2062-138f-a3c8-05f5278345da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMangoldt_term_le_coefficient {n : ℕ} (hn : 1 ≤ n) :
    vonMangoldt n / (n : ℝ) ≤ mangoldtCoefficient n := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have h := Real.exp_le_exp.mpr (show -Real.log (n : ℝ) ≤
    -Real.log (n : ℝ) / 2 by linarith)
  rw [Real.exp_neg, Real.exp_log hnR] at h
  simpa only [mangoldtCoefficient, div_eq_mul_inv] using
    mul_le_mul_of_nonneg_left h (vonMangoldt_nonneg (n := n))

/-- The existing closed-prefix inventory adapter deletes only the zero n=1 term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variant5d9d9c149576f6da7ce10c49ca5092cc57bd58ccc2b1b0e99d404c45c1662a78.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d58848e723bc15a46cca7704082ffa342a4fe70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
