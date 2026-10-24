# rotateFace_dimension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aeb256e8-f7e7-4592-e1c4-ef7982e94b49",
  "kind": "theorem",
  "lexical_name": "rotateFace_dimension",
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
  "slug": "rotateface-dimension--0ac1953c8c14467487444599",
  "source": {
    "blob": "a9e9663752fb975d94dcbacc1337f116969d8561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 244,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant040892fc89a4f973dfd5875eed5d7775f2d262b7f938ac257a64edceaed1b7f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ac1953c8c14467487444599a06f4d6919fd969b2d0245b3e4a916cf96e05e45",
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

Occurrence: `result:aeb256e8-f7e7-4592-e1c4-ef7982e94b49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotateFace_dimension (r : ZMod n) (face : FaceAddress n) :
    (rotateFace r face).dimension = face.dimension := by
  classical
  unfold FaceAddress.dimension FaceAddress.freeCoordinates
  let e := cyclicCoordinateEquiv r
  have hmap :
      (Finset.univ.filter fun i ↦ rotateFace r face i = none).map e.symm.toEmbedding =
        Finset.univ.filter fun i ↦ face i = none := by
    ext i
    constructor
    · intro hi
      obtain ⟨j, hj, rfl⟩ := Finset.mem_map.1 hi
      simpa [rotateFace, e] using (Finset.mem_filter.1 hj).2
    · intro hi
      refine Finset.mem_map.2 ⟨e i, ?_, by simp⟩
      exact Finset.mem_filter.2 ⟨Finset.mem_univ _, by
        simpa [rotateFace, e] using (Finset.mem_filter.1 hi).2⟩
  rw [← hmap, Finset.card_map]

/-- Rotation is an automorphism of the cubical face-inclusion relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant040892fc89a4f973dfd5875eed5d7775f2d262b7f938ac257a64edceaed1b7f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant040892fc89a4f973dfd5875eed5d7775f2d262b7f938ac257a64edceaed1b7f1.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9e9663752fb975d94dcbacc1337f116969d8561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
