# charpoly_monic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "961372eefc8a033c2e26d1b9c59f1a67e7191508",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41395889-df84-e1ac-a258-d85670083daa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8287739-fba0-ab73-6b09-2cf698904040",
  "kind": "theorem",
  "lexical_name": "charpoly_monic",
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
  "slug": "charpoly-monic--c96578c280f1bbb9c850d88e",
  "source": {
    "blob": "961372eefc8a033c2e26d1b9c59f1a67e7191508",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 132,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c96578c280f1bbb9c850d88e117051bd1401a9733d6488ca7aa6f4644809a4cd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8287739-fba0-ab73-6b09-2cf698904040`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem charpoly_monic (M : Matrix n n R) : M.charpoly.Monic := by
  nontriviality R -- porting note: was simply `nontriviality`
  by_cases h : Fintype.card n = 0
  · rw [charpoly, det_of_card_zero h]
    apply monic_one
  have mon : (∏ i : n, (X - C (M i i))).Monic := by
    apply monic_prod_of_monic univ fun i : n => X - C (M i i)
    simp [monic_X_sub_C]
  rw [← sub_add_cancel (∏ i : n, (X - C (M i i))) M.charpoly] at mon
  rw [Monic] at *
  rwa [leadingCoeff_add_of_degree_lt] at mon
  rw [charpoly_degree_eq_dim]
  rw [← neg_sub]
  rw [degree_neg]
  apply lt_trans (charpoly_sub_diagonal_degree_lt M)
  rw [Nat.cast_withBot, Nat.cast_withBot] -- porting note: added
  rw [WithBot.coe_lt_coe]
  rw [← Nat.pred_eq_sub_one]
  apply Nat.pred_lt
  apply h
#align matrix.charpoly_monic Matrix.charpoly_monic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variantc8cdd3cfe5ebb6a101f55179ab90693dd302dc3f52297970d0170602a12ff12e.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `961372eefc8a033c2e26d1b9c59f1a67e7191508` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
