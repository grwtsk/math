# forget₂ToModuleCatHomotopyEquiv_f_0_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a28b81d-a9bf-8f21-a3c1-fe9a9e33294d",
  "kind": "theorem",
  "lexical_name": "forget₂ToModuleCatHomotopyEquiv_f_0_eq",
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
  "slug": "forget-tomodulecathomotopyequiv-f-0-eq--1d4c5295c917d7739499d328",
  "source": {
    "blob": "e6b9161bb7b60f042c48cf598413a443784ba528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 620,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d4c5295c917d7739499d32820be59288bbc3af08fa9696598cc646944ca644c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a28b81d-a9bf-8f21-a3c1-fe9a9e33294d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forget₂ToModuleCatHomotopyEquiv_f_0_eq :
    (forget₂ToModuleCatHomotopyEquiv k G).1.f 0 = (forget₂ (Rep k G) _).map (ε k G) := by
  show (HomotopyEquiv.hom _ ≫ HomotopyEquiv.hom _ ≫ HomotopyEquiv.hom _).f 0 = _
  simp only [HomologicalComplex.comp_f]
  dsimp
  convert Category.id_comp (X := (forget₂ToModuleCat k G).X 0) _
  · dsimp only [HomotopyEquiv.ofIso, compForgetAugmentedIso, map_alternatingFaceMapComplex]
    simp only [Iso.symm_hom, eqToIso.inv, HomologicalComplex.eqToHom_f, eqToHom_refl]
  trans (Finsupp.total _ _ _ fun _ => (1 : k)).comp ((ModuleCat.free k).map (terminal.from _))
  · dsimp
    erw [Finsupp.lmapDomain_total (α := Fin 1 → G) (R := k) (α' := ⊤_ Type u)
        (v := fun _ => (1 : k)) (v' := fun _ => (1 : k))
        (terminal.from
          ((classifyingSpaceUniversalCover G).obj (Opposite.op (SimplexCategory.mk 0))).V)
        LinearMap.id fun i => rfl,
      LinearMap.id_comp]
    rfl
  · congr
    · ext x
      dsimp [HomotopyEquiv.ofIso, Finsupp.LinearEquiv.finsuppUnique]
      rw [Finsupp.total_single, one_smul, @Unique.eq_default _ Types.terminalIso.toEquiv.unique x,
        Finsupp.single_eq_same]
    · exact @Subsingleton.elim _ (@Unique.instSubsingleton _ (Limits.uniqueToTerminal _)) _ _
set_option linter.uppercaseLean3 false in
#align group_cohomology.resolution.forget₂_to_Module_homotopy_equiv_f_0_eq GroupCohomology.Resolution.forget₂ToModuleCatHomotopyEquiv_f_0_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6b9161bb7b60f042c48cf598413a443784ba528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
