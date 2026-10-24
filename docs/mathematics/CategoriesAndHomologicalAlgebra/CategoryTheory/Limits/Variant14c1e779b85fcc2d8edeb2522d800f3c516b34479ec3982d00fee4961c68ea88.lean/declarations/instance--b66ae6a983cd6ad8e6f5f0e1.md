# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50fe587155dfb16a685cc75030f8134715506ca4a91b457a2b046b6e1b0a2436",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b66ae6a983cd6ad8e6f5f0e1",
  "source": {
    "blob": "618b7e897c51c5b40b77c769949f9692bcba361d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 487,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant14c1e779b85fcc2d8edeb2522d800f3c516b34479ec3982d00fee4961c68ea88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b66ae6a983cd6ad8e6f5f0e11801810bf0327978e4b90516b03c198f6840ce6d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant14c1e779b85fcc2d8edeb2522d800f3c516b34479ec3982d00fee4961c68ea88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50fe587155dfb16a685cc75030f8134715506ca4a91b457a2b046b6e1b0a2436`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (W.colimitsOfShape J).RespectsIso :=
  RespectsIso.of_respects_arrow_iso _ (by
    rintro ⟨_, _, f⟩ ⟨Y₁, Y₂, g⟩ e ⟨X₁, X₂, c₁, c₂, h₁, h₂, f, hf⟩
    let e₁ := Arrow.leftFunc.mapIso e
    let e₂ := Arrow.rightFunc.mapIso e
    have fac : e₁.hom ≫ g = h₁.desc (Cocone.mk _ (f ≫ c₂.ι)) ≫ e₂.hom := e.hom.w
    let c₁' : Cocone X₁ := { pt := Y₁, ι := c₁.ι ≫ (Functor.const _).map e₁.hom}
    let c₂' : Cocone X₂ := { pt := Y₂, ι := c₂.ι ≫ (Functor.const _).map e₂.hom}
    have h₁' : IsColimit c₁' := IsColimit.ofIsoColimit h₁ (Cocones.ext e₁)
    have h₂' : IsColimit c₂' := IsColimit.ofIsoColimit h₂ (Cocones.ext e₂)
    obtain hg : h₁'.desc (Cocone.mk _ (f ≫ c₂'.ι)) = g :=
      h₁'.hom_ext (fun j ↦ by
        rw [h₁'.fac]
        simp [fac, c₁', c₂'])
    rw [← hg]
    exact ⟨_, _, _, _, _, h₂', _, hf⟩)

variable {W J} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant14c1e779b85fcc2d8edeb2522d800f3c516b34479ec3982d00fee4961c68ea88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant14c1e779b85fcc2d8edeb2522d800f3c516b34479ec3982d00fee4961c68ea88.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `618b7e897c51c5b40b77c769949f9692bcba361d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
