# mk_Ioi_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f9081906f768de3a664bbda453f7af32e44af8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b28721d-f7e7-5b2d-94d3-097dc0937526",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bae54eba-4ad2-ee23-2b96-58f1129c6a42",
  "kind": "theorem",
  "lexical_name": "mk_Ioi_real",
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
  "slug": "mk-ioi-real--6f3d0e1e3b74fdcdb14fb69e",
  "source": {
    "blob": "0f9081906f768de3a664bbda453f7af32e44af8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 204,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f3d0e1e3b74fdcdb14fb69eed3524444cd173afae817fb84c37131cb2c712ca",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bae54eba-4ad2-ee23-2b96-58f1129c6a42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_Ioi_real (a : ℝ) : #(Ioi a) = 𝔠 := by
  refine le_antisymm (mk_real ▸ mk_set_le _) ?_
  rw [← not_lt]
  intro h
  refine _root_.ne_of_lt ?_ mk_univ_real
  have hu : Iio a ∪ {a} ∪ Ioi a = Set.univ := by
    convert @Iic_union_Ioi ℝ _ _
    exact Iio_union_right
  rw [← hu]
  refine lt_of_le_of_lt (mk_union_le _ _) ?_
  refine lt_of_le_of_lt (add_le_add_right (mk_union_le _ _) _) ?_
  have h2 : (fun x => a + a - x) '' Ioi a = Iio a := by
    convert @image_const_sub_Ioi ℝ _ _ _
    simp
  rw [← h2]
  refine add_lt_of_lt (cantor _).le ?_ h
  refine add_lt_of_lt (cantor _).le (mk_image_le.trans_lt h) ?_
  rw [mk_singleton]
  exact one_lt_aleph0.trans (cantor _)

/-- The cardinality of the interval [a, ∞). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Cardinality/Variant34458b7d7d8fb81d9f50e8a9ea6d71bc8dd56d2271d61e48ea9a7ebd71f9cf83.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f9081906f768de3a664bbda453f7af32e44af8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
