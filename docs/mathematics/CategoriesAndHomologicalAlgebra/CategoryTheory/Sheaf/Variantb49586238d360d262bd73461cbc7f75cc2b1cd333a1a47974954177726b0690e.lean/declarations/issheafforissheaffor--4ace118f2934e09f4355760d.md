# isSheafForIsSheafFor'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dd4cda331d260cddd977d3d2162fd1a0fe57e206c25840f6257c80b253e848b",
  "kind": "def",
  "lexical_name": "isSheafForIsSheafFor'",
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
  "slug": "issheafforissheaffor--4ace118f2934e09f4355760d",
  "source": {
    "blob": "6480f3063939ca085691c063fbfc1eebe3957573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 612,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ace118f2934e09f4355760db53f762dada7358f1f0a4123ce07ab5738dda878",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dd4cda331d260cddd977d3d2162fd1a0fe57e206c25840f6257c80b253e848b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isSheafForIsSheafFor' (P : Cᵒᵖ ⥤ A) (s : A ⥤ Type max v₁ u₁)
    [∀ J, PreservesLimitsOfShape (Discrete.{max v₁ u₁} J) s] (U : C) (R : Presieve U) :
    IsLimit (s.mapCone (Fork.ofι _ (w R P))) ≃
      IsLimit (Fork.ofι _ (Equalizer.Presieve.w (P ⋙ s) R)) := by
  apply Equiv.trans (isLimitMapConeForkEquiv _ _) _
  apply (IsLimit.postcomposeHomEquiv _ _).symm.trans (IsLimit.equivIsoLimit _)
  · apply NatIso.ofComponents _ _
    · rintro (_ | _)
      · apply PreservesProduct.iso s
      · apply PreservesProduct.iso s
    · rintro _ _ (_ | _)
      · refine' limit.hom_ext (fun j => _)
        dsimp [Equalizer.Presieve.firstMap, firstMap]
        simp only [limit.lift_π, map_lift_piComparison, assoc, Fan.mk_π_app, Functor.map_comp]
        rw [piComparison_comp_π_assoc]
      · refine' limit.hom_ext (fun j => _)
        dsimp [Equalizer.Presieve.secondMap, secondMap]
        simp only [limit.lift_π, map_lift_piComparison, assoc, Fan.mk_π_app, Functor.map_comp]
        rw [piComparison_comp_π_assoc]
      · dsimp
        simp
  · refine' Fork.ext (Iso.refl _) _
    dsimp [Equalizer.forkMap, forkMap]
    simp [Fork.ι]
#align category_theory.presheaf.is_sheaf_for_is_sheaf_for' CategoryTheory.Presheaf.isSheafForIsSheafFor'

-- Remark : this lemma and the next use `A'` not `A`; `A'` is `A` but with a universe
-- restriction. Can they be generalised?
/-- The equalizer definition of a sheaf given by `isSheaf'` is equivalent to `isSheaf`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6480f3063939ca085691c063fbfc1eebe3957573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
