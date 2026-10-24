# iterate_derivative_X_add_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14b804c2-e102-051d-517d-28315ff38191",
  "kind": "theorem",
  "lexical_name": "iterate_derivative_X_add_pow",
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
  "slug": "iterate-derivative-x-add-pow--2df84c510ec8a78a76068034",
  "source": {
    "blob": "d8da881b3ac25b0df10cfc4e153e7b05324c1636",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 535,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2df84c510ec8a78a760680348374e2dd4e738866b3b0415f7271487e1e0faa4b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14b804c2-e102-051d-517d-28315ff38191`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_derivative_X_add_pow (n k : ℕ) (c : R) :
    derivative^[k] ((X + C c) ^ n) =
     ((∏ i in Finset.range k, (n - i) : ℕ) : R[X]) * (X + C c) ^ (n - k) := by
  induction' k with k IH
  · simp
  · simp only [Function.iterate_succ_apply', IH, derivative_mul, zero_mul, derivative_nat_cast,
      zero_add, Finset.prod_range_succ, C_eq_nat_cast, Nat.sub_sub, ← mul_assoc,
      derivative_X_add_C_pow, Nat.succ_eq_add_one, Nat.cast_mul]
set_option linter.uppercaseLean3 false in
#align polynomial.iterate_derivative_X_add_pow Polynomial.iterate_derivative_X_add_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8da881b3ac25b0df10cfc4e153e7b05324c1636` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
