# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:550cb6669bd0b90b3f05e65f4ecfd002b92f26335a47854320b23a2c292ce98a",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--5ca6e12b3ae752fae78643d8",
  "source": {
    "blob": "099e27fe7102b8fe3a0be9f025805cbedb2affea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 156,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ca6e12b3ae752fae78643d86049900891e9003550fde86d6592343106955f9d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:550cb6669bd0b90b3f05e65f4ecfd002b92f26335a47854320b23a2c292ce98a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {α : Type _} [CommRing α] {a b c d e f g h i : α} :
    Matrix.det !![a, b, c; d, e, f; g, h, i] =
      a * e * i - a * f * h - b * d * i + b * f * g + c * d * h - c * e * g := by
  simp? [Matrix.det_succ_row_zero, Fin.sum_univ_succ] says
    simp only [det_succ_row_zero, Nat.odd_iff_not_even, of_apply, cons_val', empty_val',
      cons_val_fin_one, cons_val_zero, submatrix_apply, Fin.succ_zero_eq_one, cons_val_one,
      head_cons, submatrix_submatrix, det_unique, Fin.default_eq_zero, Function.comp_apply,
      Fin.succ_one_eq_two, ne_eq, cons_val_two, tail_cons, head_fin_const, Fin.sum_univ_succ,
      Fin.val_zero, pow_zero, one_mul, Fin.zero_succAbove, Finset.univ_unique, Fin.val_succ,
      Fin.coe_fin_one, zero_add, pow_one, neg_mul, Fin.succ_succAbove_zero, Finset.sum_neg_distrib,
      Finset.sum_singleton, cons_val_succ, Fin.succ_succAbove_one, even_add_self, Even.neg_pow,
      one_pow, Finset.sum_const, Finset.card_singleton, one_smul]
  ring

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant8b2223b87c84c70db8a12b960a9fcd312608d98d62d206becd934d8df28aaf03.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `099e27fe7102b8fe3a0be9f025805cbedb2affea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
