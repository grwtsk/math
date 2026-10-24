# abelianImageToKernelIsKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f86c895a38fc3cce0c2e0a3c9f17c9e211ec02c8ff6926eacc26d43f15f370c",
  "kind": "def",
  "lexical_name": "abelianImageToKernelIsKernel",
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
  "slug": "abelianimagetokerneliskernel--b395db2aa55285215043a188",
  "source": {
    "blob": "806aabbe9134045e19b6d0ffcc34c1ba4e540385",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b395db2aa55285215043a188d423d1ce7dd6a3d326b0b6d8543fb4620e9c652e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f86c895a38fc3cce0c2e0a3c9f17c9e211ec02c8ff6926eacc26d43f15f370c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def abelianImageToKernelIsKernel :
    IsLimit (KernelFork.ofι S.abelianImageToKernel
      S.abelianImageToKernel_comp_kernel_ι_comp_cokernel_π) :=
  KernelFork.IsLimit.ofι _ _
    (fun k hk => kernel.lift _ (k ≫ kernel.ι S.g) (by rw [assoc, hk]))
    (fun k hk => by simp only [← cancel_mono (kernel.ι S.g), assoc,
      abelianImageToKernel_comp_kernel_ι, kernel.lift_ι])
    (fun k hk b hb => by simp only [← cancel_mono S.abelianImageToKernel,
      ← cancel_mono (kernel.ι S.g), hb, assoc, abelianImageToKernel_comp_kernel_ι, kernel.lift_ι])

namespace LeftHomologyData

/-- The canonical `LeftHomologyData` of a short complex `S` in an abelian category, for
which the `H` field is `Abelian.coimage (kernel.ι S.g ≫ cokernel.π S.f)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `806aabbe9134045e19b6d0ffcc34c1ba4e540385` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
