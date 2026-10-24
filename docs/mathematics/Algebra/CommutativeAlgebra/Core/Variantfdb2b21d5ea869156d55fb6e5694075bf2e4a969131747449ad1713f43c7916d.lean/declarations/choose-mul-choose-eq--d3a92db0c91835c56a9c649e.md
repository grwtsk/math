# choose_mul_choose_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 270,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a3e5127-567d-7951-cf28-c279b7394cca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f2da3f6-3069-a65b-16d8-d883e85509cb",
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
  "slug": "choose-mul-choose-eq--d3a92db0c91835c56a9c649e",
  "source": {
    "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 270,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3a92db0c91835c56a9c649e0016e41a2c82261ae2bab401d44d9b1a536201d6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f2da3f6-3069-a65b-16d8-d883e85509cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–311.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f24d0e3165301f536c019c4032127a6854d8a77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
