# attenuated_near_diagonal_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfdc9b0e-3577-79c1-03ef-e01c53eea364",
  "kind": "theorem",
  "lexical_name": "attenuated_near_diagonal_lower",
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
  "slug": "attenuated-near-diagonal-lower--2b3f863f8bf5cf45960fcfa4",
  "source": {
    "blob": "13018b617f92bf1bc2a4edbaf732b929c94b0a98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularFrameBand/Variant7dbe1ac06fecf7813d8aea7975abc09b44ab5b07b82b4f17de32bf4c75954e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b3f863f8bf5cf45960fcfa4ab65eeefa9d450e9021e886ee6872665a3c1b35e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularFrameBand/Variant7dbe1ac06fecf7813d8aea7975abc09b44ab5b07b82b4f17de32bf4c75954e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfdc9b0e-3577-79c1-03ef-e01c53eea364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem attenuated_near_diagonal_lower (A t : ℝ) (hA : 1 ≤ A)
    (ht : |t| ≤ A / 20) : 9 / 16 ≤ attenuatedCorrelation A t := by
  have hAp : 0 < A := by linarith
  have hsource := sourceCorrelation_sub_one_abs_le hA t
  have hsmall : 5 * |t| / A ≤ 1 / 4 := by
    apply (div_le_iff₀ hAp).mpr
    linarith
  have hc : 3 / 4 ≤ sourceCorrelation explicitSecondDerivative A t := by
    have hl := (abs_le.mp hsource).1
    linarith
  have hband : 4 * A ≤ bandwidth A := by
    dsimp [bandwidth]
    linarith [B1_nonneg A]
  have hr : |t| / bandwidth A ≤ 1 / 4 := by
    apply (div_le_iff₀ (bandwidth_pos A hA)).mpr
    linarith
  have hw : 3 / 4 ≤ 1 - |t| / bandwidth A := by linarith
  have hm : (3 / 4 : ℝ) * (3 / 4) ≤
      (1 - |t| / bandwidth A) * sourceCorrelation explicitSecondDerivative A t :=
    mul_le_mul hw hc (by norm_num) (by linarith)
  unfold attenuatedCorrelation
  norm_num at hm ⊢
  exact hm

end FormalResearch.RiemannHypothesis.SourceTriangularFrameBand
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularFrameBand/Variant7dbe1ac06fecf7813d8aea7975abc09b44ab5b07b82b4f17de32bf4c75954e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularFrameBand/Variant7dbe1ac06fecf7813d8aea7975abc09b44ab5b07b82b4f17de32bf4c75954e35.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13018b617f92bf1bc2a4edbaf732b929c94b0a98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
