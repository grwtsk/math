# finiteDimensional_of_det_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99debd313cd81ba4ac265cb7b6b52225d4b906bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 309,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2420711-e3e4-1636-aa21-5e43a8ba21ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abcb1d73-bd5d-ad2e-2101-3821eb40e0d7",
  "kind": "theorem",
  "lexical_name": "finiteDimensional_of_det_ne_one",
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
  "slug": "finitedimensional-of-det-ne-one--bc625cd7f1d7409a56ec6718",
  "source": {
    "blob": "99debd313cd81ba4ac265cb7b6b52225d4b906bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 309,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc625cd7f1d7409a56ec6718a97f5d19e8e772d753506b2062a7ef08f4e1ccbf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abcb1d73-bd5d-ad2e-2101-3821eb40e0d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteDimensional_of_det_ne_one {𝕜 : Type*} [Field 𝕜] [Module 𝕜 M] (f : M →ₗ[𝕜] M)
    (hf : LinearMap.det f ≠ 1) : FiniteDimensional 𝕜 M := by
  by_cases H : ∃ s : Finset M, Nonempty (Basis s 𝕜 M)
  · rcases H with ⟨s, ⟨hs⟩⟩
    exact FiniteDimensional.of_fintype_basis hs
  · classical simp [LinearMap.coe_det, H] at hf

/-- If the determinant of a map vanishes, then the map is not onto. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant301cb356352a1ce419d38985cd79f66faeffa65875f93590ec1e59af605b2c2e.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99debd313cd81ba4ac265cb7b6b52225d4b906bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
