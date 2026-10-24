# rotateFace_commonIncidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcd1850b-c714-9bbf-a0bd-db362c0a387f",
  "kind": "theorem",
  "lexical_name": "rotateFace_commonIncidence",
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
  "slug": "rotateface-commonincidence--71610d58680f03ef4993b7b3",
  "source": {
    "blob": "a9e9663752fb975d94dcbacc1337f116969d8561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 298,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant040892fc89a4f973dfd5875eed5d7775f2d262b7f938ac257a64edceaed1b7f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71610d58680f03ef4993b7b3b26eeee53526481634d8f2779c245f1da48afd61",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant040892fc89a4f973dfd5875eed5d7775f2d262b7f938ac257a64edceaed1b7f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcd1850b-c714-9bbf-a0bd-db362c0a387f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotateFace_commonIncidence (r : ZMod n)
    (point : BitField n) (left right : FaceAddress n) :
    (FaceAddress.Incident (rotateBitField r point) (rotateFace r left) ∧
        FaceAddress.Incident (rotateBitField r point) (rotateFace r right)) ↔
      (FaceAddress.Incident point left ∧
        FaceAddress.Incident point right) := by
  simp only [rotateFace_incidence]

/-- F₂-valued chains on all nonempty cubical faces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant040892fc89a4f973dfd5875eed5d7775f2d262b7f938ac257a64edceaed1b7f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant040892fc89a4f973dfd5875eed5d7775f2d262b7f938ac257a64edceaed1b7f1.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9e9663752fb975d94dcbacc1337f116969d8561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
