# FourfoldActualHodgeTensorRule.canonicalPureTensor_mem_H22

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:faadbcc6-fda5-6587-6a0b-dd3703d6c1d9",
  "kind": "theorem",
  "lexical_name": "FourfoldActualHodgeTensorRule.canonicalPureTensor_mem_H22",
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
  "slug": "fourfoldactualhodgetensorrule-canonicalpuretensor-mem-h22--6f2742e059692ef61b62ef1c",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 845,
    "line": 813,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f2742e059692ef61b62ef1c8a4e73ec8b0e15f701f3740ac432dd2ecf1eefb6",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faadbcc6-fda5-6587-6a0b-dd3703d6c1d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 813–845.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FourfoldActualHodgeTensorRule.canonicalPureTensor_mem_H22
    {E : Type*} [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]
    {v₁ v₂ v₃ v₄ : CMNumberFieldIndex.OddSignRow E}
    {D : FourCanonicalFactorsActualTyping E v₁ v₂ v₃ v₄}
    (R : FourfoldActualHodgeTensorRule D)
    (A : FourCanonicalFactorsSwitchAlignment D) :
    fourfoldActualPureTensor D
      (D.first.realization.canonicalTensorActualH1Comparison.toActual
        D.first.vector)
      (D.second.realization.canonicalTensorActualH1Comparison.toActual
        D.second.vector)
      (D.third.realization.canonicalTensorActualH1Comparison.toActual
        D.third.vector)
      (D.fourth.realization.canonicalTensorActualH1Comparison.toActual
        D.fourth.vector) ∈ R.H22 := by
  apply R.pureTensor_mem_H22
    _ _ _ _
    (CMEmbeddingLines.typeOfSign (v₁.value D.first.character))
    (CMEmbeddingLines.typeOfSign (v₂.value D.second.character))
    (CMEmbeddingLines.typeOfSign (v₃.value D.third.character))
    (CMEmbeddingLines.typeOfSign (v₄.value D.fourth.character))
  · exact D.first.actual_type
  · exact D.second.actual_type
  · exact D.third.actual_type
  · exact D.fourth.actual_type
  · exact A.p_two
  · exact A.q_two

/-- Comparison from the explicit actual fourfold H1 tensor target to the
descent-side complexified tensor space.

This is the precise coefficient/change-of-realization bridge.  It does not
assert algebraicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L813).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
