# CMFiniteBalancedTensorImageTest.ofPureTensorRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3016058e19253c84a4eed4e7a395aae9dd6ff851ea3875f2a9c23b6ad0c8e76",
  "kind": "def",
  "lexical_name": "CMFiniteBalancedTensorImageTest.ofPureTensorRule",
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
  "slug": "cmfinitebalancedtensorimagetest-ofpuretensorrule--954a978775542b36f968e17c",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3454,
    "line": 3421,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:954a978775542b36f968e17cb74547f6eb2c0852c072c939801f00def8b72260",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3016058e19253c84a4eed4e7a395aae9dd6ff851ea3875f2a9c23b6ad0c8e76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3421–3454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CMFiniteBalancedTensorImageTest.ofPureTensorRule
    {E : CMGaloisIntermediateField}
    {factors : CMFiniteFourEmbeddingLineVectors E}
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    {v₁ v₂ v₃ v₄ : CMNumberFieldIndex.OddSignRow E.carrier}
    (D : CMFiniteFourFactorActualTyping E factors v₁ v₂ v₃ v₄)
    (hodgeSubspace : Submodule ℂ (ℂ ⊗[ℚ] V))
    (compare : FourfoldActualTensor D.toActualTyping →ₗ[ℂ]
      (ℂ ⊗[ℚ] V))
    (pure_mem :
      ∀ (a : D.first.realization.H1C)
        (b : D.second.realization.H1C)
        (c : D.third.realization.H1C)
        (d : D.fourth.realization.H1C)
        (τ₁ τ₂ τ₃ τ₄ : CMEmbeddingLines.WeightOneHodgeType),
        D.first.realization.IsOfType a τ₁ →
        D.second.realization.IsOfType b τ₂ →
        D.third.realization.IsOfType c τ₃ →
        D.fourth.realization.IsOfType d τ₄ →
        CMEmbeddingLines.pIndex τ₁ + CMEmbeddingLines.pIndex τ₂ +
          CMEmbeddingLines.pIndex τ₃ + CMEmbeddingLines.pIndex τ₄ = 2 →
        CMEmbeddingLines.qIndex τ₁ + CMEmbeddingLines.qIndex τ₂ +
          CMEmbeddingLines.qIndex τ₃ + CMEmbeddingLines.qIndex τ₄ = 2 →
        compare (fourfoldActualPureTensor D.toActualTyping a b c d) ∈
          hodgeSubspace) :
    CMFiniteBalancedTensorImageTest D hodgeSubspace where
  compare := compare
  balanced_mem := by
    rintro z ⟨a, b, c, d, τ₁, τ₂, τ₃, τ₄,
      ha, hb, hc, hd, hp, hq, rfl⟩
    exact pure_mem a b c d τ₁ τ₂ τ₃ τ₄ ha hb hc hd hp hq

/-- Pure-tensor image compatibility together with the separate balanced
spanning certificate suffices for the comparison required by descent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L3421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
