# finiteDimensional_of_det_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92c63a23-e3e2-dcce-1868-397e9a04ef02",
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
  "slug": "finitedimensional-of-det-ne-one--177a4e30ca06b6303ade987a",
  "source": {
    "blob": "0e9579694b898742a80ba221afe136e8d655c2d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 346,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:177a4e30ca06b6303ade987a945406c19a304696aa30051d7794398481c15838",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92c63a23-e3e2-dcce-1868-397e9a04ef02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteDimensional_of_det_ne_one {𝕜 : Type*} [Field 𝕜] [Module 𝕜 M] (f : M →ₗ[𝕜] M)
    (hf : LinearMap.det f ≠ 1) : FiniteDimensional 𝕜 M := by
  by_cases H : ∃ s : Finset M, Nonempty (Basis s 𝕜 M)
  · rcases H with ⟨s, ⟨hs⟩⟩
    exact FiniteDimensional.of_fintype_basis hs
  · classical simp [LinearMap.coe_det, H] at hf
#align linear_map.finite_dimensional_of_det_ne_one LinearMap.finiteDimensional_of_det_ne_one

/-- If the determinant of a map vanishes, then the map is not onto. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant5798da7bcff0703bf37def05d85c8921330f96c3685a9dca44762d0bbddf8994.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e9579694b898742a80ba221afe136e8d655c2d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
