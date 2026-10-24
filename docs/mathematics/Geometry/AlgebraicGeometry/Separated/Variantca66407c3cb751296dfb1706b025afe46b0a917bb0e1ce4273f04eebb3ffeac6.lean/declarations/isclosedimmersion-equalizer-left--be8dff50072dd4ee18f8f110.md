# isClosedImmersion_equalizer_ι_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e6a9e22b032961cc385b52ef0e9702893c0636f18870657c2b10d387aa1c5da",
  "kind": "instance",
  "lexical_name": "isClosedImmersion_equalizer_ι_left",
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
  "slug": "isclosedimmersion-equalizer-left--be8dff50072dd4ee18f8f110",
  "source": {
    "blob": "bf5841503a1eaaec126a1fa517de0ced41de27df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 285,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be8dff50072dd4ee18f8f1109a3c20fdc347bd7cd22bfff026077e8539146235",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e6a9e22b032961cc385b52ef0e9702893c0636f18870657c2b10d387aa1c5da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isClosedImmersion_equalizer_ι_left {S : Scheme} {X Y : Over S} [IsSeparated Y.hom]
    (f g : X ⟶ Y) : IsClosedImmersion (equalizer.ι f g).left := by
  refine MorphismProperty.of_isPullback
    ((Limits.isPullback_equalizer_prod f g).map (Over.forget _)).flip ?_
  rw [← MorphismProperty.cancel_right_of_respectsIso @IsClosedImmersion _
    (Over.prodLeftIsoPullback Y Y).hom]
  convert! (inferInstance : IsClosedImmersion (pullback.diagonal Y.hom))
  ext1 <;> simp [← Over.comp_left]

/--
Suppose `X` is a reduced scheme and that `f g : X ⟶ Y` agree over some separated `Y ⟶ Z`.
Then `f = g` if `ι ≫ f = ι ≫ g` for some dominant `ι`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Separated/Variantca66407c3cb751296dfb1706b025afe46b0a917bb0e1ce4273f04eebb3ffeac6.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5841503a1eaaec126a1fa517de0ced41de27df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
