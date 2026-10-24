# isBinaryProductOfIsTerminalIsPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7874a2929cdc1c6d07176dd4e92b02910ee43afdd552a5d738cad14f9a8f8650",
  "kind": "def",
  "lexical_name": "isBinaryProductOfIsTerminalIsPullback",
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
  "slug": "isbinaryproductofisterminalispullback--1eba949dca0e1934920acc97",
  "source": {
    "blob": "a4d832eb6c67003430bf56895a578dc29cb988c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 30,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant50439aef75720130d54838e286ef45323f460a5889d3828ce772315bab441c01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1eba949dca0e1934920acc972bc66e73099d480cdd3a2c9b25d4ccc1ccb29a8b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant50439aef75720130d54838e286ef45323f460a5889d3828ce772315bab441c01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7874a2929cdc1c6d07176dd4e92b02910ee43afdd552a5d738cad14f9a8f8650`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isBinaryProductOfIsTerminalIsPullback (F : Discrete WalkingPair ⥤ C) (c : Cone F) {X : C}
    (hX : IsTerminal X) (f : F.obj ⟨WalkingPair.left⟩ ⟶ X) (g : F.obj ⟨WalkingPair.right⟩ ⟶ X)
    (hc : IsLimit
      (PullbackCone.mk (c.π.app ⟨WalkingPair.left⟩) (c.π.app ⟨WalkingPair.right⟩ :) <|
        hX.hom_ext (_ ≫ f) (_ ≫ g))) : IsLimit c where
  lift s :=
    hc.lift
      (PullbackCone.mk (s.π.app ⟨WalkingPair.left⟩) (s.π.app ⟨WalkingPair.right⟩) (hX.hom_ext _ _))
  fac _ j :=
    Discrete.casesOn j fun j =>
      WalkingPair.casesOn j (hc.fac _ WalkingCospan.left) (hc.fac _ WalkingCospan.right)
  uniq s m J := by
    let c' :=
      PullbackCone.mk (m ≫ c.π.app ⟨WalkingPair.left⟩) (m ≫ c.π.app ⟨WalkingPair.right⟩ :)
        (hX.hom_ext (_ ≫ f) (_ ≫ g))
    dsimp; rw [← J, ← J]
    apply hc.hom_ext
    rintro (_ | (_ | _)) <;> simp only [PullbackCone.mk_π_app]
    exacts [(Category.assoc _ _ _).symm.trans (hc.fac_assoc c' WalkingCospan.left f).symm,
      (hc.fac c' WalkingCospan.left).symm, (hc.fac c' WalkingCospan.right).symm]

/-- The pullback over the terminal object is the product -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant50439aef75720130d54838e286ef45323f460a5889d3828ce772315bab441c01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant50439aef75720130d54838e286ef45323f460a5889d3828ce772315bab441c01.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d832eb6c67003430bf56895a578dc29cb988c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
