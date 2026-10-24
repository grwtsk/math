# Exact.isColimitCoimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b902e74a1505954016f875179dbf5e27e27e5d8f1306a31af260ba36aabc8e74",
  "kind": "def",
  "lexical_name": "Exact.isColimitCoimage",
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
  "slug": "exact-iscolimitcoimage--f7b45b385622fc2f0bcb4ffa",
  "source": {
    "blob": "b00c4ce2d0f5a6ffbf5c0778331fb842f1d1d623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant7928a52c624da78813881a7a1e552981dd605f537f58b1ee2f4f5c089ce0d2b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7b45b385622fc2f0bcb4ffa2a4db4fca1e6f34bc91170b6b5e56a363986a7d6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant7928a52c624da78813881a7a1e552981dd605f537f58b1ee2f4f5c089ce0d2b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b902e74a1505954016f875179dbf5e27e27e5d8f1306a31af260ba36aabc8e74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Exact.isColimitCoimage (h : S.Exact) :
    IsColimit
      (CokernelCofork.ofπ (Abelian.coimage.π S.g) (Abelian.comp_coimage_π_eq_zero S.zero) :
        CokernelCofork S.f) := by
  rw [exact_iff_kernel_ι_comp_cokernel_π_zero] at h
  refine CokernelCofork.IsColimit.ofπ _ _
    (fun u hu => cokernel.desc (kernel.ι S.g) u
      (by rw [← cokernel.π_desc S.f u hu, ← Category.assoc, h, zero_comp]))
    (by simp) ?_
  intro _ _ _ _ hm
  ext
  rw [hm, cokernel.π_desc]

set_option backward.isDefEq.respectTransparency false in
/-- If `(f, g)` is exact, then `factorThruImage g` is a cokernel of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant7928a52c624da78813881a7a1e552981dd605f537f58b1ee2f4f5c089ce0d2b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant7928a52c624da78813881a7a1e552981dd605f537f58b1ee2f4f5c089ce0d2b9.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b00c4ce2d0f5a6ffbf5c0778331fb842f1d1d623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
