# comp_single_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2e0f9853375a2c7f8e486a1ed9151c36b2ffb84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b14e6aa9-a483-8179-4354-abce689e7039",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f783a67-1c73-6b13-d067-3f99aaf1ebbd",
  "kind": "theorem",
  "lexical_name": "comp_single_single",
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
  "slug": "comp-single-single--46cc61ef8266a49ea3ac9f1e",
  "source": {
    "blob": "a2e0f9853375a2c7f8e486a1ed9151c36b2ffb84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 46,
    "path": "GRWTSK/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46cc61ef8266a49ea3ac9f1e4fa743bad91aab0bd18a26ea46b1de1352c183ff",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f783a67-1c73-6b13-d067-3f99aaf1ebbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_single_single
    [DecidableEq I] [DecidableEq J] [DecidableEq K] [DecidableEq L] [Zero R] (i j k l r) :
    comp I J K L R (single i j (single k l r))
      = single (i, k) (j, l) r := by
  ext ⟨i', k'⟩ ⟨j', l'⟩
  dsimp [comp_apply]
  obtain hi | rfl := ne_or_eq i i'
  · rw [single_apply_of_row_ne hi,
      single_apply_of_row_ne (ne_of_apply_ne Prod.fst hi), Matrix.zero_apply]
  obtain hj | rfl := ne_or_eq j j'
  · rw [single_apply_of_col_ne _ _ hj,
      single_apply_of_col_ne _ _ (ne_of_apply_ne Prod.fst hj), Matrix.zero_apply]
  rw [single_apply_same]
  obtain hk | rfl := ne_or_eq k k'
  · rw [single_apply_of_row_ne hk,
      single_apply_of_row_ne (ne_of_apply_ne Prod.snd hk)]
  obtain hj | rfl := ne_or_eq l l'
  · rw [single_apply_of_col_ne _ _ hj,
      single_apply_of_col_ne _ _ (ne_of_apply_ne Prod.snd hj)]
  rw [single_apply_same, single_apply_same]

@[deprecated (since := "2025-05-05")] alias comp_stdBasisMatrix_stdBasisMatrix := comp_single_single

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2e0f9853375a2c7f8e486a1ed9151c36b2ffb84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
