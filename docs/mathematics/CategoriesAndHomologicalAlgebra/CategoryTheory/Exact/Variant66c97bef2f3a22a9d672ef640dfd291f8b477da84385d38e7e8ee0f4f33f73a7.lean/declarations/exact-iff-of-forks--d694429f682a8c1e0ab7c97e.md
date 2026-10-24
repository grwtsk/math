# exact_iff_of_forks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef76363116b3719cc60ed870b3c18bc4d8110c34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bedeb056-202e-fc9a-6833-94ebcfb3218d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84c3bb26-30e1-dfac-1223-ca3caad98e1e",
  "kind": "theorem",
  "lexical_name": "exact_iff_of_forks",
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
  "slug": "exact-iff-of-forks--d694429f682a8c1e0ab7c97e",
  "source": {
    "blob": "ef76363116b3719cc60ed870b3c18bc4d8110c34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d694429f682a8c1e0ab7c97ef5a043bca30bbd57daee2a373a6a51610e03a905",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84c3bb26-30e1-dfac-1223-ca3caad98e1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_iff_of_forks {cg : KernelFork S.g} (hg : IsLimit cg) {cf : CokernelCofork S.f}
    (hf : IsColimit cf) : S.Exact ↔ cg.ι ≫ cf.π = 0 := by
  rw [exact_iff_kernel_ι_comp_cokernel_π_zero]
  let e₁ := IsLimit.conePointUniqueUpToIso (kernelIsKernel S.g) hg
  let e₂ := IsColimit.coconePointUniqueUpToIso (cokernelIsCokernel S.f) hf
  have : cg.ι ≫ cf.π = e₁.inv ≫ kernel.ι S.g ≫ cokernel.π S.f ≫ e₂.hom := by
    have eq₁ := IsLimit.conePointUniqueUpToIso_inv_comp (kernelIsKernel S.g) hg (.zero)
    have eq₂ := IsColimit.comp_coconePointUniqueUpToIso_hom (cokernelIsCokernel S.f) hf (.one)
    dsimp at eq₁ eq₂
    rw [← eq₁, ← eq₂, Category.assoc]
  rw [this, IsIso.comp_left_eq_zero e₁.inv, ← Category.assoc,
    IsIso.comp_right_eq_zero _ e₂.hom]

variable {S}

/-- If `(f, g)` is exact, then `Abelian.image.ι S.f` is a kernel of `S.g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef76363116b3719cc60ed870b3c18bc4d8110c34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
