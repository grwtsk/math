# isCycle_swap_mul_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8380002e-e505-aeec-ef88-f585e2b84e92",
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
  "slug": "iscycle-swap-mul-aux--1c513258d8cca5ff12a86d73",
  "source": {
    "blob": "33a0a177dacc514f42e4d5742e070ec7c0806fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 392,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c513258d8cca5ff12a86d7356ad6d3f35e47ccee83153976fdd260d7c4e9005",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8380002e-e505-aeec-ef88-f585e2b84e92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCycle_swap_mul_aux₂ {α : Type*} [DecidableEq α] :
    ∀ (n : ℤ) {b x : α} {f : Perm α}, (swap x (f x) * f) b ≠ b → (f ^ n) (f x) = b →
      ∃ i : ℤ, ((swap x (f x) * f) ^ i) (f x) = b
  | (n : ℕ), _, _, _, hb, h => isCycle_swap_mul_aux₁ n hb h
  | .negSucc n, b, x, f, hb, h => by
    obtain hfxb | hfxb := eq_or_ne (f x) b
    · exact ⟨0, hfxb⟩
    obtain ⟨hfb, hbx⟩ : f b ≠ b ∧ b ≠ x := ne_and_ne_of_swap_mul_apply_ne_self hb
    replace hb : (swap x (f.symm x) * f⁻¹) (f.symm b) ≠ f.symm b := by
      rw [mul_apply, swap_apply_def]
      split_ifs <;> simp [symm_apply_eq, eq_symm_apply] at * <;> tauto
    obtain ⟨i, hi⟩ := isCycle_swap_mul_aux₁ n hb <| by
      rw [← mul_apply, ← pow_succ]; simpa [pow_succ', eq_symm_apply] using! h
    refine ⟨-i, (swap x (f⁻¹ x) * f⁻¹).injective ?_⟩
    convert! hi using 1
    · rw [zpow_neg, ← inv_zpow, ← mul_apply, mul_inv_rev, swap_inv, mul_swap_eq_swap_mul]
      simp [swap_comm _ x, ← mul_apply, -coe_mul, ← inv_def, -coe_inv, ← inv_def, mul_assoc _ f⁻¹,
        ← mul_zpow_mul, mul_assoc _ _ f]
      simp
    · exact swap_apply_of_ne_of_ne (by simpa [eq_comm, eq_symm_apply, symm_apply_eq] using! hfxb)
        (by simpa [eq_comm, eq_symm_apply, symm_apply_eq])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a0a177dacc514f42e4d5742e070ec7c0806fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
