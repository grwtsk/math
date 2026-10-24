# isTable_buildTableGo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69dcabad9a4acdbff59ede3becc2a23b932a3639",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6061b364-5490-6d74-244a-51dc9c640a53",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d247a81-d715-8db2-aa6a-b57a7ffc4dd7",
  "kind": "theorem",
  "lexical_name": "isTable_buildTableGo",
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
  "slug": "istable-buildtablego--5c0a283b6363eb76823cc40e",
  "source": {
    "blob": "69dcabad9a4acdbff59ede3becc2a23b932a3639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 322,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c0a283b6363eb76823cc40e4541a72c750c7726eda2edadabd3c5316f9a12ee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d247a81-d715-8db2-aa6a-b57a7ffc4dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTable_buildTableGo {pat : Slice} {table : Array Nat} {ht₀ ht h}
    (ht' : IsTable pat.copy.toByteArray table) :
    IsTable pat.copy.toByteArray (buildTable.go pat table ht₀ ht h).1 := by
  fun_induction buildTable.go with
  | case1 t ht₀ ht h hlt patByte dist ih =>
    refine ih (ht'.push (by simp; omega) ?_)
    simp only [getUTF8Byte_eq_getUTF8Byte_copy, String.getUTF8Byte_eq_getElem,
      ht'.eq_prefixFunction, dist, patByte]
    rw [computeDistance_eq_prefixFunctionRecurrence _ _ rfl _ ht',
      prefixFunctionRecurrence_eq_prefixFunction]
    · exact prefixFunction_le_prefixFunction_sub_one_add_one ht₀
    · exact partialMatch_prefixFunction_sub_one ht₀
    · exact prefixFunction_sub_one_lt ht₀
  | case2 t ht₀ ht h hlt => simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69dcabad9a4acdbff59ede3becc2a23b932a3639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
