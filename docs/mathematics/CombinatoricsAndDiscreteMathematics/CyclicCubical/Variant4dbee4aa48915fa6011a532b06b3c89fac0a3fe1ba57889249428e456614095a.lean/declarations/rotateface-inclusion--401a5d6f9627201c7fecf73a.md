# rotateFace_inclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a9bb59e-4d95-27e2-239f-149145f8e03a",
  "kind": "theorem",
  "lexical_name": "rotateFace_inclusion",
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
  "slug": "rotateface-inclusion--401a5d6f9627201c7fecf73a",
  "source": {
    "blob": "bec76d2ab4dc6ac1553a25950a8cdfb4c2d11092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant4dbee4aa48915fa6011a532b06b3c89fac0a3fe1ba57889249428e456614095a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:401a5d6f9627201c7fecf73a48269aad8cbf6a3da56224a4c53a578a9693e421",
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

Occurrence: `result:3a9bb59e-4d95-27e2-239f-149145f8e03a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotateFace_inclusion (r : ZMod n)
    (lower upper : FaceAddress n) :
    (rotateFace r lower).IsSubface (rotateFace r upper) ↔
      lower.IsSubface upper := by
  constructor
  · intro h i b hi
    have hrot := h (cyclicCoordinateEquiv r i) b
    simpa [rotateFace] using hrot (by simpa [rotateFace] using hi)
  · intro h i b hi
    exact h ((cyclicCoordinateEquiv r).symm i) b hi

/-- Rotation preserves the immediate cubical boundary relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant4dbee4aa48915fa6011a532b06b3c89fac0a3fe1ba57889249428e456614095a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant4dbee4aa48915fa6011a532b06b3c89fac0a3fe1ba57889249428e456614095a.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec76d2ab4dc6ac1553a25950a8cdfb4c2d11092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
