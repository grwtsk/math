# Exact.isLimitImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c641bbc036ac32ccd3a5ce1afe1029d899890d2536f24837cf2c7004f5895d6d",
  "kind": "def",
  "lexical_name": "Exact.isLimitImage",
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
  "slug": "exact-islimitimage--f323d188f686f62eef618bb4",
  "source": {
    "blob": "ef76363116b3719cc60ed870b3c18bc4d8110c34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f323d188f686f62eef618bb4b69cfd2bdc495d779fd53be21eafa69dd72ea4a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c641bbc036ac32ccd3a5ce1afe1029d899890d2536f24837cf2c7004f5895d6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Exact.isLimitImage (h : S.Exact) :
    IsLimit (KernelFork.ofι (Abelian.image.ι S.f)
      (Abelian.image_ι_comp_eq_zero S.zero) : KernelFork S.g) := by
  rw [exact_iff_kernel_ι_comp_cokernel_π_zero] at h
  exact KernelFork.IsLimit.ofι _ _
    (fun u hu ↦ kernel.lift (cokernel.π S.f) u
      (by rw [← kernel.lift_ι S.g u hu, Category.assoc, h, comp_zero])) (by simp)
    (fun _ _ _ hm => by rw [← cancel_mono (Abelian.image.ι S.f), hm, kernel.lift_ι])

/-- If `(f, g)` is exact, then `image.ι f` is a kernel of `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant66c97bef2f3a22a9d672ef640dfd291f8b477da84385d38e7e8ee0f4f33f73a7.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef76363116b3719cc60ed870b3c18bc4d8110c34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
