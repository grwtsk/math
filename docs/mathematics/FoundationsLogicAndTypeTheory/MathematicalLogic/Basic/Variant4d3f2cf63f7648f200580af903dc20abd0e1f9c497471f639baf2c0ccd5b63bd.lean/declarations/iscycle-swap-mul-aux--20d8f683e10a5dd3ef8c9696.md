# isCycle_swap_mul_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6a8b571-7c78-1818-bd81-dd17652cd55c",
  "kind": "theorem",
  "lexical_name": "isCycle_swap_mul_aux₂",
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
  "slug": "iscycle-swap-mul-aux--20d8f683e10a5dd3ef8c9696",
  "source": {
    "blob": "0bbd1a91e27836660b62a37ccb45042c976989f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 382,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20d8f683e10a5dd3ef8c9696cfc3c01b89e5361b885894c2c086855b053be476",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6a8b571-7c78-1818-bd81-dd17652cd55c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCycle_swap_mul_aux₂ {α : Type*} [DecidableEq α] :
    ∀ (n : ℤ) {b x : α} {f : Perm α} (_ : (swap x (f x) * f) b ≠ b) (_ : (f ^ n) (f x) = b),
      ∃ i : ℤ, ((swap x (f x) * f) ^ i) (f x) = b := by
  intro n
  cases n with
  | ofNat n => exact isCycle_swap_mul_aux₁ n
  | negSucc n =>
    intro b x f hb h
    exact if hfbx' : f x = b then ⟨0, hfbx'⟩
      else
        have : f b ≠ b ∧ b ≠ x := ne_and_ne_of_swap_mul_apply_ne_self hb
        have hb : (swap x (f⁻¹ x) * f⁻¹) (f⁻¹ b) ≠ f⁻¹ b := by
          rw [mul_apply, swap_apply_def]
          split_ifs <;>
            simp only [inv_eq_iff_eq, Perm.mul_apply, zpow_negSucc, Ne, Perm.apply_inv_self] at *
              <;> tauto
        let ⟨i, hi⟩ :=
          isCycle_swap_mul_aux₁ n hb
            (show (f⁻¹ ^ n) (f⁻¹ x) = f⁻¹ b by
              rw [← zpow_natCast, ← h, ← mul_apply, ← mul_apply, ← mul_apply, zpow_negSucc,
                ← inv_pow, pow_succ, mul_assoc, mul_assoc, inv_mul_cancel, mul_one, zpow_natCast,
                ← pow_succ', ← pow_succ])
        have h : (swap x (f⁻¹ x) * f⁻¹) (f x) = f⁻¹ x := by
          rw [mul_apply, inv_apply_self, swap_apply_left]
        ⟨-i, by
          rw [← add_sub_cancel_right i 1, neg_sub, sub_eq_add_neg, zpow_add, zpow_one, zpow_neg,
            ← inv_zpow, mul_inv_rev, swap_inv, mul_swap_eq_swap_mul, inv_apply_self, swap_comm _ x,
            zpow_add, zpow_one, mul_apply, mul_apply (_ ^ i), h, hi, mul_apply, apply_inv_self,
            swap_apply_of_ne_of_ne this.2 (Ne.symm hfbx')]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant4d3f2cf63f7648f200580af903dc20abd0e1f9c497471f639baf2c0ccd5b63bd.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bbd1a91e27836660b62a37ccb45042c976989f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
