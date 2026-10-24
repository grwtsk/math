# submatrix_single_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9223ab828cdd114bdf64c73fe868bc8bf9bb8b35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4d09acf7a271e150eecb81bdc65a7b2e618ee659ba87ddbf4145bef687fa8d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00a57757-efb6-047d-c23c-fef5651b328d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbd02dc0-eeb5-5800-2cf0-7cf315b8e4d9",
  "kind": "theorem",
  "lexical_name": "submatrix_single_equiv",
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
  "slug": "submatrix-single-equiv--174ab61332f4391571f32cd4",
  "source": {
    "blob": "9223ab828cdd114bdf64c73fe868bc8bf9bb8b35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 109,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantb4d09acf7a271e150eecb81bdc65a7b2e618ee659ba87ddbf4145bef687fa8d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:174ab61332f4391571f32cd4cfdfd9c5aeb8ff55c3fa3787f7a2330b352d5646",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variantb4d09acf7a271e150eecb81bdc65a7b2e618ee659ba87ddbf4145bef687fa8d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbd02dc0-eeb5-5800-2cf0-7cf315b8e4d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submatrix_single_equiv
    (f : l ≃ n) (g : m ≃ o) (i : n) (j : o) (r : α) :
    (single i j r).submatrix f g = single (f.symm i) (g.symm j) r := by
  ext i' j'
  dsimp
  obtain hi | rfl := ne_or_eq (f.symm i) i'
  · rw [single_apply_of_row_ne hi, single_apply_of_row_ne]
    exact f.symm_apply_eq.not.1 hi
  obtain hj | rfl := ne_or_eq (g.symm j) j'
  · rw [single_apply_of_col_ne _ _ hj, single_apply_of_col_ne]
    exact g.symm_apply_eq.not.1 hj
  simp

end Zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variantb4d09acf7a271e150eecb81bdc65a7b2e618ee659ba87ddbf4145bef687fa8d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variantb4d09acf7a271e150eecb81bdc65a7b2e618ee659ba87ddbf4145bef687fa8d5.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9223ab828cdd114bdf64c73fe868bc8bf9bb8b35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
