# Cover.nonempty_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4775f99be3e0c351829e9398038c07384214fd138ffb255200ae26a9daf0908",
  "kind": "instance",
  "lexical_name": "Cover.nonempty_of_nonempty",
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
  "slug": "cover-nonempty-of-nonempty--9929628105d55c1d7ceb9943",
  "source": {
    "blob": "714c36ff47e5a20cde528e3faa64725d413221d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 87,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9929628105d55c1d7ceb99436adea2dad5910507852b526d2e7cdc961c53476c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4775f99be3e0c351829e9398038c07384214fd138ffb255200ae26a9daf0908`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Cover.nonempty_of_nonempty [Nonempty X] (𝒰 : X.Cover P) : Nonempty 𝒰.J :=
  Nonempty.map 𝒰.f ‹_›

/-- Given a family of schemes with morphisms to `X` satisfying `P` that jointly
cover `X`, `Cover.mkOfCovers` is an associated `P`-cover of `X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `714c36ff47e5a20cde528e3faa64725d413221d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
