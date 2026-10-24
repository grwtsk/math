# accumulate_invAccumulate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7e448f4-7967-c436-b544-178ba26d7948",
  "kind": "lemma",
  "lexical_name": "accumulate_invAccumulate",
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
  "slug": "accumulate-invaccumulate--16854d1458055b13594391e6",
  "source": {
    "blob": "b63979578d1a8b3a3b4647a95cb3746e0b10afe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 108,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16854d1458055b13594391e6dc029fb3e1f305a10505855fda570c03c2802020",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7e448f4-7967-c436-b544-178ba26d7948`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma accumulate_invAccumulate {n m} (hmn : m ≤ n) {s : Fin m → ℕ} (hs : Antitone s) :
    accumulate n m (invAccumulate n m s) = s := funext <| fun ⟨i, hi⟩ ↦ by
  have := Nat.le_sub_one_of_lt hi
  revert hi
  refine Nat.decreasingInduction' (fun i hi _ ih him ↦ ?_) this fun hm ↦ ?_
  · rw [← Nat.pred_eq_sub_one, Nat.lt_pred_iff, Nat.succ_eq_add_one] at hi
    rw [accumulate_rec (him.trans_le hmn) hi, ih hi, invAccumulate, dif_pos him, dif_pos hi]
    simp only
    exact Nat.sub_add_cancel (hs i.le_succ)
  · have := (Nat.sub_one_add_one <| Nat.ne_zero_of_lt hm).symm
    rw [accumulate_last (hm.trans_le hmn) this, invAccumulate, dif_pos hm, dif_neg this.not_gt,
      Nat.sub_zero]
    intro j hj
    rw [invAccumulate, dif_neg hj.not_lt, Nat.zero_sub]

end accumulate

end Fin

namespace MvPolynomial

open Fin

section CommSemiring

variable [CommSemiring R] [Fintype σ] [Fintype τ]

variable (σ R n) in
/-- The `R`-algebra homomorphism from $R[x_1,\dots,x_n]$ to the symmetric subalgebra of
  $R[\{x_i \mid i ∈ σ\}]$ sending $x_i$ to the $i$-th elementary symmetric polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b63979578d1a8b3a3b4647a95cb3746e0b10afe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
