# cokernelToAbelianCoimageIsCokernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8551eb6239d67414ef034f30c396a7dfeaca438b2cfe0be54f76c9c2a5e95d6",
  "kind": "def",
  "lexical_name": "cokernelToAbelianCoimageIsCokernel",
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
  "slug": "cokerneltoabeliancoimageiscokernel--160712ebce2fa7ca7ade459f",
  "source": {
    "blob": "49dd0b5a56181b8f03678694ef70ed4c6036af51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant28b0dbe6121872b88d94ca4572764d63765e9ab8c74515807c5bcec1e3fa0d3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:160712ebce2fa7ca7ade459f33ee8c44da8bd0b3b959fb22a0f621093e32743c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant28b0dbe6121872b88d94ca4572764d63765e9ab8c74515807c5bcec1e3fa0d3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8551eb6239d67414ef034f30c396a7dfeaca438b2cfe0be54f76c9c2a5e95d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cokernelToAbelianCoimageIsCokernel :
    IsColimit (CokernelCofork.ofπ S.cokernelToAbelianCoimage
      S.kernel_ι_comp_cokernel_π_comp_cokernelToAbelianCoimage) :=
  CokernelCofork.IsColimit.ofπ _ _
    (fun k hk => cokernel.desc _ (cokernel.π S.f ≫ k) (by simpa only [assoc] using hk))
    (fun k hk => by simp only [← cancel_epi (cokernel.π S.f),
        cokernel_π_comp_cokernelToAbelianCoimage_assoc, cokernel.π_desc])
    (fun k hk b hb => by
      simp only [← cancel_epi S.cokernelToAbelianCoimage, ← cancel_epi (cokernel.π S.f), hb,
        cokernel_π_comp_cokernelToAbelianCoimage_assoc, cokernel.π_desc])

namespace RightHomologyData

/-- The canonical `RightHomologyData` of a short complex `S` in an abelian category, for
which the `H` field is `Abelian.image (kernel.ι S.g ≫ cokernel.π S.f)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant28b0dbe6121872b88d94ca4572764d63765e9ab8c74515807c5bcec1e3fa0d3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant28b0dbe6121872b88d94ca4572764d63765e9ab8c74515807c5bcec1e3fa0d3d.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49dd0b5a56181b8f03678694ef70ed4c6036af51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
