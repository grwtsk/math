# reindexCellTypes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5b27758815b81e5644d7e70d57674356bb9493dd6dc1e5dfeaafeb08412aa65",
  "kind": "def",
  "lexical_name": "reindexCellTypes",
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
  "slug": "reindexcelltypes--475000674f4d57fa27fbdaf9",
  "source": {
    "blob": "98c597bfc5b61a5b3290fa411d391fcb6e345738",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 147,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:475000674f4d57fa27fbdaf9160dc74dacaefaf85ba8047cdaadcbee0ea9d646",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5b27758815b81e5644d7e70d57674356bb9493dd6dc1e5dfeaafeb08412aa65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reindexCellTypes : AttachCells g' f where
  ι := c.ι
  π := a ∘ c.π
  cofan₁ := Cofan.mk c.cofan₁.pt
    (fun i ↦ Arrow.leftFunc.map (ha (c.π i)).inv ≫ c.cofan₁.inj i)
  cofan₂ := Cofan.mk c.cofan₂.pt
    (fun i ↦ Arrow.rightFunc.map (ha (c.π i)).inv ≫ c.cofan₂.inj i)
  isColimit₁ := by
    let e : Discrete.functor (fun i ↦ A (c.π i)) ≅
        Discrete.functor (fun i ↦ A' (a (c.π i))) :=
      Discrete.natIso (fun ⟨i⟩ ↦ Arrow.leftFunc.mapIso (ha (c.π i)))
    refine (IsColimit.precomposeHomEquiv e _).1
      (IsColimit.ofIsoColimit c.isColimit₁ (Cofan.ext (Iso.refl _) (fun i ↦ ?_)))
    simp [Cocones.precompose, e, Cofan.inj]
  isColimit₂ := by
    let e : Discrete.functor (fun i ↦ B (c.π i)) ≅
        Discrete.functor (fun i ↦ B' (a (c.π i))) :=
      Discrete.natIso (fun ⟨i⟩ ↦ Arrow.rightFunc.mapIso (ha (c.π i)))
    refine (IsColimit.precomposeHomEquiv e _).1
      (IsColimit.ofIsoColimit c.isColimit₂ (Cofan.ext (Iso.refl _) (fun i ↦ ?_)))
    simp [Cocones.precompose, e, Cofan.inj]
  m := c.m
  g₁ := c.g₁
  g₂ := c.g₂
  isPushout := c.isPushout

end

end AttachCells

open MorphismProperty in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98c597bfc5b61a5b3290fa411d391fcb6e345738` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
