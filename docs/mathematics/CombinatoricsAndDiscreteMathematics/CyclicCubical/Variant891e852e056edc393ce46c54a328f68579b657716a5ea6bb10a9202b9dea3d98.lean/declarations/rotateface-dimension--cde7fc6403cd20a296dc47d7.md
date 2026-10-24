# rotateFace_dimension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1270cd064fde10dc0711ee520fe8d865ee809077",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f8ff74b-9886-9673-0e7a-30956087eb0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:894bad93-d48b-a450-8b04-423c66315185",
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
  "slug": "rotateface-dimension--cde7fc6403cd20a296dc47d7",
  "source": {
    "blob": "1270cd064fde10dc0711ee520fe8d865ee809077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cde7fc6403cd20a296dc47d73734c0198b730eb7154e6d47fa05ac2005de5f29",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:894bad93-d48b-a450-8b04-423c66315185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–233.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1270cd064fde10dc0711ee520fe8d865ee809077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
