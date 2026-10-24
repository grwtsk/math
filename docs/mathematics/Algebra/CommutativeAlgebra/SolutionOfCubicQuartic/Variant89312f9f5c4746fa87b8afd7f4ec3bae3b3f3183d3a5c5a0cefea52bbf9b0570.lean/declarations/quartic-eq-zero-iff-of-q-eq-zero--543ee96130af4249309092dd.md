# quartic_eq_zero_iff_of_q_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ba5dde8-52dc-a88b-0281-b68540fcd916",
  "kind": "theorem",
  "lexical_name": "quartic_eq_zero_iff_of_q_eq_zero",
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
  "slug": "quartic-eq-zero-iff-of-q-eq-zero--543ee96130af4249309092dd",
  "source": {
    "blob": "985f4bb0ecd82de13fed676e35e2dea9a0547ac3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 231,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant89312f9f5c4746fa87b8afd7f4ec3bae3b3f3183d3a5c5a0cefea52bbf9b0570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:543ee96130af4249309092dd3c4ca0f6246292b95ed49ebf2bbf2e59db05a35d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant89312f9f5c4746fa87b8afd7f4ec3bae3b3f3183d3a5c5a0cefea52bbf9b0570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ba5dde8-52dc-a88b-0281-b68540fcd916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quartic_eq_zero_iff_of_q_eq_zero (ha : a ≠ 0)
    (hp : p = (8 * a * c - 3 * b ^ 2) / (8 * a ^ 2))
    (hqz : b ^ 3 - 4 * a * b * c + 8 * a ^ 2 * d = 0)
    (hr : r =
      (16 * a * b ^ 2 * c + 256 * a ^ 3 * e - 3 * b ^ 4 - 64 * a ^ 2 * b * d) / (256 * a ^ 4))
    (ht : t ^ 2 = p ^ 2 - 4 * r)
    (hv : v ^ 2 = (-p + t) / 2)
    (hw : w ^ 2 = (-p - t) / 2) (x : K) :
    a * x ^ 4 + b * x ^ 3 + c * x ^ 2 + d * x + e = 0 ↔
      x = v - b / (4 * a) ∨ x = -v - b / (4 * a) ∨ x = w - b / (4 * a) ∨ x = -w - b / (4 * a) := by
  let y := x + b / (4 * a)
  have h4 : (4 : K) = 2 ^ 2 := by norm_num
  have h8 : (8 : K) = 2 ^ 3 := by norm_num
  have h16 : (16 : K) = 2 ^ 4 := by norm_num
  have h256 : (256 : K) = 2 ^ 8 := by norm_num
  have h₁ : a * x ^ 4 + b * x ^ 3 + c * x ^ 2 + d * x + e = a * (y ^ 4 + p * y ^ 2 + r) := by
    simp only [hp, hr, y, h4, h8, h16, h256]
    linear_combination (norm := field) (4 * a * x + b) * hqz / a ^ 3 / 2 ^ 5
  rw [h₁, ha.isUnit.mul_right_eq_zero]
  calc
    _ ↔ 1 * (y ^ 2 * y ^ 2) + p * y ^ 2 + r = 0 := by
      apply Eq.congr_left
      ring
    _ ↔ y ^ 2 = (-p + t) / 2 ∨ y ^ 2 = (-p - t) / 2 := by
      have ht' : discrim 1 p r = t * t := by rw [discrim]; linear_combination -ht
      rw [quadratic_eq_zero_iff one_ne_zero ht', mul_one]
    _ ↔ _ := by
      simp_rw [y, ← hv, ← hw, pow_two, mul_self_eq_mul_self_iff, eq_sub_iff_add_eq, or_assoc]

end Quartic

end Field

end Theorems100
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant89312f9f5c4746fa87b8afd7f4ec3bae3b3f3183d3a5c5a0cefea52bbf9b0570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant89312f9f5c4746fa87b8afd7f4ec3bae3b3f3183d3a5c5a0cefea52bbf9b0570.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `985f4bb0ecd82de13fed676e35e2dea9a0547ac3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
