# partialSum_eq_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac5a168d-cc85-e2b2-c332-c42c5f477365",
  "kind": "theorem",
  "lexical_name": "partialSum_eq_rat",
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
  "slug": "partialsum-eq-rat--485b363d152edae9cb014864",
  "source": {
    "blob": "7b0e5b698a59e2998385bb2a74a24b2d34b2070c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 182,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:485b363d152edae9cb014864b926e4a06baa8e19838e2e11f5eb92c10e701d9e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac5a168d-cc85-e2b2-c332-c42c5f477365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialSum_eq_rat {m : ℕ} (hm : 0 < m) (k : ℕ) :
    ∃ p : ℕ, partialSum m k = p / (m ^ k ! : ℝ) := by
  induction' k with k h
  · exact ⟨1, by rw [partialSum, range_one, sum_singleton, Nat.cast_one, Nat.factorial,
      pow_one, pow_one]⟩
  · rcases h with ⟨p_k, h_k⟩
    use p_k * m ^ ((k + 1)! - k !) + 1
    rw [partialSum_succ, h_k, div_add_div, div_eq_div_iff, add_mul]
    · norm_cast
      rw [add_mul, one_mul, Nat.factorial_succ, add_mul, one_mul, add_tsub_cancel_right, pow_add]
      simp [mul_assoc]
    all_goals positivity
#align liouville_number.partial_sum_eq_rat LiouvilleNumber.partialSum_eq_rat

end LiouvilleNumber

open LiouvilleNumber

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b0e5b698a59e2998385bb2a74a24b2d34b2070c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
