# iterate_derivative_at_0_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a61a039-2dcb-493b-7917-007b8ba8e7fd",
  "kind": "theorem",
  "lexical_name": "iterate_derivative_at_0_ne_zero",
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
  "slug": "iterate-derivative-at-0-ne-zero--38150941c6e63473fe3803c7",
  "source": {
    "blob": "5d7d4b877c0a378359735d69f42997f43d5b60e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 189,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38150941c6e63473fe3803c76962bf2642a31ed17ef81d5aa41f876697a2a519",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a61a039-2dcb-493b-7917-007b8ba8e7fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_derivative_at_0_ne_zero [CharZero R] (n ν : ℕ) (h : ν ≤ n) :
    (Polynomial.derivative^[ν] (bernsteinPolynomial R n ν)).eval 0 ≠ 0 := by
  simp only [Int.natCast_eq_zero, bernsteinPolynomial.iterate_derivative_at_0, Ne, Nat.cast_eq_zero]
  simp only [← ascPochhammer_eval_cast]
  norm_cast
  apply ne_of_gt
  obtain rfl | h' := Nat.eq_zero_or_pos ν
  · simp
  · rw [← Nat.succ_pred_eq_of_pos h'] at h
    exact ascPochhammer_pos _ _ (tsub_pos_of_lt (Nat.lt_of_succ_le h))

/-!
Rather than redoing the work of evaluating the derivatives at 1,
we use the symmetry of the Bernstein polynomials.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d7d4b877c0a378359735d69f42997f43d5b60e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
