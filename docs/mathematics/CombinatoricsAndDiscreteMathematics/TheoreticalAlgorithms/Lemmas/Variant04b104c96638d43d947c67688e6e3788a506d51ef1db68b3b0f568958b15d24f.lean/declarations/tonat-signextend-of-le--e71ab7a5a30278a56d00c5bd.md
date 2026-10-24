# toNat_signExtend_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:556d4d40-ecab-5aa9-8fe5-cc5a62f9235a",
  "kind": "theorem",
  "lexical_name": "toNat_signExtend_of_le",
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
  "slug": "tonat-signextend-of-le--e71ab7a5a30278a56d00c5bd",
  "source": {
    "blob": "eb698204152cd6b0b53cbdb340ff29daa8847616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2660,
    "line": 2632,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e71ab7a5a30278a56d00c5bdd2b16edbde89dcff2b00a1c692f4d58ed9371316",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:556d4d40-ecab-5aa9-8fe5-cc5a62f9235a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2632–2660.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem toNat_signExtend_of_le (x : BitVec w) {v : Nat} (hv : w ≤ v) :
    (x.signExtend v).toNat = x.toNat + if x.msb then 2^v - 2^w else 0 := by
  apply Nat.eq_of_testBit_eq
  intro i
  have ⟨k, hk⟩ := Nat.exists_eq_add_of_le hv
  rw [hk, testBit_toNat, getLsbD_signExtend, Nat.pow_add, ← Nat.mul_sub_one, Nat.add_comm (x.toNat)]
  by_cases hx : x.msb
  · simp only [hx, Bool.if_true_right, ↓reduceIte,
      Nat.testBit_two_pow_mul_add _ x.isLt,
      testBit_toNat, Nat.testBit_two_pow_sub_one]
    -- Case analysis on i being in the intervals [0..w), [w..w + k), [w+k..∞)
    have hi : i < w ∨ (w ≤ i ∧ i < w + k) ∨ w + k ≤ i := by omega
    rcases hi with hi | hi | hi
    · simp [hi]; omega
    · simp [hi]; omega
    · simp [show ¬ (i < w + k) by omega, show ¬ (i < w) by omega]
      omega
  · simp only [hx, Bool.if_false_right,
      Bool.false_eq_true, ↓reduceIte, Nat.zero_add, testBit_toNat]
    have hi : i < w ∨ (w ≤ i ∧ i < w + k) ∨ w + k ≤ i := by omega
    rcases hi with hi | hi | hi
    · simp [hi]; omega
    · simp [hi]
    · simp [show ¬ (i < w + k) by omega, show ¬ (i < w) by omega, getLsbD_of_ge x i (by omega)]

/-- Sign extending to a larger bitwidth depends on the msb.
If the msb is false, then the result equals the original value.
If the msb is true, then we add a value of `(2^v - 2^w)`, which arises from the sign extension. -/
@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean#L2632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb698204152cd6b0b53cbdb340ff29daa8847616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
