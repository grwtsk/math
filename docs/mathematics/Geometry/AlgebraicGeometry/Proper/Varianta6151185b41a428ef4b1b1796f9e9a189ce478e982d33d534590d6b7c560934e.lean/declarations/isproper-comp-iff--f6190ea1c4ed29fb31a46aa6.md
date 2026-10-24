# IsProper.comp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e619aaab-607d-af05-fa81-3117698a2979",
  "kind": "lemma",
  "lexical_name": "IsProper.comp_iff",
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
  "slug": "isproper-comp-iff--f6190ea1c4ed29fb31a46aa6",
  "source": {
    "blob": "0a38e9ae929c2fe2d2b6c1fccafbc9e1d2e6affa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 135,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Proper/Varianta6151185b41a428ef4b1b1796f9e9a189ce478e982d33d534590d6b7c560934e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6190ea1c4ed29fb31a46aa63e3519455357f684a20314af32c0fccc732882a5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Proper/Varianta6151185b41a428ef4b1b1796f9e9a189ce478e982d33d534590d6b7c560934e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e619aaab-607d-af05-fa81-3117698a2979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsProper.comp_iff {f : X ⟶ Y} {g : Y ⟶ Z} [IsProper g] :
    IsProper (f ≫ g) ↔ IsProper f :=
  ⟨fun _ ↦ .of_comp f g, fun _ ↦ inferInstance⟩

section GlobalSection

variable (K : Type u) [Field K]

set_option backward.isDefEq.respectTransparency.types false in
/-- If `f : X ⟶ Y` is universally closed and `Y` is affine,
then the map on global sections is integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Proper/Varianta6151185b41a428ef4b1b1796f9e9a189ce478e982d33d534590d6b7c560934e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Proper/Varianta6151185b41a428ef4b1b1796f9e9a189ce478e982d33d534590d6b7c560934e.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a38e9ae929c2fe2d2b6c1fccafbc9e1d2e6affa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
