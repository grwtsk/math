# RationalMap.IsDominant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96bbafd693b18792fe5b3fbbd17ce98b9fa8aa8496bec123ff08a00a6ebbcd81",
  "kind": "class",
  "lexical_name": "RationalMap.IsDominant",
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
  "slug": "rationalmap-isdominant--79c34d75470dafdabc48465a",
  "source": {
    "blob": "3fe6df1938136a164e754a143b94c2dd4136aa55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 81,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Dominant/Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79c34d75470dafdabc48465a24e82823008c6873e6589f7ac5253e6e4f9da9e6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Dominant/Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96bbafd693b18792fe5b3fbbd17ce98b9fa8aa8496bec123ff08a00a6ebbcd81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected class RationalMap.IsDominant (f : X ⤏ Y) : Prop where
  out : Quotient.liftOn f (fun g ↦ IsDominant g.hom) <| fun _ _ h ↦
    propext (PartialMap.isDominant_hom_iff_of_equiv _ _ h)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Dominant/Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Dominant/Variant8dd49632a9e9fe4b3eef7f92d1ef276b8c8db852bf606bffd38fff8a24de01ea.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fe6df1938136a164e754a143b94c2dd4136aa55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
