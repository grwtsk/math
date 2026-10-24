# ofAbelian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9221a7dc031cd872ab7bae00ede558d74be2fd6de820d6879e004c841871bd0",
  "kind": "def",
  "lexical_name": "ofAbelian",
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
  "slug": "ofabelian--da9b2159501e5d9104083dbd",
  "source": {
    "blob": "2ad239a8c57101a49d0b14c3da9d4a03a9b1825a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da9b2159501e5d9104083dbd804e3f51157cccd91fff1c4dfa9dc16482e488a1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9221a7dc031cd872ab7bae00ede558d74be2fd6de820d6879e004c841871bd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofAbelian : S.RightHomologyData := by
  let γ := kernel.ι S.g ≫ cokernel.π S.f
  let g' := cokernel.desc S.f S.g S.zero
  have hg' : g' = cokernel.π γ ≫ cokernel.desc γ g' (by simp [γ, g']) := by rw [cokernel.π_desc]
  have wι : kernel.ι (cokernel.π γ) ≫ g' = 0 := by rw [hg', kernel.condition_assoc, zero_comp]
  let e : cokernel γ ≅ Abelian.coimage S.g :=
    IsColimit.coconePointUniqueUpToIso (colimit.isColimit _) S.cokernelToAbelianCoimageIsCokernel
  have he : cokernel.π γ ≫ e.hom = S.cokernelToAbelianCoimage :=
    IsColimit.comp_coconePointUniqueUpToIso_hom _ _ WalkingParallelPair.one
  have fac : g' = cokernel.π γ ≫ e.hom ≫ Abelian.factorThruCoimage S.g := by
    rw [hg', reassoc_of% he]
    simp only [γ, g', cokernel.π_desc, ← cancel_epi (cokernel.π S.f),
      cokernel_π_comp_cokernelToAbelianCoimage_assoc]
  have hι : IsLimit (KernelFork.ofι _ wι) :=
    KernelFork.IsLimit.ofι _ _
      (fun x hx => kernel.lift _ x (by
        simpa only [← cancel_mono e.hom, ← cancel_mono (Abelian.factorThruCoimage S.g), assoc,
          zero_comp, fac] using hx))
      (fun x hx => kernel.lift_ι _ _ _)
      (fun x hx b hb => equalizer.hom_ext (by simp only [hb, kernel.lift_ι]))
  exact
    { Q := cokernel S.f,
      H := Abelian.image (kernel.ι S.g ≫ cokernel.π S.f)
      p := cokernel.π _
      ι := kernel.ι _
      wp := cokernel.condition _
      hp := cokernelIsCokernel _
      wι := wι
      hι := hι }

end RightHomologyData

set_option backward.defeqAttrib.useBackward true in
/-- The canonical `HomologyData` of a short complex `S` in an abelian category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ad239a8c57101a49d0b14c3da9d4a03a9b1825a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
