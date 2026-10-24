# isPreprimitive_fixingSubgroup_insert_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c657e41b8b817add155da6ebdea6af5cb610eb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb3fdb58e7d05c3688514c4b2e0018e597756dc90095248378e09d775fe69201.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf454452-e833-2ace-e6fb-7ab9696e7c4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0dcb382-6743-6281-618e-288cd53a675e",
  "kind": "theorem",
  "lexical_name": "isPreprimitive_fixingSubgroup_insert_iff",
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
  "slug": "ispreprimitive-fixingsubgroup-insert-iff--6ec6a835f617d9fedf41fce7",
  "source": {
    "blob": "4c657e41b8b817add155da6ebdea6af5cb610eb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variantcb3fdb58e7d05c3688514c4b2e0018e597756dc90095248378e09d775fe69201.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ec6a835f617d9fedf41fce73f660b8cf0b9ad15cfff7686003f1ff4b992ba52",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultiplePrimitivity/Variantcb3fdb58e7d05c3688514c4b2e0018e597756dc90095248378e09d775fe69201.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0dcb382-6743-6281-618e-288cd53a675e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPreprimitive_fixingSubgroup_insert_iff {a : α} {t : Set (ofStabilizer G a)} :
    IsPreprimitive ↥(fixingSubgroup G (insert a (Subtype.val '' t)))
      ↥(ofFixingSubgroup G (insert a (Subtype.val '' t))) ↔
      IsPreprimitive (fixingSubgroup (stabilizer G a) t)
        (ofFixingSubgroup (stabilizer G a) t) :=
  isPreprimitive_congr (fixingSubgroupInsertEquiv a t).surjective
    ofFixingSubgroup_insert_map_bijective

end Preprimitive

/-- An additive action is `n`-multiply preprimitive if it is `n`-multiply pretransitive
  and if, when `n ≥ 1`, for every set `s` of cardinality `n - 1`,
  the action of `fixingAddSubgroup M s` on the complement of `s` is preprimitive. -/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultiplePrimitivity/Variantcb3fdb58e7d05c3688514c4b2e0018e597756dc90095248378e09d775fe69201.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variantcb3fdb58e7d05c3688514c4b2e0018e597756dc90095248378e09d775fe69201.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c657e41b8b817add155da6ebdea6af5cb610eb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
