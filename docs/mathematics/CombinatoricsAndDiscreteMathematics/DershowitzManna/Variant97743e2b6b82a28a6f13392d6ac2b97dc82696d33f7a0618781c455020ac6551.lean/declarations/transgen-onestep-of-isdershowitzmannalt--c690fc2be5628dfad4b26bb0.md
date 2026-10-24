# transGen_oneStep_of_isDershowitzMannaLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c17ed32960049cac87af313a67d426ebe825819",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3aa61719-6744-d6ea-6ae4-1b3eb03025bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9f3919f-25e8-b1db-5d9b-3011930a42e3",
  "kind": "lemma",
  "lexical_name": "transGen_oneStep_of_isDershowitzMannaLT",
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
  "slug": "transgen-onestep-of-isdershowitzmannalt--c690fc2be5628dfad4b26bb0",
  "source": {
    "blob": "4c17ed32960049cac87af313a67d426ebe825819",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c690fc2be5628dfad4b26bb0907c8ef39d3fa01ebfd6a3c924dfe8458dccb14b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9f3919f-25e8-b1db-5d9b-3011930a42e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma transGen_oneStep_of_isDershowitzMannaLT :
    IsDershowitzMannaLT M N → TransGen OneStep M N := by
  classical
  rintro ⟨X, Y, Z, hZ, hM, hN, hYZ⟩
  induction Z using Multiset.induction_on generalizing X Y M N with
  | empty => simp at hZ
  | cons z Z ih => ?_
  obtain rfl | hZ := eq_or_ne Z 0
  · exact .single ⟨X, Y, z, hM, hN, by simpa using hYZ⟩
  let Y' : Multiset α := Y.filter (· < z)
  refine .tail (b := X + Y' + Z) (ih (X + Y') (Y - Y') hZ ?_ rfl fun y hy ↦ ?_) <|
    ⟨X + Z, Y', z, add_right_comm .., by simp [hN, add_comm (_ + _)], by simp [Y']⟩
  · rw [add_add_tsub_cancel (filter_le ..), hM]
  · simp only [sub_filter_eq_filter_not, mem_filter, Y'] at hy
    simpa [hy.2] using hYZ y (by simp_all)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DershowitzManna/Variant97743e2b6b82a28a6f13392d6ac2b97dc82696d33f7a0618781c455020ac6551.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c17ed32960049cac87af313a67d426ebe825819` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
