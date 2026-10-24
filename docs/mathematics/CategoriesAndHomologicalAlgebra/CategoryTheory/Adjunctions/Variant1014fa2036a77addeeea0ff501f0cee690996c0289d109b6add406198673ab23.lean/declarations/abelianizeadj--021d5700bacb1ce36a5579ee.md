# abelianizeAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7ae7770212f93c7287696ca8f38b1addc0e1b89e89833190aabd80488c9f82f",
  "kind": "def",
  "lexical_name": "abelianizeAdj",
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
  "slug": "abelianizeadj--021d5700bacb1ce36a5579ee",
  "source": {
    "blob": "2e160aeea75dc0383eb332ea279df02765f72c3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 158,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1014fa2036a77addeeea0ff501f0cee690996c0289d109b6add406198673ab23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:021d5700bacb1ce36a5579ee0c994a8d6d05df344dd47610cd1cadc874de39b5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1014fa2036a77addeeea0ff501f0cee690996c0289d109b6add406198673ab23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7ae7770212f93c7287696ca8f38b1addc0e1b89e89833190aabd80488c9f82f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def abelianizeAdj : abelianize ⊣ forget₂ CommGrpCat.{u} GrpCat.{u} :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun _ _ => ((ConcreteCategory.homEquiv (C := CommGrpCat)).trans
        Abelianization.lift.symm).trans
        (ConcreteCategory.homEquiv (C := GrpCat)).symm
      -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): used to be just `by intros; ext1; rfl`.
      homEquiv_naturality_left_symm := by
        intros
        ext
        simp +instances only
        apply Eq.symm
        apply Abelianization.lift_unique
        intros
        apply Abelianization.lift_apply_of }

end Abelianization

end GrpCat

/-- The functor taking a monoid to its subgroup of units. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1014fa2036a77addeeea0ff501f0cee690996c0289d109b6add406198673ab23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1014fa2036a77addeeea0ff501f0cee690996c0289d109b6add406198673ab23.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e160aeea75dc0383eb332ea279df02765f72c3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
