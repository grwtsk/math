# mul_listTransvecRow_last_col_take

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a85aea85-d167-a438-0811-ece8fd2e18c2",
  "kind": "theorem",
  "lexical_name": "mul_listTransvecRow_last_col_take",
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
  "slug": "mul-listtransvecrow-last-col-take--b2821910ab16415ebe9b08fb",
  "source": {
    "blob": "851347c72252710a76c813eb44f1d73c3eb541bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 430,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2821910ab16415ebe9b08fba5676bf2f9fd784da1feec58125e8e2dda44de40",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a85aea85-d167-a438-0811-ece8fd2e18c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_listTransvecRow_last_col_take (i : Fin r ⊕ Unit) {k : ℕ} (hk : k ≤ r) :
    (M * ((listTransvecRow M).take k).prod) i (inr unit) = M i (inr unit) := by
  induction k with
  | zero => simp only [Matrix.mul_one, List.take_zero, List.prod_nil, List.take, Matrix.mul_one]
  | succ k IH =>
    have hkr : k < r := hk
    let k' : Fin r := ⟨k, hkr⟩
    have :
      (listTransvecRow M)[k]? =
        ↑(transvection (inr Unit.unit) (inl k')
            (-M (inr Unit.unit) (inl k') / M (inr Unit.unit) (inr Unit.unit))) := by
      simp only [k', listTransvecRow, List.ofFnNthVal, hkr, dif_pos, List.getElem?_ofFn]
    simp only [List.take_succ, ← Matrix.mul_assoc, this, List.prod_append, Matrix.mul_one,
      List.prod_cons, List.prod_nil, Option.toList_some]
    rw [mul_transvection_apply_of_ne, IH hkr.le]
    simp only [Ne, not_false_iff, reduceCtorEq]

/-- Multiplying by all the matrices in `listTransvecRow M` does not change the last column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `851347c72252710a76c813eb44f1d73c3eb541bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
