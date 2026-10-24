# iff_unop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4d4fbac-e355-a5ec-b548-d797434bd3d7",
  "kind": "theorem",
  "lexical_name": "iff_unop",
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
  "slug": "iff-unop--13d4feb5fd10d6a4865710a1",
  "source": {
    "blob": "e0aaa889c036865de99d09ada628b2689ad7284f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 280,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2055408491526c0cf3dbb2da602e8b0d46779fb9c33b8a5fd8af96c01f6504b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13d4feb5fd10d6a4865710a1c48d4eb7c757a1b369bddda137b4219e0905f89c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2055408491526c0cf3dbb2da602e8b0d46779fb9c33b8a5fd8af96c01f6504b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4d4fbac-e355-a5ec-b548-d797434bd3d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_unop {A B X Y : Cᵒᵖ} {f : A ⟶ X} {i : A ⟶ B} {p : X ⟶ Y} {g : B ⟶ Y}
    (sq : CommSq f i p g) : HasLift sq ↔ HasLift sq.unop := by
  rw [iff, iff]
  exact Nonempty.congr (LiftStruct.unopEquiv sq).toFun (LiftStruct.unopEquiv sq).invFun

end HasLift

/-- A choice of a diagonal morphism that is part of a `LiftStruct` when
the square has a lift. -/
@[to_dual self]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2055408491526c0cf3dbb2da602e8b0d46779fb9c33b8a5fd8af96c01f6504b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2055408491526c0cf3dbb2da602e8b0d46779fb9c33b8a5fd8af96c01f6504b6.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0aaa889c036865de99d09ada628b2689ad7284f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
