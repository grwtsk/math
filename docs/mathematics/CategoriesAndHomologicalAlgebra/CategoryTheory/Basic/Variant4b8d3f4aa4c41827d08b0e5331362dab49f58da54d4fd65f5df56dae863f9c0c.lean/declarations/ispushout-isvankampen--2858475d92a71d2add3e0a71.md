# IsPushout.IsVanKampen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6bff7be8ef48d26f54f38a141b347da37a4ea3f7dfc31946997183272974cb7",
  "kind": "def",
  "lexical_name": "IsPushout.IsVanKampen",
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
  "slug": "ispushout-isvankampen--2858475d92a71d2add3e0a71",
  "source": {
    "blob": "7d68ae6f555ac0acad03e0154631454d4fa45b1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b8d3f4aa4c41827d08b0e5331362dab49f58da54d4fd65f5df56dae863f9c0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2858475d92a71d2add3e0a719acc8e92c400715adc09642cc318b297a9861db4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b8d3f4aa4c41827d08b0e5331362dab49f58da54d4fd65f5df56dae863f9c0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6bff7be8ef48d26f54f38a141b347da37a4ea3f7dfc31946997183272974cb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsPushout.IsVanKampen (_ : IsPushout f g h i) : Prop :=
  ∀ ⦃W' X' Y' Z' : C⦄ (f' : W' ⟶ X') (g' : W' ⟶ Y') (h' : X' ⟶ Z') (i' : Y' ⟶ Z') (αW : W' ⟶ W)
    (αX : X' ⟶ X) (αY : Y' ⟶ Y) (αZ : Z' ⟶ Z) (_ : IsPullback f' αW αX f)
    (_ : IsPullback g' αW αY g) (_ : CommSq h' αX αZ h) (_ : CommSq i' αY αZ i)
    (_ : CommSq f' g' h' i'), IsPushout f' g' h' i' ↔ IsPullback h' αX αZ h ∧ IsPullback i' αY αZ i

/-- If a van Kampen pushout forms the bottom face of a commutative "half-cube" whose front faces
are pullbacks, then there exist two back faces which are pullbacks and a top face which is a
pushout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b8d3f4aa4c41827d08b0e5331362dab49f58da54d4fd65f5df56dae863f9c0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b8d3f4aa4c41827d08b0e5331362dab49f58da54d4fd65f5df56dae863f9c0c.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d68ae6f555ac0acad03e0154631454d4fa45b1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
