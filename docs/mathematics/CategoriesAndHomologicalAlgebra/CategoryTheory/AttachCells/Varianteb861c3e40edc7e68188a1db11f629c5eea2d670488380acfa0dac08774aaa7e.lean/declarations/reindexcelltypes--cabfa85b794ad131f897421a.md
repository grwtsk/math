# reindexCellTypes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a400c295095f9a51ed98a2f8a82cb370a76949041444ef9f3fa53a3a25853e58",
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
  "slug": "reindexcelltypes--cabfa85b794ad131f897421a",
  "source": {
    "blob": "2aa9f553354194fd400e0f41269650a4ccc9bb46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 139,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Varianteb861c3e40edc7e68188a1db11f629c5eea2d670488380acfa0dac08774aaa7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cabfa85b794ad131f897421ad7c18b974b9818c497470db5ce41713aac8f76cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Varianteb861c3e40edc7e68188a1db11f629c5eea2d670488380acfa0dac08774aaa7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a400c295095f9a51ed98a2f8a82cb370a76949041444ef9f3fa53a3a25853e58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–169.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Varianteb861c3e40edc7e68188a1db11f629c5eea2d670488380acfa0dac08774aaa7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Varianteb861c3e40edc7e68188a1db11f629c5eea2d670488380acfa0dac08774aaa7e.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2aa9f553354194fd400e0f41269650a4ccc9bb46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
