# det_eq_of_forall_row_eq_smul_add_pred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66f8b885e8ce08fecc06336d6a26d5eff6c15aa6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 593,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/870291a8544ad9297e0c17f3531bea11607a1f0d83b775b13a31981777c30f2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:526f7224-8bb0-07ec-8740-59dc784babe0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d14cf550-fd4c-4eb8-90fe-3fbc8fc0a8b2",
  "kind": "theorem",
  "lexical_name": "det_eq_of_forall_row_eq_smul_add_pred",
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
  "slug": "det-eq-of-forall-row-eq-smul-add-pred--50918c31259153897fef2728",
  "source": {
    "blob": "66f8b885e8ce08fecc06336d6a26d5eff6c15aa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 600,
    "line": 593,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant870291a8544ad9297e0c17f3531bea11607a1f0d83b775b13a31981777c30f2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50918c31259153897fef272878ce2a00590eb0332b86e8ae5dfa706d404df5eb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant870291a8544ad9297e0c17f3531bea11607a1f0d83b775b13a31981777c30f2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d14cf550-fd4c-4eb8-90fe-3fbc8fc0a8b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 593–600.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_eq_of_forall_row_eq_smul_add_pred {n : ℕ} {A B : Matrix (Fin (n + 1)) (Fin (n + 1)) R}
    (c : Fin n → R) (A_zero : ∀ j, A 0 j = B 0 j)
    (A_succ : ∀ (i : Fin n) (j), A i.succ j = B i.succ j + c i * A (Fin.castSucc i) j) :
    det A = det B :=
  det_eq_of_forall_row_eq_smul_add_pred_aux (Fin.last _) c
    (fun _ hi => absurd hi (not_lt_of_ge (Fin.le_last _))) A_zero A_succ

/-- If you add multiples of previous columns to the next columns, the determinant doesn't change. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant870291a8544ad9297e0c17f3531bea11607a1f0d83b775b13a31981777c30f2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant870291a8544ad9297e0c17f3531bea11607a1f0d83b775b13a31981777c30f2e.lean#L593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66f8b885e8ce08fecc06336d6a26d5eff6c15aa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
