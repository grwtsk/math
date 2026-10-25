# isCycle_swap_mul_aux₁

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
      "line": 353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30330d90-eeb6-0fa1-fb07-000e6e3aa0e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6415f67-2c90-f774-63d2-ec81ad5c90f8",
  "kind": "theorem",
  "lexical_name": "isCycle_swap_mul_aux₁",
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
  "slug": "iscycle-swap-mul-aux--72ee20378aa38cbf1efe36df",
  "source": {
    "blob": "872c6e8318bb5cdfd4a7da8912e14238e2077040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 353,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72ee20378aa38cbf1efe36df9dc56cd19d14cacd2da396fa299201b0c46e780e",
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

Occurrence: `result:a6415f67-2c90-f774-63d2-ec81ad5c90f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCycle_swap_mul_aux₁ {α : Type*} [DecidableEq α] :
    ∀ (n : ℕ) {b x : α} {f : Perm α} (_ : (swap x (f x) * f) b ≠ b) (_ : (f ^ n) (f x) = b),
      ∃ i : ℤ, ((swap x (f x) * f) ^ i) (f x) = b := by
  intro n
  induction n with
  | zero => exact fun _ h => ⟨0, h⟩
  | succ n hn =>
    intro b x f hb h
    exact if hfbx : f x = b then ⟨0, hfbx⟩
      else
        have : f b ≠ b ∧ b ≠ x := ne_and_ne_of_swap_mul_apply_ne_self hb
        have hb' : (swap x (f x) * f) (f⁻¹ b) ≠ f⁻¹ b := by
          rw [mul_apply, apply_inv_self, swap_apply_of_ne_of_ne this.2 (Ne.symm hfbx), Ne, ←
            f.injective.eq_iff, apply_inv_self]
          exact this.1
        let ⟨i, hi⟩ := hn hb' (f.injective <| by
          rw [apply_inv_self]; rwa [pow_succ', mul_apply] at h)
        ⟨i + 1, by
          rw [add_comm, zpow_add, mul_apply, hi, zpow_one, mul_apply, apply_inv_self,
            swap_apply_of_ne_of_ne (ne_and_ne_of_swap_mul_apply_ne_self hb).2 (Ne.symm hfbx)]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872c6e8318bb5cdfd4a7da8912e14238e2077040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
