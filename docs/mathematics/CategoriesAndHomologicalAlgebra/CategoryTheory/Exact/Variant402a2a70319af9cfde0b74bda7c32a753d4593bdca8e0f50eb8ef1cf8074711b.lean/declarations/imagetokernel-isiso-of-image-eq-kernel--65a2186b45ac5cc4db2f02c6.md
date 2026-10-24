# imageToKernel_isIso_of_image_eq_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a391caf2-38e5-681c-5560-d43e852aa8cb",
  "kind": "theorem",
  "lexical_name": "imageToKernel_isIso_of_image_eq_kernel",
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
  "slug": "imagetokernel-isiso-of-image-eq-kernel--65a2186b45ac5cc4db2f02c6",
  "source": {
    "blob": "68dfcf7a0efdc29ab06ad9c363bfa2c165eb6fd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65a2186b45ac5cc4db2f02c6653cd1b4d66f42a8b8b20b9596bff9a8e9c53ddd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a391caf2-38e5-681c-5560-d43e852aa8cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imageToKernel_isIso_of_image_eq_kernel {A B C : V} (f : A ⟶ B) (g : B ⟶ C)
    (p : imageSubobject f = kernelSubobject g) :
    IsIso (imageToKernel f g (comp_eq_zero_of_image_eq_kernel f g p)) := by
  refine' ⟨⟨Subobject.ofLE _ _ p.ge, _⟩⟩
  dsimp [imageToKernel]
  simp only [Subobject.ofLE_comp_ofLE, Subobject.ofLE_refl]
#align category_theory.image_to_kernel_is_iso_of_image_eq_kernel CategoryTheory.imageToKernel_isIso_of_image_eq_kernel

-- We'll prove the converse later, when `V` is abelian.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant402a2a70319af9cfde0b74bda7c32a753d4593bdca8e0f50eb8ef1cf8074711b.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68dfcf7a0efdc29ab06ad9c363bfa2c165eb6fd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
