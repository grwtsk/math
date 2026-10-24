# mertens_residual_tail_iff_coupled_offDiagonal_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e8b45be-d003-6730-38c9-dba5ebbe2653",
  "kind": "theorem",
  "lexical_name": "mertens_residual_tail_iff_coupled_offDiagonal_tail",
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
  "slug": "mertens-residual-tail-iff-coupled-offdiagonal-tail--7604da35fccb07fd539815cd",
  "source": {
    "blob": "421b34c6dc2dd6dfd82bc861c0d19b7b0716991b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 224,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant3a595918333e60d9dfaddb7eec4f5841075b928b8a3c0f0dc00cb9bca5c38bc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7604da35fccb07fd539815cd807db0624052ccd7107e9daac1ace6d0527e8422",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant3a595918333e60d9dfaddb7eec4f5841075b928b8a3c0f0dc00cb9bca5c38bc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e8b45be-d003-6730-38c9-dba5ebbe2653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertens_residual_tail_iff_coupled_offDiagonal_tail :
    MertensResidualTailUpperBound ↔
      ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
        typeTwoOffDiagonal A ≤ D - typeTwoDiagonal A - shortMangoldtSource A -
          shortLogSource A + shortPlainSource A := by
  unfold MertensResidualTailUpperBound
  constructor <;> rintro ⟨D, hD, R, hR, h⟩ <;> refine ⟨D, hD, R, hR, ?_⟩ <;>
    intro A hRA
  · have hb := h A hRA
    rw [mertensResidual_eq_coupledOffDiagonalRemainder A (hR.trans hRA)] at hb
    unfold coupledOffDiagonalRemainder at hb
    linarith
  · rw [mertensResidual_eq_coupledOffDiagonalRemainder A (hR.trans hRA)]
    unfold coupledOffDiagonalRemainder
    have hb := h A hRA
    linarith

end
end EstimateVaughanTranslationGate
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant3a595918333e60d9dfaddb7eec4f5841075b928b8a3c0f0dc00cb9bca5c38bc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant3a595918333e60d9dfaddb7eec4f5841075b928b8a3c0f0dc00cb9bca5c38bc7.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `421b34c6dc2dd6dfd82bc861c0d19b7b0716991b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
