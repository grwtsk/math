# updateRow_eq_transvection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:542c66be-9323-e010-edc2-50bcd2ed4c90",
  "kind": "theorem",
  "lexical_name": "updateRow_eq_transvection",
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
  "slug": "updaterow-eq-transvection--7dde03ed8a83bb33ee6325ed",
  "source": {
    "blob": "988de09fad2e152432ddd4bf1e6f388f5e904ce2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dde03ed8a83bb33ee6325ed3ff5b35bc406d847658c8dcae9b8e567056db59d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:542c66be-9323-e010-edc2-50bcd2ed4c90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem updateRow_eq_transvection [Finite n] (c : R) :
    updateRow (1 : Matrix n n R) i ((1 : Matrix n n R) i + c • (1 : Matrix n n R) j) =
      transvection i j c := by
  cases nonempty_fintype n
  ext a b
  by_cases ha : i = a; by_cases hb : j = b
  · simp only [updateRow_self, transvection, ha, hb, Pi.add_apply, StdBasisMatrix.apply_same,
      one_apply_eq, Pi.smul_apply, mul_one, Algebra.id.smul_eq_mul, add_apply]
  · simp only [updateRow_self, transvection, ha, hb, StdBasisMatrix.apply_of_ne, Pi.add_apply,
      Ne.def, not_false_iff, Pi.smul_apply, and_false_iff, one_apply_ne, Algebra.id.smul_eq_mul,
      mul_zero, add_apply]
  · simp only [updateRow_ne, transvection, ha, Ne.symm ha, StdBasisMatrix.apply_of_ne, add_zero,
      Algebra.id.smul_eq_mul, Ne.def, not_false_iff, DMatrix.add_apply, Pi.smul_apply,
      mul_zero, false_and_iff, add_apply]
#align matrix.update_row_eq_transvection Matrix.updateRow_eq_transvection

variable [Fintype n]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `988de09fad2e152432ddd4bf1e6f388f5e904ce2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
