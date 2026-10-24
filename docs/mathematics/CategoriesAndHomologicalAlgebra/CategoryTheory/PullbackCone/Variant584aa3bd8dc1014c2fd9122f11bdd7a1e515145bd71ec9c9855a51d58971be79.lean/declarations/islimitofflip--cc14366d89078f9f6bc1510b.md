# isLimitOfFlip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71c1e5d998ebd31b5ae2d1208630d76156d455cb8f77d7d302a095ce39d6d83b",
  "kind": "def",
  "lexical_name": "isLimitOfFlip",
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
  "slug": "islimitofflip--cc14366d89078f9f6bc1510b",
  "source": {
    "blob": "6eb1b7bad5a94837d2f8bead75411763320d677b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 255,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant584aa3bd8dc1014c2fd9122f11bdd7a1e515145bd71ec9c9855a51d58971be79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc14366d89078f9f6bc1510b343931ecd1a394c4b1fd337a32d224889f0cbc69",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant584aa3bd8dc1014c2fd9122f11bdd7a1e515145bd71ec9c9855a51d58971be79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71c1e5d998ebd31b5ae2d1208630d76156d455cb8f77d7d302a095ce39d6d83b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitOfFlip (ht : IsLimit t.flip) : IsLimit t :=
  IsLimit.ofIsoLimit (flipIsLimit ht) t.flipFlipIso

end Flip

end PullbackCone

/-- This is a helper construction that can be useful when verifying that a category has all
    pullbacks. Given `F : WalkingCospan ⥤ C`, which is really the same as
    `cospan (F.map inl) (F.map inr)`, and a pullback cone on `F.map inl` and `F.map inr`, we
    get a cone on `F`.

    If you're thinking about using this, have a look at `hasPullbacks_of_hasLimit_cospan`,
    which you may find to be an easier way of achieving your goal. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant584aa3bd8dc1014c2fd9122f11bdd7a1e515145bd71ec9c9855a51d58971be79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant584aa3bd8dc1014c2fd9122f11bdd7a1e515145bd71ec9c9855a51d58971be79.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb1b7bad5a94837d2f8bead75411763320d677b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
