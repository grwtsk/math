# CMFiniteFourFactorSwitchAlignment.canonicalPureTensor_mem_balanced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea2c8871-b433-f0bd-c5a7-7d845f1d4d57",
  "kind": "theorem",
  "lexical_name": "CMFiniteFourFactorSwitchAlignment.canonicalPureTensor_mem_balanced",
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
  "slug": "cmfinitefourfactorswitchalignment-canonicalpuretensor-mem-balanced--61537b26a14550a332779e65",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3350,
    "line": 3325,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61537b26a14550a332779e6551c2c130b6aaa81bffc118986113c330dc367244",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea2c8871-b433-f0bd-c5a7-7d845f1d4d57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3325–3350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CMFiniteFourFactorSwitchAlignment.canonicalPureTensor_mem_balanced
    {E : CMGaloisIntermediateField}
    {factors : CMFiniteFourEmbeddingLineVectors E}
    {v₁ v₂ v₃ v₄ : CMNumberFieldIndex.OddSignRow E.carrier}
    {D : CMFiniteFourFactorActualTyping E factors v₁ v₂ v₃ v₄}
    (A : CMFiniteFourFactorSwitchAlignment D) :
    fourfoldActualPureTensor D.toActualTyping
      (D.first.realization.canonicalTensorActualH1Comparison.toActual
        D.first.vector)
      (D.second.realization.canonicalTensorActualH1Comparison.toActual
        D.second.vector)
      (D.third.realization.canonicalTensorActualH1Comparison.toActual
        D.third.vector)
      (D.fourth.realization.canonicalTensorActualH1Comparison.toActual
        D.fourth.vector) ∈ CMFiniteBalancedPureTensorSet D := by
  refine ⟨_, _, _, _,
    CMEmbeddingLines.typeOfSign (v₁.value D.first.character),
    CMEmbeddingLines.typeOfSign (v₂.value D.second.character),
    CMEmbeddingLines.typeOfSign (v₃.value D.third.character),
    CMEmbeddingLines.typeOfSign (v₄.value D.fourth.character),
    D.first.actual_type, D.second.actual_type,
    D.third.actual_type, D.fourth.actual_type,
    A.p_two, A.q_two, rfl⟩

/-- The missing reverse inclusion is made explicit.  Hodge-type membership
alone does not prove that balanced pure tensors span all of H^(2,2). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L3325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
