# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:631eda2cd93ad4de33fd30a3b9368c098fed751c64b2004522e4ed9b46805f15",
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
  "slug": "instance--d002bd748ec39cc7545df619",
  "source": {
    "blob": "d8e4d40af86544e766a8b110c273d57db4936d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 455,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d002bd748ec39cc7545df6196b12d61edb91990138bb0be4329447f56dd3c2a2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:631eda2cd93ad4de33fd30a3b9368c098fed751c64b2004522e4ed9b46805f15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (W.limitsOfShape J).RespectsIso :=
  RespectsIso.of_respects_arrow_iso _ (by
    rintro ⟨_, _, f⟩ ⟨Y₁, Y₂, g⟩ e ⟨X₁, X₂, c₁, c₂, h₁, h₂, f, hf⟩
    let e₁ := Arrow.leftFunc.mapIso e
    let e₂ := Arrow.rightFunc.mapIso e
    have fac : g ≫ e₂.inv = e₁.inv ≫ h₂.lift (Cone.mk _ (c₁.π ≫ f)) :=
      e.inv.w.symm
    let c₁' : Cone X₁ := { pt := Y₁, π := (Functor.const _).map e₁.inv ≫ c₁.π }
    let c₂' : Cone X₂ := { pt := Y₂, π := (Functor.const _).map e₂.inv ≫ c₂.π }
    have h₁' : IsLimit c₁' := IsLimit.ofIsoLimit h₁ (Cone.ext e₁)
    have h₂' : IsLimit c₂' := IsLimit.ofIsoLimit h₂ (Cone.ext e₂)
    obtain hg : h₂'.lift (Cone.mk _ (c₁'.π ≫ f)) = g :=
      h₂'.hom_ext (fun j ↦ by
        rw [h₂'.fac]
        simp [reassoc_of% fac, c₁', c₂'])
    rw [← hg]
    exact ⟨_, _, _, _, h₁', _, _, hf⟩)

variable {W J} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8e4d40af86544e766a8b110c273d57db4936d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
