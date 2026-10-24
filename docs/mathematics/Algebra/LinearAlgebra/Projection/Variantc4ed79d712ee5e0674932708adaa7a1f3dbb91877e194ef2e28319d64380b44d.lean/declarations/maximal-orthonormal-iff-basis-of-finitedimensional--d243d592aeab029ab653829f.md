# maximal_orthonormal_iff_basis_of_finiteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a1efbff807f6e93f419b4b900e23bd34d230402",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce59c00e-6e4b-2446-599e-601efe8a3708",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f358cfe6-0d44-97d5-f635-969ecf25b2c2",
  "kind": "theorem",
  "lexical_name": "maximal_orthonormal_iff_basis_of_finiteDimensional",
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
  "slug": "maximal-orthonormal-iff-basis-of-finitedimensional--d243d592aeab029ab653829f",
  "source": {
    "blob": "7a1efbff807f6e93f419b4b900e23bd34d230402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1392,
    "line": 1380,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d243d592aeab029ab653829f29f811dcc5ff7933a2566da8a497cf03d119b4c1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f358cfe6-0d44-97d5-f635-969ecf25b2c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1380–1392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maximal_orthonormal_iff_basis_of_finiteDimensional (hv : Orthonormal 𝕜 ((↑) : v → E)) :
    (∀ u ⊇ v, Orthonormal 𝕜 ((↑) : u → E) → u = v) ↔ ∃ b : Basis v 𝕜 E, ⇑b = ((↑) : v → E) := by
  haveI := FiniteDimensional.proper_rclike 𝕜 (span 𝕜 v)
  rw [maximal_orthonormal_iff_orthogonalComplement_eq_bot hv]
  rw [Submodule.orthogonal_eq_bot_iff]
  have hv_coe : range ((↑) : v → E) = v := by simp
  constructor
  · refine fun h => ⟨Basis.mk hv.linearIndependent _, Basis.coe_mk _ ?_⟩
    convert h.ge
  · rintro ⟨h, coe_h⟩
    rw [← h.span_eq, coe_h, hv_coe]

end OrthonormalBasis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variantc4ed79d712ee5e0674932708adaa7a1f3dbb91877e194ef2e28319d64380b44d.lean#L1380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a1efbff807f6e93f419b4b900e23bd34d230402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
