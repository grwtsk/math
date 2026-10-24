# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4eb02bce391890caab93e2fc11f17ccb833d3524ea8d315582b7580edf25a7ac",
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
  "slug": "instance--9f6f4d28bd3bca8da0d58dbd",
  "source": {
    "blob": "4b47e0f5670124be88f67a116a184ec4c4188bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 201,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2d14a0e1387f174b94bf33902b49dcd95ff4aaba9e0c0acee76d2307191aea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f6f4d28bd3bca8da0d58dbd3afd64ba2311f243cb75c5558e7e445d5fec8019",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2d14a0e1387f174b94bf33902b49dcd95ff4aaba9e0c0acee76d2307191aea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4eb02bce391890caab93e2fc11f17ccb833d3524ea8d315582b7580edf25a7ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsRegularEpi (frobeniusMorphism f A' B') := by
  apply regularEpiIsStableUnderBaseChange.of_isPullback (frobeniusMorphism_isPullback f A' B').flip
  have := strongEpi_of_strongEpiMonoFactorisation (strongEpiMonoFactorisation (A'.arrow ≫ f))
    (imageFactorisation f A').isImage
  simp only [MorphismProperty.regularEpi_iff]
  infer_instance

set_option backward.isDefEq.respectTransparency false in
/--
Given a morphism `f : A ⟶ B` and subobjects `A' ⟶ A` and `B' ⟶ B`, the `frobeniusMorphism`
gives a `StrongEpiMonoFactorisation` of `(A' ⊓ (Subobject.pullback f).obj B').arrow ≫ f` through
`((«exists» f).obj A' ⊓ B').arrow`.
This is an auxiliary definition to show `frobenius_reciprocity`.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2d14a0e1387f174b94bf33902b49dcd95ff4aaba9e0c0acee76d2307191aea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2d14a0e1387f174b94bf33902b49dcd95ff4aaba9e0c0acee76d2307191aea5.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b47e0f5670124be88f67a116a184ec4c4188bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
