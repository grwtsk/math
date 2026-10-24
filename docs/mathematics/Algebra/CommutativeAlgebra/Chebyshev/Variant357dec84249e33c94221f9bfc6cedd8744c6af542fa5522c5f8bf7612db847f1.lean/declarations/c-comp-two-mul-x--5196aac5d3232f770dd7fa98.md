# C_comp_two_mul_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d301db9-3335-26d8-59a7-4ad96ab09427",
  "kind": "theorem",
  "lexical_name": "C_comp_two_mul_X",
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
  "slug": "c-comp-two-mul-x--5196aac5d3232f770dd7fa98",
  "source": {
    "blob": "8a0acd79b116bc87d4c406b179366b4c4413ac11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 586,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variant357dec84249e33c94221f9bfc6cedd8744c6af542fa5522c5f8bf7612db847f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5196aac5d3232f770dd7fa982d7a324141b9bf6d16ce66a5d0231772d8d46fec",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Chebyshev/Variant357dec84249e33c94221f9bfc6cedd8744c6af542fa5522c5f8bf7612db847f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d301db9-3335-26d8-59a7-4ad96ab09427`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem C_comp_two_mul_X (n : ℤ) : (C R n).comp (2 * X) = 2 * T R n := by
  induction n using Polynomial.Chebyshev.induct with
  | zero => simp
  | one => simp
  | add_two n ih1 ih2 =>
    simp_rw [C_add_two, T_add_two, sub_comp, mul_comp, X_comp, ih1, ih2]
    ring
  | neg_add_one n ih1 ih2 =>
    simp_rw [C_sub_one, T_sub_one, sub_comp, mul_comp, X_comp, ih1, ih2]
    ring

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Chebyshev/Variant357dec84249e33c94221f9bfc6cedd8744c6af542fa5522c5f8bf7612db847f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variant357dec84249e33c94221f9bfc6cedd8744c6af542fa5522c5f8bf7612db847f1.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a0acd79b116bc87d4c406b179366b4c4413ac11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
