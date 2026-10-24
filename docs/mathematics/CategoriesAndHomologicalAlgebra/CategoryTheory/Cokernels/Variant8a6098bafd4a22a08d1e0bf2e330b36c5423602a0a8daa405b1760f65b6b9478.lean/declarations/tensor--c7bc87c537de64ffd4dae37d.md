# tensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:510921dbdcdd59502c7087623b44cc35b62003e8d6800cebf1f8d7b060ceb6f8",
  "kind": "abbrev",
  "lexical_name": "tensor",
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
  "slug": "tensor--c7bc87c537de64ffd4dae37d",
  "source": {
    "blob": "d31762e52f36ee7675a2032668d798ff235a90e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cokernels/Variant8a6098bafd4a22a08d1e0bf2e330b36c5423602a0a8daa405b1760f65b6b9478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7bc87c537de64ffd4dae37d9c54a5f262d75d5fb16ead44be67ecb70e5118bb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cokernels/Variant8a6098bafd4a22a08d1e0bf2e330b36c5423602a0a8daa405b1760f65b6b9478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:510921dbdcdd59502c7087623b44cc35b62003e8d6800cebf1f8d7b060ceb6f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev tensor : CokernelCofork (coprod.desc (f₁ ▷ Y₂) (Y₁ ◁ f₂)) :=
  CokernelCofork.ofπ (c₁.π ⊗ₘ c₂.π) (by
    ext
    · simp [tensorHom_def, ← comp_whiskerRight_assoc]
    · simp [tensorHom_def', ← whiskerLeft_comp_assoc])

set_option backward.defeqAttrib.useBackward true in
/-- Given two colimit cokernel coforks `c₁` and `c₂` for `f₁ : X₁ ⟶ Y₁` and
`f₂ : X₂ ⟶ Y₂`, if the cokernels of `f₁` and `f₂` are preserves by suitable
tensor products, then `c₁.pt ⊗ c₂.pt` is the cokernel of the
morphism `(X₁ ⊗ Y₂) ⨿ (Y₁ ⊗ X₂) ⟶ Y₁ ⊗ Y₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cokernels/Variant8a6098bafd4a22a08d1e0bf2e330b36c5423602a0a8daa405b1760f65b6b9478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cokernels/Variant8a6098bafd4a22a08d1e0bf2e330b36c5423602a0a8daa405b1760f65b6b9478.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d31762e52f36ee7675a2032668d798ff235a90e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
