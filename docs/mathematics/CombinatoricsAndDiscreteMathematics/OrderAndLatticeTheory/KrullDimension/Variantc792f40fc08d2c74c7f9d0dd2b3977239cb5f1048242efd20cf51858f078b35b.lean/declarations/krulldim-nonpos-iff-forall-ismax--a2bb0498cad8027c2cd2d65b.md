# krullDim_nonpos_iff_forall_isMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "740ae1af43542d7d79a0d207f0bef64b1eb596d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 575,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c792f40fc08d2c74c7f9d0dd2b3977239cb5f1048242efd20cf51858f078b35b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:214189d4-c866-9d16-64b6-e7b017ede4ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca5a2561-b7d5-6fec-3096-927560480f90",
  "kind": "lemma",
  "lexical_name": "krullDim_nonpos_iff_forall_isMax",
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
  "slug": "krulldim-nonpos-iff-forall-ismax--a2bb0498cad8027c2cd2d65b",
  "source": {
    "blob": "740ae1af43542d7d79a0d207f0bef64b1eb596d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 575,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantc792f40fc08d2c74c7f9d0dd2b3977239cb5f1048242efd20cf51858f078b35b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2bb0498cad8027c2cd2d65bd8e748c0bb7fc54a0213fdd276d2502a9f3159ef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantc792f40fc08d2c74c7f9d0dd2b3977239cb5f1048242efd20cf51858f078b35b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca5a2561-b7d5-6fec-3096-927560480f90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma krullDim_nonpos_iff_forall_isMax : krullDim α ≤ 0 ↔ ∀ x : α, IsMax x := by
  simp only [krullDim, iSup_le_iff, isMax_iff_forall_not_lt]
  refine ⟨fun H x y h ↦ (H ⟨1, ![x, y],
    fun i ↦ by obtain rfl := Subsingleton.elim i 0; simpa⟩).not_lt (by simp), ?_⟩
  · rintro H ⟨_ | n, l, h⟩
    · simp
    · cases H (l 0) (l 1) (h 0)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantc792f40fc08d2c74c7f9d0dd2b3977239cb5f1048242efd20cf51858f078b35b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantc792f40fc08d2c74c7f9d0dd2b3977239cb5f1048242efd20cf51858f078b35b.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `740ae1af43542d7d79a0d207f0bef64b1eb596d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
