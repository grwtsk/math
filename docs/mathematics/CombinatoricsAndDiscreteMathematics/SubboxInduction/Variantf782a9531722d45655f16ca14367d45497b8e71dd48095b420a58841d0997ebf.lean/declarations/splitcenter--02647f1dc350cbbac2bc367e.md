# splitCenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e317aa569e3649c2cec3a5be49d3f17c80b0ca24fe5010fdbe39a9eba3802452",
  "kind": "def",
  "lexical_name": "splitCenter",
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
  "slug": "splitcenter--02647f1dc350cbbac2bc367e",
  "source": {
    "blob": "b423bb32daf759d0927e5b80b858c13d9b5ea600",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variantf782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02647f1dc350cbbac2bc367e23f2a8ae3c79c60103109824b9bdb86f85972c8f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variantf782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e317aa569e3649c2cec3a5be49d3f17c80b0ca24fe5010fdbe39a9eba3802452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitCenter (I : Box ι) : Prepartition I where
  boxes := Finset.univ.map (Box.splitCenterBoxEmb I)
  le_of_mem' := by simp [I.splitCenterBox_le]
  pairwiseDisjoint := by
    rw [Finset.coe_map, Finset.coe_univ, image_univ]
    rintro _ ⟨s, rfl⟩ _ ⟨t, rfl⟩ Hne
    exact I.disjoint_splitCenterBox (mt (congr_arg _) Hne)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variantf782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variantf782a9531722d45655f16ca14367d45497b8e71dd48095b420a58841d0997ebf.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b423bb32daf759d0927e5b80b858c13d9b5ea600` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
