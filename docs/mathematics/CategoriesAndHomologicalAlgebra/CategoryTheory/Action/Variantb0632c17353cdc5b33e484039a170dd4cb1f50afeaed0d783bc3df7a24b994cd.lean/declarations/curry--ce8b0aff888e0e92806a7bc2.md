# curry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7574121a8b71389ab601ba19efd97a1b49855723ee481ce6cada3787fde6c0d4",
  "kind": "def",
  "lexical_name": "curry",
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
  "slug": "curry--ce8b0aff888e0e92806a7bc2",
  "source": {
    "blob": "ae96ca2885e875963560545ae4a8a49bd9628af7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variantb0632c17353cdc5b33e484039a170dd4cb1f50afeaed0d783bc3df7a24b994cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce8b0aff888e0e92806a7bc23d223093133eb9801f08e7ba41e4d2d6415b80fc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variantb0632c17353cdc5b33e484039a170dd4cb1f50afeaed0d783bc3df7a24b994cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7574121a8b71389ab601ba19efd97a1b49855723ee481ce6cada3787fde6c0d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def curry (F : ActionCategory G X ⥤ SingleObj H) : G →* (X → H) ⋊[mulAutArrow] G :=
  have F_map_eq : ∀ {a b} {f : a ⟶ b}, F.map f = (F.map (homOfPair b.back f.hom) : H) := by
    apply ActionCategory.cases
    simp
  { toFun := fun g => ⟨fun b => F.map (homOfPair b g), g⟩
    map_one' := by
      ext1
      · ext b
        exact F_map_eq.symm.trans (F.map_id b)
      rfl
    map_mul' := by
      intro g h
      ext b
      · exact F_map_eq.symm.trans (F.map_comp (homOfPair (g⁻¹ • b) h) (homOfPair b g))
      rfl }

set_option backward.isDefEq.respectTransparency.types false in
/-- Given `G` acting on `X`, a group homomorphism `φ : G →* (X → H) ⋊ G` can be uncurried to
a functor from the action groupoid to `H`, provided that `φ g = (_, g)` for all `g`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variantb0632c17353cdc5b33e484039a170dd4cb1f50afeaed0d783bc3df7a24b994cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variantb0632c17353cdc5b33e484039a170dd4cb1f50afeaed0d783bc3df7a24b994cd.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae96ca2885e875963560545ae4a8a49bd9628af7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
