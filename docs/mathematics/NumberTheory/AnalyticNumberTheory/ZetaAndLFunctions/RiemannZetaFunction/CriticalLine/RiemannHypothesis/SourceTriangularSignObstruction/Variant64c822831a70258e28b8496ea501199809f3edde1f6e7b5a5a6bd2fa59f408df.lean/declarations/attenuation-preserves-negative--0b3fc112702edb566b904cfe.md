# attenuation_preserves_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36ae739e-d8d9-07b4-9259-7ff006301269",
  "kind": "theorem",
  "lexical_name": "attenuation_preserves_negative",
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
  "slug": "attenuation-preserves-negative--0b3fc112702edb566b904cfe",
  "source": {
    "blob": "c9506c632cf8462f447b17e8612d9e6422f1eb07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularSignObstruction/Variant64c822831a70258e28b8496ea501199809f3edde1f6e7b5a5a6bd2fa59f408df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b3fc112702edb566b904cfe82c66e2feae6de6768da8cbea1bcea62b591eb02",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularSignObstruction/Variant64c822831a70258e28b8496ea501199809f3edde1f6e7b5a5a6bd2fa59f408df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ae739e-d8d9-07b4-9259-7ff006301269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem attenuation_preserves_negative (A : ℝ) (hA : 1 ≤ A) :
    ∃ t : ℝ, 0 < t ∧ t < 2 * A ∧ attenuatedCorrelation A t < 0 := by
  obtain ⟨t, ht, htA, hn⟩ :=
    sourceCorrelation_exists_neg_in_half_support (by linarith : 0 < A)
  have hband : 2 * A < bandwidth A := by
    dsimp [bandwidth]
    linarith [B1_nonneg A]
  have hratio : t / bandwidth A < 1 :=
    (div_lt_one (bandwidth_pos A hA)).mpr (htA.trans hband)
  refine ⟨t, ht, htA, ?_⟩
  unfold attenuatedCorrelation
  rw [abs_of_pos ht]
  exact mul_neg_of_pos_of_neg (by linarith) hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularSignObstruction/Variant64c822831a70258e28b8496ea501199809f3edde1f6e7b5a5a6bd2fa59f408df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceTriangularSignObstruction/Variant64c822831a70258e28b8496ea501199809f3edde1f6e7b5a5a6bd2fa59f408df.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9506c632cf8462f447b17e8612d9e6422f1eb07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
