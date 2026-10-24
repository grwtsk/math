# apply_prime_eq_one_or_dvd_self_sub_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a01ea63-9334-9166-fe14-29d01f9ca3c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ba6b2fc-c2cc-1388-612d-44425dba7776",
  "kind": "lemma",
  "lexical_name": "apply_prime_eq_one_or_dvd_self_sub_apply",
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
  "slug": "apply-prime-eq-one-or-dvd-self-sub-apply--c06e7a7d02742d6a54c496cf",
  "source": {
    "blob": "fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c06e7a7d02742d6a54c496cfb366d2498ddee7ad08145e4a2ba81e521440536e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ba6b2fc-c2cc-1388-612d-44425dba7776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_prime_eq_one_or_dvd_self_sub_apply (hf : IsBonza f) {p : ℕ} (hp : p.Prime) :
    f p = 1 ∨ (∀ b > (0 : ℕ), (p : ℤ) ∣ (b : ℤ) - ((f b) : ℤ)) := by
  have : f p ∣ p ^ p := hf.apply_dvd_pow hp.pos
  obtain ⟨k, _, eq⟩ : ∃ k, k ≤ p ∧ f p = p ^ k := (Nat.dvd_prime_pow hp).mp this
  by_cases ch : k = 0
  · left
    rwa [ch, pow_zero] at eq
  · right
    intro b hb
    have : (p : ℤ) ∣ (b : ℤ) ^ p - (f b) ^ f p := by calc
      _ ∣ (f p : ℤ) := by simp [eq, ch]
      _ ∣ _ := hf.1 p b hp.pos hb
    have : (b : ℤ) ≡ (f b : ℤ) [ZMOD p] := by calc
      _ ≡ (b : ℤ) ^ p [ZMOD p] := (ModEq.pow_prime_eq_self hp b).symm
      _ ≡ (f b) ^ f p [ZMOD p] := (Int.modEq_iff_dvd.mpr this).symm
      _ ≡ _ [ZMOD p] := by
        rw [eq]
        nth_rw 2 [← pow_one (f b : ℤ)]
        exact ModEq.pow_eq_pow hp (p.sub_one_dvd_pow_sub_one k) (one_le_pow k p hp.pos)
          (by norm_num) (f b)
    rwa [modEq_comm, Int.modEq_iff_dvd] at this

/-- For each bonza function `f`, then `f p = 1` for sufficient big prime `p` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
