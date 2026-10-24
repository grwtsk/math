# RationalMap.eq_of_fromFunctionField_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9f26d98-9cd1-dc90-1444-b3df4ce95c7b",
  "kind": "lemma",
  "lexical_name": "RationalMap.eq_of_fromFunctionField_eq",
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
  "slug": "rationalmap-eq-of-fromfunctionfield-eq--30d758345a43f6f5cca95659",
  "source": {
    "blob": "83be0fd853851132262d98d7926cfac92f5372f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 440,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30d758345a43f6f5cca95659251e2e750ccf2e96dcbceef015961777883c6a21",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9f26d98-9cd1-dc90-1444-b3df4ce95c7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RationalMap.eq_of_fromFunctionField_eq [IsIntegral X] (f g : X.RationalMap Y)
    (H : f.fromFunctionField = g.fromFunctionField) : f = g := by
  obtain ⟨f, rfl⟩ := f.exists_rep
  obtain ⟨g, rfl⟩ := g.exists_rep
  refine PartialMap.toRationalMap_eq_iff.mpr ?_
  exact PartialMap.equiv_of_fromSpecStalkOfMem_eq _ _ _ _ H

/--
Given `S`-schemes `X` and `Y` such that `Y` is locally of finite type and `X` is integral,
`S`-morphisms `Spec K(X) ⟶ Y` correspond bijectively to `S`-rational maps from `X` to `Y`.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83be0fd853851132262d98d7926cfac92f5372f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
