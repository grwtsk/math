# exists_associated_pow_of_mul_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b496921362123a127f10ba3de7ae3fbf9e5290b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 642,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8906dc0ef3a68fb525c66626163e5de1cf95d57884a5a6cde9b64d550cb6f5ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e232328-8c62-5b5c-7b60-254eab961971",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c069a2c5-a726-89b6-1f3f-3a9d7ecc8651",
  "kind": "theorem",
  "lexical_name": "exists_associated_pow_of_mul_eq_pow",
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
  "slug": "exists-associated-pow-of-mul-eq-pow--0781809c03664f74fdebd47d",
  "source": {
    "blob": "b496921362123a127f10ba3de7ae3fbf9e5290b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 681,
    "line": 642,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8906dc0ef3a68fb525c66626163e5de1cf95d57884a5a6cde9b64d550cb6f5ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0781809c03664f74fdebd47def6e1e11863ba89d1d39788155a7014183672840",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8906dc0ef3a68fb525c66626163e5de1cf95d57884a5a6cde9b64d550cb6f5ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c069a2c5-a726-89b6-1f3f-3a9d7ecc8651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–681.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_associated_pow_of_mul_eq_pow [GCDMonoid α] {a b c : α} (hab : IsUnit (gcd a b))
    {k : ℕ} (h : a * b = c ^ k) : ∃ d : α, Associated (d ^ k) a := by
  cases subsingleton_or_nontrivial α
  · use 0
    rw [Subsingleton.elim a (0 ^ k)]
  by_cases ha : a = 0
  · use 0
    obtain rfl | hk := eq_or_ne k 0
    · simp [ha] at h
    · rw [ha, zero_pow hk]
  by_cases hb : b = 0
  · use 1
    rw [one_pow]
    apply (associated_one_iff_isUnit.mpr hab).symm.trans
    rw [hb]
    exact gcd_zero_right' a
  obtain rfl | hk := k.eq_zero_or_pos
  · use 1
    rw [pow_zero] at h ⊢
    use Units.mkOfMulEqOne _ _ h
    rw [Units.val_mkOfMulEqOne, one_mul]
  have hc : c ∣ a * b := by
    rw [h]
    exact dvd_pow_self _ hk.ne'
  obtain ⟨d₁, d₂, hd₁, hd₂, hc⟩ := exists_dvd_and_dvd_of_dvd_mul hc
  use d₁
  obtain ⟨h0₁, ⟨a', ha'⟩⟩ := pow_dvd_of_mul_eq_pow ha hab h hc hd₁
  rw [mul_comm] at h hc
  rw [(gcd_comm' a b).isUnit_iff] at hab
  obtain ⟨h0₂, ⟨b', hb'⟩⟩ := pow_dvd_of_mul_eq_pow hb hab h hc hd₂
  rw [ha', hb', hc, mul_pow] at h
  have h' : a' * b' = 1 := by
    apply (mul_right_inj' h0₁).mp
    rw [mul_one]
    apply (mul_right_inj' h0₂).mp
    rw [← h]
    rw [mul_assoc, mul_comm a', ← mul_assoc _ b', ← mul_assoc b', mul_comm b']
  use Units.mkOfMulEqOne _ _ h'
  rw [Units.val_mkOfMulEqOne, ha']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8906dc0ef3a68fb525c66626163e5de1cf95d57884a5a6cde9b64d550cb6f5ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8906dc0ef3a68fb525c66626163e5de1cf95d57884a5a6cde9b64d550cb6f5ed.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b496921362123a127f10ba3de7ae3fbf9e5290b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
