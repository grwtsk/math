# tensorToH1Cotangent_bijective_of_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d926efa904cb03156f0b95a8bc966035081007e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19d42195-0954-eb79-fe1a-de80ef25a56c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97074d33-2c56-26a8-0ef3-e3e607841226",
  "kind": "lemma",
  "lexical_name": "tensorToH1Cotangent_bijective_of_flat",
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
  "slug": "tensortoh1cotangent-bijective-of-flat--1de862fc115b8306ec86fdee",
  "source": {
    "blob": "d926efa904cb03156f0b95a8bc966035081007e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 143,
    "path": "GRWTSK/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1de862fc115b8306ec86fdeec23e5f387f768ee2cc53b1420ade39838aec0271",
  "verification": {
    "reference": "docs/verification/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97074d33-2c56-26a8-0ef3-e3e607841226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensorToH1Cotangent_bijective_of_flat [Module.Flat R T] :
    Function.Bijective (P.tensorToH1Cotangent T) := by
  -- We apply the five lemma.
  apply LinearMap.bijective_of_surjective_of_bijective_of_bijective_of_injective (M₁ := Unit)
      (N₁ := Unit) (M₂ := Unit) (N₂ := Unit)
    -- The row `0 → 0 → T ⊗ H¹(P) → T ⊗ P.Cotangent → T ⊗ P.CotangentSpace`.
    0 0
    ((P.h1Cotangentι.restrictScalars R).lTensor T)
    ((P.cotangentComplex.restrictScalars R).lTensor T)
    -- The row `0 → 0 → H¹(T ⊗ P) → (T ⊗ P).Cotangent → (T ⊗ P).CotangentSpace`.
    0 0
    (h1Cotangentι.restrictScalars R)
    ((P.baseChange (T := T)).cotangentComplex.restrictScalars R)
    -- The vertical maps induced by base change.
    0 0
    ((P.tensorToH1Cotangent T).restrictScalars R)
    ((P.tensorCotangentOfFlat T).restrictScalars R)
    ((P.tensorCotangentSpace T).restrictScalars R)
  · simp
  · simp
  · ext
    simp
  · ext
    simp [CotangentSpace.map_cotangentComplex]
  · tauto
  · simp only [LinearMap.exact_zero_iff_injective]
    apply Module.Flat.lTensor_preserves_injective_linearMap
    exact h1Cotangentι_injective
  · apply Module.Flat.lTensor_exact
    exact P.exact_hCotangentι_cotangentComplex
  · tauto
  · rw [LinearMap.exact_zero_iff_injective]
    simp only [LinearMap.coe_restrictScalars]
    exact h1Cotangentι_injective
  · apply exact_hCotangentι_cotangentComplex
  · tauto
  · simp
  · exact (P.tensorCotangentOfFlat T).bijective
  · exact (P.tensorCotangentSpace T).injective

/-- If `T` is flat over `R`, there is a `T`-linear isomorphism
`T ⊗[R] P.H1Cotangent ≃ₗ[T] (P.baseChange).H1Cotangent`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d926efa904cb03156f0b95a8bc966035081007e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
