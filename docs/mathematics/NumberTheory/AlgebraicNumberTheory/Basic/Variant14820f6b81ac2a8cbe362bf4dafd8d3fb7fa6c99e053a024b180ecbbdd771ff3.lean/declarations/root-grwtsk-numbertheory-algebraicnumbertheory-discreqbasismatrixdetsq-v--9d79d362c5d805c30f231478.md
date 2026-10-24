# _root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.DiscrEqBasisMatrixDetSq.Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.NumberField.finite_of_discr_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6a4618b-baab-5dac-7d34-d2f86d4fc949",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.DiscrEqBasisMatrixDetSq.Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.NumberField.finite_of_discr_bdd",
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
  "slug": "root-grwtsk-numbertheory-algebraicnumbertheory-discreqbasismatrixdetsq-v--9d79d362c5d805c30f231478",
  "source": {
    "blob": "82dca3d7e001b7b624715e339e8eb2ff175c4ae3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 502,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant14820f6b81ac2a8cbe362bf4dafd8d3fb7fa6c99e053a024b180ecbbdd771ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d79d362c5d805c30f2314789202315d6c72a7b0656a06f678bd5ebfad1a103c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant14820f6b81ac2a8cbe362bf4dafd8d3fb7fa6c99e053a024b180ecbbdd771ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6a4618b-baab-5dac-7d34-d2f86d4fc949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.DiscrEqBasisMatrixDetSq.Variant371fc16c786d22fe0b9d2bd7479894e5a7925bba548e073c30407b8ceee8f479.NumberField.finite_of_discr_bdd :
    {K : { F : IntermediateField ℚ A // FiniteDimensional ℚ F} |
      haveI :  NumberField K := @NumberField.mk _ _ inferInstance K.prop
      |discr K| ≤ N }.Finite := by
  refine Set.Finite.subset (Set.Finite.union (finite_of_discr_bdd_of_isReal A N)
    (finite_of_discr_bdd_of_isComplex A N)) ?_
  rintro ⟨K, hK₀⟩ hK₁
  -- this is purely an optimization
  have : CharZero K := SubsemiringClass.instCharZero K
  have : NumberField K := @NumberField.mk _ _ inferInstance hK₀
  obtain ⟨w₀⟩ := (inferInstance : Nonempty (InfinitePlace K))
  by_cases hw₀ : IsReal w₀
  · apply Set.mem_union_left
    exact ⟨⟨w₀, hw₀⟩, hK₁⟩
  · apply Set.mem_union_right
    exact ⟨⟨w₀, not_isReal_iff_isComplex.mp hw₀⟩, hK₁⟩

end hermiteTheorem

end NumberField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant14820f6b81ac2a8cbe362bf4dafd8d3fb7fa6c99e053a024b180ecbbdd771ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant14820f6b81ac2a8cbe362bf4dafd8d3fb7fa6c99e053a024b180ecbbdd771ff3.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82dca3d7e001b7b624715e339e8eb2ff175c4ae3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
