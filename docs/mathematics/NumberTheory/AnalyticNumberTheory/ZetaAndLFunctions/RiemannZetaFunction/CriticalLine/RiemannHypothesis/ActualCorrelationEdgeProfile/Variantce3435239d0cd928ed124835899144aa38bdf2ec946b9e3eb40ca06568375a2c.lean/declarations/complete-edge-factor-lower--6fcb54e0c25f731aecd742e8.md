# complete_edge_factor_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93bcf758-536a-7889-2a19-dae6cb9798ff",
  "kind": "theorem",
  "lexical_name": "complete_edge_factor_lower",
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
  "slug": "complete-edge-factor-lower--6fcb54e0c25f731aecd742e8",
  "source": {
    "blob": "e4375f47001ea7eb63829ca0eb246b6c7511398d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeProfile/Variantce3435239d0cd928ed124835899144aa38bdf2ec946b9e3eb40ca06568375a2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fcb54e0c25f731aecd742e8e169b89eaa4bc85623800f21e57cb00747d81c7e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeProfile/Variantce3435239d0cd928ed124835899144aa38bdf2ec946b9e3eb40ca06568375a2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93bcf758-536a-7889-2a19-dae6cb9798ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_edge_factor_lower {A s : ℝ} (hA : 8 ≤ A)
    (hs0 : 0 ≤ s) (hs2 : s ≤ 2) : 1 ≤ edgeFactor A s := by
  have hpos : 0 < A := by linarith
  have hu0 : 0 ≤ s / A := div_nonneg hs0 hpos.le
  have hu1 : s / A ≤ 1 / 4 := (div_le_iff₀ hpos).mpr (by linarith)
  have hz : (A - s) / A = 1 - s / A := by field_simp
  have hq1 : 1 ≤ (2 - s / A) ^ 2 := by nlinarith
  have hq4 : (2 - s / A) ^ 2 ≤ 4 := by nlinarith
  have hz2 : 9 / 16 ≤ ((A - s) / A) ^ 2 := by rw [hz]; nlinarith
  have hs4 : s ^ 2 ≤ 4 := by nlinarith
  have hprod : s ^ 2 * (2 - s / A) ^ 2 ≤ 16 :=
    (mul_le_mul hs4 hq4 (sq_nonneg _) (by norm_num)).trans (by norm_num)
  have hb : 1 ≤ 8 * (7 * ((A - s) / A) ^ 2 - 1) -
      s ^ 2 * (2 - s / A) ^ 2 / 4 := by nlinarith
  unfold edgeFactor
  nlinarith [mul_nonneg (sub_nonneg.mpr hq1) (sub_nonneg.mpr hb)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeProfile/Variantce3435239d0cd928ed124835899144aa38bdf2ec946b9e3eb40ca06568375a2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeProfile/Variantce3435239d0cd928ed124835899144aa38bdf2ec946b9e3eb40ca06568375a2c.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4375f47001ea7eb63829ca0eb246b6c7511398d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
