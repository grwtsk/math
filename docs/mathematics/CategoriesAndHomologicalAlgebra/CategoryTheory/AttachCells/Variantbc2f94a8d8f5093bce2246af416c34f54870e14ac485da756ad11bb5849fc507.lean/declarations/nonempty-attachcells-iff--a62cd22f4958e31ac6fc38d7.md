# nonempty_attachCells_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15bb8af6-40c6-6fb7-bfac-35146cea61a7",
  "kind": "lemma",
  "lexical_name": "nonempty_attachCells_iff",
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
  "slug": "nonempty-attachcells-iff--a62cd22f4958e31ac6fc38d7",
  "source": {
    "blob": "98c597bfc5b61a5b3290fa411d391fcb6e345738",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a62cd22f4958e31ac6fc38d757ccbf2d937c0a4b390c92c00d0f43c62fffe9f1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15bb8af6-40c6-6fb7-bfac-35146cea61a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonempty_attachCells_iff :
    Nonempty (AttachCells.{w} g f) ↔ (coproducts.{w} (ofHoms g)).pushouts f := by
  constructor
  · rintro ⟨c⟩
    exact c.pushouts_coproducts
  · rintro ⟨Y₁, Y₂, m, g₁, g₂, h, sq⟩
    rw [coproducts_iff] at h
    obtain ⟨ι, ⟨F₁, F₂, c₁, c₂, h₁, h₂, φ, hφ⟩⟩ := h
    let π (i : ι) : α := ((ofHoms_iff _ _).1 (hφ ⟨i⟩)).choose
    let e (i : ι) : Arrow.mk (φ.app ⟨i⟩) ≅ Arrow.mk (g (π i)) :=
      eqToIso (((ofHoms_iff _ _).1 (hφ ⟨i⟩)).choose_spec)
    let e₁ (i : ι) : F₁.obj ⟨i⟩ ≅ A (π i) := Arrow.leftFunc.mapIso (e i)
    let e₂ (i : ι) : F₂.obj ⟨i⟩ ≅ B (π i) := Arrow.rightFunc.mapIso (e i)
    exact ⟨{
      ι := ι
      π := π
      cofan₁ := Cofan.mk c₁.pt (fun i ↦ (e₁ i).inv ≫ c₁.ι.app ⟨i⟩)
      cofan₂ := Cofan.mk c₂.pt (fun i ↦ (e₂ i).inv ≫ c₂.ι.app ⟨i⟩)
      isColimit₁ :=
        (IsColimit.precomposeHomEquiv (Discrete.natIso (fun ⟨i⟩ ↦ e₁ i)) _).1
          (IsColimit.ofIsoColimit h₁ (Cocones.ext (Iso.refl _) (by simp)))
      isColimit₂ :=
        (IsColimit.precomposeHomEquiv (Discrete.natIso (fun ⟨i⟩ ↦ e₂ i)) _).1
          (IsColimit.ofIsoColimit h₂ (Cocones.ext (Iso.refl _) (by simp)))
      hm i := by simp [e₁, e₂]
      isPushout := sq, .. }⟩

end HomotopicalAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98c597bfc5b61a5b3290fa411d391fcb6e345738` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
