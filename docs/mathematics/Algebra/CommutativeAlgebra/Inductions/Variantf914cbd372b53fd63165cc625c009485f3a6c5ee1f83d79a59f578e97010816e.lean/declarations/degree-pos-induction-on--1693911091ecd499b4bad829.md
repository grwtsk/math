# degree_pos_induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73e8332a-af34-b05b-8ff6-e602d6ce6de4",
  "kind": "theorem",
  "lexical_name": "degree_pos_induction_on",
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
  "slug": "degree-pos-induction-on--1693911091ecd499b4bad829",
  "source": {
    "blob": "2c0abab282378c9516f4cf690d2719477ecc599c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 137,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1693911091ecd499b4bad8293bc244dd3c8c3bff0bf5a4cfcc2408e1bb9f36eb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73e8332a-af34-b05b-8ff6-e602d6ce6de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_pos_induction_on {P : R[X] → Prop} (p : R[X]) (h0 : 0 < degree p)
    (hC : ∀ {a}, a ≠ 0 → P (C a * X)) (hX : ∀ {p}, 0 < degree p → P p → P (p * X))
    (hadd : ∀ {p} {a}, 0 < degree p → P p → P (p + C a)) : P p :=
  recOnHorner p (fun h => by rw [degree_zero] at h; exact absurd h (by decide))
    (fun p a _ _ ih h0 =>
      have : 0 < degree p :=
        lt_of_not_ge fun h =>
          not_lt_of_ge degree_C_le <| by rwa [eq_C_of_degree_le_zero h, ← C_add] at h0
      hadd this (ih this))
    (fun p _ ih h0' =>
      if h0 : 0 < degree p then hX h0 (ih h0)
      else by
        rw [eq_C_of_degree_le_zero (le_of_not_gt h0)] at h0' ⊢
        exact hC fun h : coeff p 0 = 0 => by simp [h, Nat.not_lt_zero] at h0')
    h0
#align polynomial.degree_pos_induction_on Polynomial.degree_pos_induction_on

/-- A property holds for all polynomials of non-zero `natDegree` with coefficients in a
semiring `R` if it holds for
* `p + a`, with `a ∈ R`, `p ∈ R[X]`,
* `p + q`, with `p, q ∈ R[X]`,
* monomials with nonzero coefficient and non-zero exponent,
with appropriate restrictions on each term.
Note that multiplication is "hidden" in the assumption on monomials, so there is no explicit
multiplication in the statement.
See `degree_pos_induction_on` for a similar statement involving more explicit multiplications.
 -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c0abab282378c9516f4cf690d2719477ecc599c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
