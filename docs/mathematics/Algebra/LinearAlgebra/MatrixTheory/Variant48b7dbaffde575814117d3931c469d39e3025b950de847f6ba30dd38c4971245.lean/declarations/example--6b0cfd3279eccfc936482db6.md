# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67b13c8c023606af8b4366587f3c4a5a1f9595539e9bad6aff2abb99f8812cd2",
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
  "slug": "example--6b0cfd3279eccfc936482db6",
  "source": {
    "blob": "f4b3f5544cd2a5dc8c4d1edecf409ad21da38bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 138,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b0cfd3279eccfc936482db6cbc7c566f602e60b3d417b13aca8520afdecece4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67b13c8c023606af8b4366587f3c4a5a1f9595539e9bad6aff2abb99f8812cd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {α : Type _} [CommRing α] {a b c d : α} :
    Matrix.det !![a, b; c, d] = a * d - b * c := by
  simp? [Matrix.det_succ_row_zero, Fin.sum_univ_succ] says
    simp only [det_succ_row_zero, Nat.succ_eq_add_one, Nat.reduceAdd, Fin.isValue, of_apply,
      cons_val', cons_val_fin_one, cons_val_zero, det_unique, Fin.default_eq_zero, submatrix_apply,
      Fin.succ_zero_eq_one, cons_val_one, Fin.sum_univ_succ, Fin.val_zero, pow_zero, one_mul,
      Fin.zero_succAbove, Finset.univ_unique, Fin.val_succ, Fin.val_eq_zero, zero_add, pow_one,
      cons_val_succ, neg_mul, ne_eq, Fin.succ_ne_zero, not_false_eq_true,
      Fin.succAbove_ne_zero_zero, Finset.sum_neg_distrib, Finset.sum_const, Finset.card_singleton,
      one_smul]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4b3f5544cd2a5dc8c4d1edecf409ad21da38bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
