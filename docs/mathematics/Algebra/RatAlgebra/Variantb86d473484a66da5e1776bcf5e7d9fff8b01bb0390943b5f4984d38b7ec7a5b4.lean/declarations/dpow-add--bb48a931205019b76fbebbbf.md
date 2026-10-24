# dpow_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:671110dc-95e0-f9d7-9538-e7d2398aeb29",
  "kind": "theorem",
  "lexical_name": "dpow_add",
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
  "slug": "dpow-add--bb48a931205019b76fbebbbf",
  "source": {
    "blob": "409045ebec3ae6165718bd42ba09fb00f5274cf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 103,
    "path": "GRWTSK/Algebra/RatAlgebra/Variantb86d473484a66da5e1776bcf5e7d9fff8b01bb0390943b5f4984d38b7ec7a5b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb48a931205019b76fbebbbf57e6f3173af08caf25de4a7dc170444666213431",
  "verification": {
    "reference": "docs/verification/Algebra/RatAlgebra/Variantb86d473484a66da5e1776bcf5e7d9fff8b01bb0390943b5f4984d38b7ec7a5b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:671110dc-95e0-f9d7-9538-e7d2398aeb29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dpow_add {n : ℕ} (hn_fac : IsUnit ((n - 1)! : A)) (hnI : I ^ n = 0) {m : ℕ} {x : A}
    (hx : x ∈ I) {y : A} (hy : y ∈ I) :
    dpow I m (x + y) = (Finset.antidiagonal m).sum fun k ↦ dpow I k.1 x * dpow I k.2 y := by
  by_cases! hmn : m < n
  · exact dpow_add_of_lt hn_fac hmn hx hy
  · have h_sub : I ^ m ≤ I ^ n := Ideal.pow_le_pow_right hmn
    rw [dpow_eq_of_mem (Ideal.add_mem I hx hy)]
    simp only [dpow]
    have hxy : (x + y) ^ m = 0 := by
      rw [← Ideal.mem_bot, ← Ideal.zero_eq_bot, ← hnI]
      exact Set.mem_of_subset_of_mem h_sub (Ideal.pow_mem_pow (Ideal.add_mem I hx hy) m)
    rw [hxy, mul_zero, eq_comm]
    apply Finset.sum_eq_zero
    intro k hk
    rw [ite_eq_left hx, ite_eq_left hy, mul_assoc, mul_comm (x ^ k.1), mul_assoc, ← mul_assoc]
    apply mul_eq_zero_of_right
    rw [← Ideal.mem_bot, ← Ideal.zero_eq_bot, ← hnI]
    apply Set.mem_of_subset_of_mem h_sub
    rw [← Finset.mem_antidiagonal.mp hk, add_comm, pow_add]
    exact Ideal.mul_mem_mul (Ideal.pow_mem_pow hy _) (Ideal.pow_mem_pow hx _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RatAlgebra/Variantb86d473484a66da5e1776bcf5e7d9fff8b01bb0390943b5f4984d38b7ec7a5b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RatAlgebra/Variantb86d473484a66da5e1776bcf5e7d9fff8b01bb0390943b5f4984d38b7ec7a5b4.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `409045ebec3ae6165718bd42ba09fb00f5274cf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
