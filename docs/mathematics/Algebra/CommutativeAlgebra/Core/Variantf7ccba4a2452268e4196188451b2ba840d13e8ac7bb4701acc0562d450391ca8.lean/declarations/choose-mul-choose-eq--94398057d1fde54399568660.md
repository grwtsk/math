# choose_mul_choose_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:813a8729-2f16-5ab2-a771-3c3bd9766a28",
  "kind": "theorem",
  "lexical_name": "choose_mul_choose_eq",
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
  "slug": "choose-mul-choose-eq--94398057d1fde54399568660",
  "source": {
    "blob": "6a776bf727e8916d67b87be3734405fd02bcef17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 278,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94398057d1fde543995686605eaec287512396dfe2a92c8c6736849b44f33116",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:813a8729-2f16-5ab2-a771-3c3bd9766a28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem choose_mul_choose_eq {n k j : ℕ} (hj : j ≤ k) (hk : k ≤ n) :
    Nat.choose k j * Nat.choose n k = Nat.choose n j * Nat.choose (n - j) (k - j) := by
  have hjn : j ≤ n := le_trans hj hk
  have hkj : k - j ≤ n - j := Nat.sub_le_sub_right hk j
  have hnk : n - j - (k - j) = n - k := by omega
  have lhs1 := Nat.choose_mul_factorial_mul_factorial hj
  have lhs2 := Nat.choose_mul_factorial_mul_factorial hk
  have rhs1 := Nat.choose_mul_factorial_mul_factorial hjn
  have rhs2 := Nat.choose_mul_factorial_mul_factorial hkj
  rw [hnk] at rhs2
  -- Both sides * (j! * (k-j)! * k! * (n-k)!) = k! * n!
  have hfact_pos : 0 < Nat.factorial j * Nat.factorial (k - j) *
      Nat.factorial k * Nat.factorial (n - k) := by positivity
  apply Nat.eq_of_mul_eq_mul_right hfact_pos
  -- LHS * factor = (choose k j * j! * (k-j)!) * (choose n k * k! * (n-k)!) = k! * n!
  have hlhs : Nat.choose k j * Nat.choose n k *
      (Nat.factorial j * Nat.factorial (k - j) * Nat.factorial k * Nat.factorial (n - k)) =
      Nat.factorial k * Nat.factorial n := by
    calc Nat.choose k j * Nat.choose n k *
        (Nat.factorial j * Nat.factorial (k - j) * Nat.factorial k * Nat.factorial (n - k))
        = (Nat.choose k j * Nat.factorial j * Nat.factorial (k - j)) *
          (Nat.choose n k * Nat.factorial k * Nat.factorial (n - k)) := by ring
      _ = Nat.factorial k * Nat.factorial n := by rw [lhs1, lhs2]
  -- RHS * factor = (choose (n-j) (k-j) * (k-j)! * (n-k)!) * (choose n j * j!) * k!
  --             = (n-j)! * (choose n j * j!) * k! = n! * k!
  have hrhs : Nat.choose n j * Nat.choose (n - j) (k - j) *
      (Nat.factorial j * Nat.factorial (k - j) * Nat.factorial k * Nat.factorial (n - k)) =
      Nat.factorial k * Nat.factorial n := by
    calc Nat.choose n j * Nat.choose (n - j) (k - j) *
        (Nat.factorial j * Nat.factorial (k - j) * Nat.factorial k * Nat.factorial (n - k))
        = (Nat.choose (n - j) (k - j) * Nat.factorial (k - j) * Nat.factorial (n - k)) *
          (Nat.choose n j * Nat.factorial j) * Nat.factorial k := by ring
      _ = Nat.factorial (n - j) * (Nat.choose n j * Nat.factorial j) * Nat.factorial k := by
          rw [rhs2]
      _ = (Nat.choose n j * Nat.factorial j * Nat.factorial (n - j)) * Nat.factorial k := by ring
      _ = Nat.factorial n * Nat.factorial k := by rw [rhs1]
      _ = Nat.factorial k * Nat.factorial n := by ring
  linarith

/-! ### Partition of unity for Bernstein basis -/

/-- Bernstein basis functions sum to 1 (follows from binomial theorem). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a776bf727e8916d67b87be3734405fd02bcef17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
