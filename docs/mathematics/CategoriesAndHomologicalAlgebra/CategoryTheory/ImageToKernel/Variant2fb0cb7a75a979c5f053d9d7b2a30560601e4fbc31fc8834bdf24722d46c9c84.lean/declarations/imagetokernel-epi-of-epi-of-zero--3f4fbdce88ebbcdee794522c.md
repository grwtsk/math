# imageToKernel_epi_of_epi_of_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7ef25c837e795d7435d07c0e8e4aa364163dc5dbf361f521624ab441c54cc95",
  "kind": "instance",
  "lexical_name": "imageToKernel_epi_of_epi_of_zero",
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
  "slug": "imagetokernel-epi-of-epi-of-zero--3f4fbdce88ebbcdee794522c",
  "source": {
    "blob": "3891653c3b70b8367b3c186c3fc36dfc8bc8c0ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f4fbdce88ebbcdee794522c1feb59f76b4f88aec8dfc7170f58cc3213265726",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7ef25c837e795d7435d07c0e8e4aa364163dc5dbf361f521624ab441c54cc95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance imageToKernel_epi_of_epi_of_zero [HasImages V] [Epi f] :
    Epi (imageToKernel f (0 : B ⟶ C) (by simp)) := by
  simp only [imageToKernel_zero_right]
  haveI := epi_image_of_epi f
  rw [← imageSubobject_arrow]
  infer_instance

end

section imageToKernel'

/-!
We provide a variant `imageToKernel' : image f ⟶ kernel g`,
and use this to give alternative formulas for `homology f g w`.
-/

variable {A B C : V} (f : A ⟶ B) (g : B ⟶ C) (w : f ≫ g = 0) [HasKernels V] [HasImages V]

/-- While `imageToKernel f g w` provides a morphism
`imageSubobject f ⟶ kernelSubobject g`
in terms of the subobject API,
this variant provides a morphism
`image f ⟶ kernel g`,
which is sometimes more convenient.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3891653c3b70b8367b3c186c3fc36dfc8bc8c0ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
