# eq_of_prime_pow_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bcec82955439a00366e57972c92e5f2e341947b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 395,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a7f851e-9460-2d7b-629d-6288a9d94c38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b7ca821-d8ea-c7f5-9b37-2d921f44589b",
  "kind": "theorem",
  "lexical_name": "eq_of_prime_pow_eq'",
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
  "slug": "eq-of-prime-pow-eq--715c98a3c0c063399c6e748c",
  "source": {
    "blob": "2bcec82955439a00366e57972c92e5f2e341947b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 395,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variantaf24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:715c98a3c0c063399c6e748c88df7934d041c0f5563fd513a83e58543202add4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variantaf24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b7ca821-d8ea-c7f5-9b37-2d921f44589b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_prime_pow_eq' (hp₁ : Prime p₁) (hp₂ : Prime p₂) (hk₁ : 0 < k₂)
    (h : p₁ ^ k₁ = p₂ ^ k₂) : p₁ = p₂ := by
  rw [← associated_iff_eq] at h ⊢
  apply h.of_pow_associated_of_prime' hp₁ hp₂ hk₁

end UniqueUnits₀

/-- The quotient of a monoid by the `Associated` relation. Two elements `x` and `y`
  are associated iff there is a unit `u` such that `x * u = y`. There is a natural
  monoid structure on `Associates M`. -/
@[implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variantaf24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variantaf24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bcec82955439a00366e57972c92e5f2e341947b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
