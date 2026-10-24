# listTransvecCol_mul_last_row_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48ba5b08e9e15dd90af727b6de1736331664849a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89750146-3228-f329-fdcd-9e1cfd9f10af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c44d9342-9c51-692c-0579-6341b15b900c",
  "kind": "theorem",
  "lexical_name": "listTransvecCol_mul_last_row_drop",
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
  "slug": "listtransveccol-mul-last-row-drop--42f502e98c7f669570f0c8a5",
  "source": {
    "blob": "48ba5b08e9e15dd90af727b6de1736331664849a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 356,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42f502e98c7f669570f0c8a5dcd41d2fc0a19a113f8425c7766ae1951f50ffa4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c44d9342-9c51-692c-0579-6341b15b900c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem listTransvecCol_mul_last_row_drop (i : Sum (Fin r) Unit) {k : ℕ} (hk : k ≤ r) :
    (((listTransvecCol M).drop k).prod * M) (inr unit) i = M (inr unit) i := by
  -- porting note: `apply` didn't work anymore, because of the implicit arguments
  refine' Nat.decreasingInduction' _ hk _
  · intro n hn _ IH
    have hn' : n < (listTransvecCol M).length := by simpa [listTransvecCol] using hn
    -- porting note: after changing from `nthLe` to `get`, we need to provide all arguments
    rw [← @List.cons_get_drop_succ _ _ ⟨n, hn'⟩]
    simpa [listTransvecCol, Matrix.mul_assoc]
  · simp only [listTransvecCol, List.length_ofFn, le_refl, List.drop_eq_nil_of_le, List.prod_nil,
      Matrix.one_mul]
#align matrix.pivot.list_transvec_col_mul_last_row_drop Matrix.Pivot.listTransvecCol_mul_last_row_drop

/-- Multiplying by all the matrices in `listTransvecCol M` does not change the last row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variant25be9184ef680ae37ce75e2fde082c82915a9c1019db2f778567e004fda80d63.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48ba5b08e9e15dd90af727b6de1736331664849a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
