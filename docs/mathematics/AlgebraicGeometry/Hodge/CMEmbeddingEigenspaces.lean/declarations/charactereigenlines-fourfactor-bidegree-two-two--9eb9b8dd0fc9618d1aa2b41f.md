# characterEigenlines_fourFactor_bidegree_two_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd6a2183-8337-a948-e850-145bb8b93d2e",
  "kind": "theorem",
  "lexical_name": "characterEigenlines_fourFactor_bidegree_two_two",
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
  "slug": "charactereigenlines-fourfactor-bidegree-two-two--9eb9b8dd0fc9618d1aa2b41f",
  "source": {
    "blob": "6498cd959aba4513fab921e1e8fe664ddcf33ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 119,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eb9b8dd0fc9618d1aa2b41f9c3e7118c002490266f491848523e699abecb1d2",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd6a2183-8337-a948-e850-145bb8b93d2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem characterEigenlines_fourFactor_bidegree_two_two
    {A₁ A₂ A₃ A₄ C V₁ V₂ V₃ V₄ G : Type*}
    [CommRing A₁] [CommRing A₂] [CommRing A₃] [CommRing A₄]
    [Field C]
    [AddCommGroup V₁] [Module C V₁] [FiniteDimensional C V₁]
    [AddCommGroup V₂] [Module C V₂] [FiniteDimensional C V₂]
    [AddCommGroup V₃] [Module C V₃] [FiniteDimensional C V₃]
    [AddCommGroup V₄] [Module C V₄] [FiniteDimensional C V₄]
    {conj : G → G}
    (v₁ v₂ v₃ v₄ : OddSignRow G conj)
    (R₁ : CharacterEigenlineRealization A₁ C V₁ G conj v₁)
    (R₂ : CharacterEigenlineRealization A₂ C V₂ G conj v₂)
    (R₃ : CharacterEigenlineRealization A₃ C V₃ G conj v₃)
    (R₄ : CharacterEigenlineRealization A₄ C V₄ G conj v₄)
    (hbal : FourBalance v₁ v₂ v₃ v₄) :
    ∀ g,
      (pIndex
          ((R₁.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt g) +
        pIndex
          ((R₂.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt g) +
        pIndex
          ((R₃.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt (conj g)) +
        pIndex
          ((R₄.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt (conj g)) = 2) ∧
      (qIndex
          ((R₁.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt g) +
        qIndex
          ((R₂.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt g) +
        qIndex
          ((R₃.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt (conj g)) +
        qIndex
          ((R₄.toLinearEmbeddingLineRealization.toEmbeddingLineRealization).typeAt (conj g)) = 2) :=
  linearFourFactor_allCoordinates_bidegree_two_two
    v₁ v₂ v₃ v₄
    R₁.toLinearEmbeddingLineRealization
    R₂.toLinearEmbeddingLineRealization
    R₃.toLinearEmbeddingLineRealization
    R₄.toLinearEmbeddingLineRealization
    hbal


/-- A complete internal decomposition by one-dimensional character eigenspaces
has ambient dimension equal to the number of embedding labels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6498cd959aba4513fab921e1e8fe664ddcf33ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
