# homObjEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c8d2e6987eb8720b02219c9a055eb56b0f0f95c2c79777275ed43dff43922cd",
  "kind": "def",
  "lexical_name": "homObjEquiv",
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
  "slug": "homobjequiv--cac40cf8f29f3692fc894e31",
  "source": {
    "blob": "d39ed6a795fea0f436934030bc0c36e703653af1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 53,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cac40cf8f29f3692fc894e31c8b7ba469981570addf9d7de091af36e3dc83cf6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c8d2e6987eb8720b02219c9a055eb56b0f0f95c2c79777275ed43dff43922cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homObjEquiv (F G A : C ⥤ Type w) : (HomObj F G A) ≃ (F ⊗ A ⟶ G) where
  toFun a := ⟨fun X ⟨x, y⟩ ↦ a.app X y x, fun X Y f ↦ by
    ext ⟨x, y⟩
    erw [congr_fun (a.naturality f y) x]
    rfl ⟩
  invFun a := ⟨fun X y x ↦ a.app X (x, y), fun φ y ↦ by
    ext x
    erw [congr_fun (a.naturality φ) (x, y)]
    rfl ⟩
  left_inv _ := by aesop
  right_inv _ := by aesop

namespace HomObj

attribute [reassoc (attr := simp)] naturality

variable {F G} {A : C ⥤ Type w}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantbc50d1f9a4f3831d251d91857c948aa66303cc956d4407302434978e61933373.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d39ed6a795fea0f436934030bc0c36e703653af1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
