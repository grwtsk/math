# homObjEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:430d63296d1ff5b1d401983075e8e20a3a4832db090009af1f566f516694235b",
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
  "slug": "homobjequiv--396fea62d88dd4a520c00ae4",
  "source": {
    "blob": "c40fa336208485073d6ad8fa43916c1c6b0e410b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:396fea62d88dd4a520c00ae4244b347d2f662d6fcab633fc5cb0d088007ae330",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:430d63296d1ff5b1d401983075e8e20a3a4832db090009af1f566f516694235b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–62.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c40fa336208485073d6ad8fa43916c1c6b0e410b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
