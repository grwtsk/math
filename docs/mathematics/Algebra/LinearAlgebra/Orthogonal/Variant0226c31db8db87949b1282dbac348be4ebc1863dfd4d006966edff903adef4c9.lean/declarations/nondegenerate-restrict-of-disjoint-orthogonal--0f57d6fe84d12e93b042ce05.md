# nondegenerate_restrict_of_disjoint_orthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0cdcb5632b230d2179ea6f567c04aa23dd37e11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d5f5b9b-e56e-59b1-cf76-4b166532a9e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58fee2b7-1df9-2d08-29d5-2ca337f67f2f",
  "kind": "theorem",
  "lexical_name": "nondegenerate_restrict_of_disjoint_orthogonal",
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
  "slug": "nondegenerate-restrict-of-disjoint-orthogonal--0f57d6fe84d12e93b042ce05",
  "source": {
    "blob": "b0cdcb5632b230d2179ea6f567c04aa23dd37e11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 253,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f57d6fe84d12e93b042ce0569841ab6cdef55f2d9c6b7366b32a2f05bce2bfc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58fee2b7-1df9-2d08-29d5-2ca337f67f2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nondegenerate_restrict_of_disjoint_orthogonal {B : M →ₗ[R] M →ₗ[R] M₁} (hB : B.IsRefl)
    {W : Submodule R M} (hW : Disjoint W (W.orthogonalBilin B)) :
    (B.domRestrict₁₂ W W).Nondegenerate := by
  rw [(hB.domRestrict W).nondegenerate_iff_separatingLeft]
  rintro ⟨x, hx⟩ b₁
  rw [Submodule.mk_eq_zero, ← Submodule.mem_bot R]
  refine hW.le_bot ⟨hx, fun y hy ↦ ?_⟩
  specialize b₁ ⟨y, hy⟩
  simp_rw [domRestrict₁₂_apply] at b₁
  exact hB.eq_zero b₁

end CommRing

end LinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant0226c31db8db87949b1282dbac348be4ebc1863dfd4d006966edff903adef4c9.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0cdcb5632b230d2179ea6f567c04aa23dd37e11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
