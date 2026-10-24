# sum_odd_prime_power_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0650d99ed8929b18de14c0caf38ed073c52b5b98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32777566-e7d8-9533-5a77-fdb8f20836d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b3d1e6e-4072-44e5-28a1-fd8a431e4e3c",
  "kind": "theorem",
  "lexical_name": "sum_odd_prime_power_inventory",
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
  "slug": "sum-odd-prime-power-inventory--402fee96204255771dda00be",
  "source": {
    "blob": "0650d99ed8929b18de14c0caf38ed073c52b5b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:402fee96204255771dda00bea3216ebd9abd008c2d2820a08d4d486d756956ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b3d1e6e-4072-44e5-28a1-fd8a431e4e3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_odd_prime_power_inventory (N : ℕ) (f : ℕ → ℝ) :
    (∑ n ∈ (Finset.Icc 2 N).filter
      (fun n ↦ IsPrimePow n ∧ ¬Nat.Prime n ∧ ¬IsSquare n), f n) =
      ∑ p ∈ (Finset.Icc 2 N).filter Nat.Prime,
        ∑ k ∈ (Finset.range N).filter (fun k ↦ p ^ (2 * k + 3) ≤ N),
          f (p ^ (2 * k + 3)) := by
  classical
  rw [Finset.sum_sigma']
  symm
  apply Finset.sum_bij (fun a _ ↦ a.1 ^ (2 * a.2 + 3))
  · rintro ⟨p, k⟩ ha
    obtain ⟨hp, hk⟩ := Finset.mem_sigma.mp ha
    obtain ⟨_, hp⟩ := Finset.mem_filter.mp hp
    obtain ⟨_, hbound⟩ := Finset.mem_filter.mp hk
    have hprops := odd_power_properties p k hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hprops.1.two_le, hbound⟩, hprops⟩
  · rintro ⟨p, k⟩ ha ⟨q, l⟩ hb heq
    have hp := (Finset.mem_filter.mp (Finset.mem_sigma.mp ha).1).2
    have hq := (Finset.mem_filter.mp (Finset.mem_sigma.mp hb).1).2
    obtain ⟨hpq, hkl⟩ := hp.pow_inj' hq (by omega) (by omega) heq
    dsimp only at hpq hkl
    have hk : k = l := by omega
    subst q
    subst l
    rfl
  · intro n hn
    obtain ⟨hn, hpp, hnp, hns⟩ := Finset.mem_filter.mp hn
    obtain ⟨hn2, hnN⟩ := Finset.mem_Icc.mp hn
    obtain ⟨p, e, hp, he, hpow⟩ := (isPrimePow_nat_iff n).mp hpp
    have he1 : e ≠ 1 := by
      intro h
      subst e
      simp only [pow_one] at hpow
      exact hnp (hpow ▸ hp)
    have hmod : e % 2 ≠ 0 := by
      intro hm
      apply hns
      refine (isSquare_iff_exists_sq _).mpr ⟨p ^ (e / 2), ?_⟩
      rw [← pow_mul]
      have hd : e / 2 * 2 = e := by omega
      rw [hd, hpow]
    let k := e / 2 - 1
    have hek : e = 2 * k + 3 := by dsimp [k]; omega
    have hpN : p ≤ N := (Nat.le_pow he).trans (hpow ▸ hnN)
    have hkN : k < N := by
      have heN : e < p ^ e := Nat.lt_pow_self hp.one_lt
      rw [hpow] at heN
      omega
    refine ⟨⟨p, k⟩, Finset.mem_sigma.mpr
      ⟨Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hp.two_le, hpN⟩, hp⟩,
        Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hkN, ?_⟩⟩, ?_⟩
    · rwa [← hek, hpow]
    · simpa only [← hek] using hpow
  · intro a _
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6e75164d9bcce50ca39ba33459a86b87645aa78d5ef6193608660be7f0f72284.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0650d99ed8929b18de14c0caf38ed073c52b5b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
