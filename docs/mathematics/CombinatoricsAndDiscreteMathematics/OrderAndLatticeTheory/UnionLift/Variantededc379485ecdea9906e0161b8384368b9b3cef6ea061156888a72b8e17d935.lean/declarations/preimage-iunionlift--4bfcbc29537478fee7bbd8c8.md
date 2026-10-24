# preimage_iUnionLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7db0431687fcacd957e88c1f1bf50f798d63a5a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:464a3fb1-0ca6-8d53-e793-e1a7739f831d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8509e834-3f8a-007d-25d9-66ad8d6e5891",
  "kind": "theorem",
  "lexical_name": "preimage_iUnionLift",
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
  "slug": "preimage-iunionlift--4bfcbc29537478fee7bbd8c8",
  "source": {
    "blob": "7db0431687fcacd957e88c1f1bf50f798d63a5a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bfcbc29537478fee7bbd8c83731fee12d4199c05f3b34b04fba2f18d2a4bd0e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8509e834-3f8a-007d-25d9-66ad8d6e5891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_iUnionLift (t : Set β) :
    iUnionLift S f hf T hT ⁻¹' t =
      inclusion hT ⁻¹' (⋃ i, inclusion (subset_iUnion S i) '' (f i ⁻¹' t)) := by
  ext x
  simp only [mem_preimage, mem_iUnion, mem_image]
  constructor
  · rcases mem_iUnion.1 (hT x.prop) with ⟨i, hi⟩
    refine fun h => ⟨i, ⟨x, hi⟩, ?_, rfl⟩
    rwa [iUnionLift_of_mem x hi] at h
  · rintro ⟨i, ⟨y, hi⟩, h, hxy⟩
    obtain rfl : y = x := congr_arg Subtype.val hxy
    rwa [iUnionLift_of_mem x hi]

/-- `iUnionLift_const` is useful for proving that `iUnionLift` is a homomorphism
  of algebraic structures when defined on the Union of algebraic subobjects.
  For example, it could be used to prove that the lift of a collection
  of group homomorphisms on a union of subgroups preserves `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnionLift/Variantededc379485ecdea9906e0161b8384368b9b3cef6ea061156888a72b8e17d935.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7db0431687fcacd957e88c1f1bf50f798d63a5a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
