# bind₁_onePoly_wittPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41a545c1-cf1a-58b0-e56f-afa63638010d",
  "kind": "theorem",
  "lexical_name": "bind₁_onePoly_wittPolynomial",
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
  "slug": "bind-onepoly-wittpolynomial--fc4f4c797f14cc73e6074fc8",
  "source": {
    "blob": "861666bb075611901c98f5895c33d0dd1b5f2138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 328,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc4f4c797f14cc73e6074fc8291ac9dd8db29c8b6eabcf3e58b137327f322aad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41a545c1-cf1a-58b0-e56f-afa63638010d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bind₁_onePoly_wittPolynomial [hp : Fact p.Prime] (n : ℕ) :
    bind₁ onePoly (wittPolynomial p ℤ n) = 1 := by
  ext  -- porting note: `ext` was not in the mathport output.
  rw [wittPolynomial_eq_sum_C_mul_X_pow, AlgHom.map_sum, Finset.sum_eq_single 0]
  · simp only [onePoly, one_pow, one_mul, AlgHom.map_pow, C_1, pow_zero, bind₁_X_right, if_true,
      eq_self_iff_true]
  · intro i _hi hi0
    simp only [onePoly, if_neg hi0, zero_pow (pow_pos hp.1.pos _), mul_zero,
      AlgHom.map_pow, bind₁_X_right, AlgHom.map_mul]
  · rw [Finset.mem_range]
    -- porting note: was `decide`
    simp only [add_pos_iff, or_true, not_true, pow_zero, map_one, ge_iff_le, nonpos_iff_eq_zero,
      tsub_zero, one_mul, gt_iff_lt, IsEmpty.forall_iff]
#align witt_vector.bind₁_one_poly_witt_polynomial WittVector.bind₁_onePoly_wittPolynomial

/-- The function that is constantly one on Witt vectors is a polynomial function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `861666bb075611901c98f5895c33d0dd1b5f2138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
