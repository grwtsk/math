# cechNerveAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15261451ecf341f135f63efba61b07e4d01ab41a0070b9d7cfaa8fa677445abf",
  "kind": "abbrev",
  "lexical_name": "cechNerveAdjunction",
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
  "slug": "cechnerveadjunction--e8c3001ff7500e3e57ad819d",
  "source": {
    "blob": "6fd26c1f8b41781e53669fb9a991d6eb0d90039c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variante91ea3a9633e43bdeb3702243e0a688ebe38a6243ca7a6cb27e4f50409d54bd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8c3001ff7500e3e57ad819deb9ef68e9d6033cda79f650c940acb40ca9a72e5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variante91ea3a9633e43bdeb3702243e0a688ebe38a6243ca7a6cb27e4f50409d54bd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15261451ecf341f135f63efba61b07e4d01ab41a0070b9d7cfaa8fa677445abf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev cechNerveAdjunction : (Augmented.toArrow : _ ⥤ Arrow C) ⊣ augmentedCechNerve :=
  Adjunction.mkOfHomEquiv
    { homEquiv := cechNerveEquiv
      homEquiv_naturality_left_symm := by dsimp [cechNerveEquiv]; cat_disch
      homEquiv_naturality_right := by
        dsimp [cechNerveEquiv]
        -- The next three lines were not needed before https://github.com/leanprover/lean4/pull/2644
        intro X Y Y' f g
        change equivalenceLeftToRight X Y' (f ≫ g) =
          equivalenceLeftToRight X Y f ≫ augmentedCechNerve.map g
        cat_disch
    }

end SimplicialObject

end CategoryTheory

namespace CategoryTheory.Arrow

variable (f : Arrow C)
variable [∀ n : ℕ, HasWidePushout f.left (fun _ : Fin (n + 1) => f.right) fun _ => f.hom]

set_option backward.isDefEq.respectTransparency false in
/-- The Čech conerve associated to an arrow. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variante91ea3a9633e43bdeb3702243e0a688ebe38a6243ca7a6cb27e4f50409d54bd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variante91ea3a9633e43bdeb3702243e0a688ebe38a6243ca7a6cb27e4f50409d54bd8.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fd26c1f8b41781e53669fb9a991d6eb0d90039c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
