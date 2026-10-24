# rotateFace_incidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a132a1e8-9de7-859e-da7b-6c7759f7c5c7",
  "kind": "theorem",
  "lexical_name": "rotateFace_incidence",
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
  "slug": "rotateface-incidence--203ad6b6a8f9a8b21ec0032f",
  "source": {
    "blob": "bec76d2ab4dc6ac1553a25950a8cdfb4c2d11092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 261,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant4dbee4aa48915fa6011a532b06b3c89fac0a3fe1ba57889249428e456614095a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:203ad6b6a8f9a8b21ec0032f5aafdca2cd85803048e9f09ade9b9a8b96e6bdc5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant4dbee4aa48915fa6011a532b06b3c89fac0a3fe1ba57889249428e456614095a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a132a1e8-9de7-859e-da7b-6c7759f7c5c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotateFace_incidence (r : ZMod n)
    (point : BitField n) (face : FaceAddress n) :
    FaceAddress.Incident (rotateBitField r point) (rotateFace r face) ↔
      FaceAddress.Incident point face := by
  constructor
  · intro h i b hi
    have hrot := h (cyclicCoordinateEquiv r i) b
    simpa [rotateBitField, rotateFace] using hrot (by simpa [rotateFace] using hi)
  · intro h i b hi
    exact h ((cyclicCoordinateEquiv r).symm i) b hi

/--
Rotation preserves the common vertex set of two faces, hence their
intersection whenever it is nonempty.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant4dbee4aa48915fa6011a532b06b3c89fac0a3fe1ba57889249428e456614095a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant4dbee4aa48915fa6011a532b06b3c89fac0a3fe1ba57889249428e456614095a.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec76d2ab4dc6ac1553a25950a8cdfb4c2d11092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
