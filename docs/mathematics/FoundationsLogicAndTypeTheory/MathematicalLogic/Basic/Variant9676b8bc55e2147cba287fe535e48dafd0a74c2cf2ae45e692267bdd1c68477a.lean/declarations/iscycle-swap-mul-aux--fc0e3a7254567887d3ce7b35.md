# isCycle_swap_mul_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "872c6e8318bb5cdfd4a7da8912e14238e2077040",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00306672-5b73-b593-9aac-22685513a3dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82714fea-5043-70a7-e834-6cb4d3367eda",
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
  "slug": "iscycle-swap-mul-aux--fc0e3a7254567887d3ce7b35",
  "source": {
    "blob": "872c6e8318bb5cdfd4a7da8912e14238e2077040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 374,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc0e3a7254567887d3ce7b35c7882605c16b99c0a67c91d91d77ed5afe090b9f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82714fea-5043-70a7-e834-6cb4d3367eda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–403.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872c6e8318bb5cdfd4a7da8912e14238e2077040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
