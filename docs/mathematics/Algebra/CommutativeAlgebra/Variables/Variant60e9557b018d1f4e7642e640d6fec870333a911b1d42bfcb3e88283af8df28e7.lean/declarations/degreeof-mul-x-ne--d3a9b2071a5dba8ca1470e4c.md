# degreeOf_mul_X_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70718926-94ee-57b9-92af-a247b37b2b0f",
  "kind": "theorem",
  "lexical_name": "degreeOf_mul_X_ne",
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
  "slug": "degreeof-mul-x-ne--d3a9b2071a5dba8ca1470e4c",
  "source": {
    "blob": "7c26cfa37c4e1d1880409f69f24595fd6610ae06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 560,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Variables/Variant60e9557b018d1f4e7642e640d6fec870333a911b1d42bfcb3e88283af8df28e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3a9b2071a5dba8ca1470e4c232e61b39950e9cafbfa87e08e183273840dd168",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Variables/Variant60e9557b018d1f4e7642e640d6fec870333a911b1d42bfcb3e88283af8df28e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70718926-94ee-57b9-92af-a247b37b2b0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degreeOf_mul_X_ne {i j : σ} (f : MvPolynomial σ R) (h : i ≠ j) :
    degreeOf i (f * X j) = degreeOf i f := by
  classical
  repeat' rw [degreeOf_eq_sup (R := R) i]
  rw [support_mul_X]
  simp only [Finset.sup_map]
  congr
  ext
  simp only [Finsupp.single, Nat.one_ne_zero, add_right_eq_self, addRightEmbedding_apply, coe_mk,
    Pi.add_apply, comp_apply, ite_eq_right_iff, Finsupp.coe_add, Pi.single_eq_of_ne h]
set_option linter.uppercaseLean3 false in
#align mv_polynomial.degree_of_mul_X_ne MvPolynomial.degreeOf_mul_X_ne

-- TODO in the following we have equality iff f ≠ 0
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Variables/Variant60e9557b018d1f4e7642e640d6fec870333a911b1d42bfcb3e88283af8df28e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Variables/Variant60e9557b018d1f4e7642e640d6fec870333a911b1d42bfcb3e88283af8df28e7.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c26cfa37c4e1d1880409f69f24595fd6610ae06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
