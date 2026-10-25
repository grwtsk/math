# castNum_eq_bitwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78cddb3e3ef233925fd162db5f3dc275ad6965e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 759,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b44f3d46-5f64-cf7f-2fca-70dbfca1bf82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09a965a4-a75b-039c-da45-7da3c85a2a8d",
  "kind": "theorem",
  "lexical_name": "castNum_eq_bitwise",
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
  "slug": "castnum-eq-bitwise--e78708684a080faaf5ca8dad",
  "source": {
    "blob": "78cddb3e3ef233925fd162db5f3dc275ad6965e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 796,
    "line": 759,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e78708684a080faaf5ca8dad5f639f150493e0aa776ec5147823f1066f839521",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variant336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09a965a4-a75b-039c-da45-7da3c85a2a8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 759–796.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem castNum_eq_bitwise {f : Num → Num → Num} {g : Bool → Bool → Bool}
    (p : PosNum → PosNum → Num)
    (gff : g false false = false) (f00 : f 0 0 = 0)
    (f0n : ∀ n, f 0 (pos n) = cond (g false true) (pos n) 0)
    (fn0 : ∀ n, f (pos n) 0 = cond (g true false) (pos n) 0)
    (fnn : ∀ m n, f (pos m) (pos n) = p m n) (p11 : p 1 1 = cond (g true true) 1 0)
    (p1b : ∀ b n, p 1 (PosNum.bit b n) = bit (g true b) (cond (g false true) (pos n) 0))
    (pb1 : ∀ a m, p (PosNum.bit a m) 1 = bit (g a true) (cond (g true false) (pos m) 0))
    (pbb : ∀ a b m n, p (PosNum.bit a m) (PosNum.bit b n) = bit (g a b) (p m n)) :
    ∀ m n : Num, (f m n : ℕ) = Nat.bitwise g m n := by
  intros m n
  obtain - | m := m <;> obtain - | n := n <;>
      try simp only [show zero = 0 from rfl, show ((0 : Num) : ℕ) = 0 from rfl]
  · rw [f00, Nat.bitwise_zero]; rfl
  · rw [f0n, Nat.bitwise_zero_left]
    cases g false true <;> rfl
  · rw [fn0, Nat.bitwise_zero_right]
    cases g true false <;> rfl
  · rw [fnn]
    have this b (n : PosNum) : (cond b (↑n) 0 : ℕ) = ↑(cond b (pos n) 0 : Num) := by
      cases b <;> rfl
    have this' b (n : PosNum) : ↑ (pos (PosNum.bit b n)) = Nat.bit b ↑n := by
      cases b <;> simp
    induction' m with m IH m IH generalizing n <;> obtain - | n | n := n
    any_goals simp only [show one = 1 from rfl, show pos 1 = 1 from rfl,
      show PosNum.bit0 = PosNum.bit false from rfl, show PosNum.bit1 = PosNum.bit true from rfl,
      show ((1 : Num) : ℕ) = Nat.bit true 0 from rfl]
    all_goals
      repeat rw [this']
      rw [Nat.bitwise_bit gff]
    any_goals rw [Nat.bitwise_zero, p11]; cases g true true <;> rfl
    any_goals rw [Nat.bitwise_zero_left, ← Bool.cond_eq_ite, this, ← bit_to_nat, p1b]
    any_goals rw [Nat.bitwise_zero_right, ← Bool.cond_eq_ite, this, ← bit_to_nat, pb1]
    all_goals
      rw [← show ∀ n : PosNum, ↑(p m n) = Nat.bitwise g ↑m ↑n from IH]
      rw [← bit_to_nat, pbb]

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variant336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean#L759).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78cddb3e3ef233925fd162db5f3dc275ad6965e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
