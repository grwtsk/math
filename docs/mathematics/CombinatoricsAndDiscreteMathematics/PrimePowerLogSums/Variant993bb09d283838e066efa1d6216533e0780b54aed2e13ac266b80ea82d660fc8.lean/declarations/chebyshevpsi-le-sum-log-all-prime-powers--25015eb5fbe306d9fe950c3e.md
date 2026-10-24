# chebyshevPsi_le_sum_log_all_prime_powers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac55ce5c47e9dce6bb1db4c1bcc9d814b42b6ef5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d72c52c7-ffa3-1705-9c17-36220431bf38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb6b5f92-7de6-3b20-d56d-b96f155457ee",
  "kind": "theorem",
  "lexical_name": "chebyshevPsi_le_sum_log_all_prime_powers",
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
  "slug": "chebyshevpsi-le-sum-log-all-prime-powers--25015eb5fbe306d9fe950c3e",
  "source": {
    "blob": "ac55ce5c47e9dce6bb1db4c1bcc9d814b42b6ef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25015eb5fbe306d9fe950c3e195346c707cfe590b64da6eea35c1c55865537bf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb6b5f92-7de6-3b20-d56d-b96f155457ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshevPsi_le_sum_log_all_prime_powers
    (N : Nat) :
    chebyshevPsi N ≤
      ∑ pk ∈ (Finset.Icc 2 N).product (Finset.Icc 1 N),
        if Nat.Prime pk.1 ∧ pk.1 ^ pk.2 ≤ N
        then Real.log pk.1 else 0 := by
  let S := primePowerPairsUpTo N
  let T := (Finset.Icc 2 N).product (Finset.Icc 1 N)
  let g : Nat × Nat → Real :=
    fun pk =>
      if Nat.Prime pk.1 ∧ pk.1 ^ pk.2 ≤ N
      then Real.log pk.1 else 0
  have hsub : S ⊆ T := by
    intro pk hpk
    rcases pk with ⟨p, k⟩
    rcases mem_primePowerPairsUpTo_iff.mp hpk with ⟨hp, hk, hpow⟩
    exact
      Finset.mem_product.mpr
        ⟨ Finset.mem_Icc.mpr
            ⟨ hp.two_le
            , (Nat.le_of_dvd (pow_pos hp.pos k) (dvd_pow_self p (by omega))).trans hpow
            ⟩
        , Finset.mem_Icc.mpr
            ⟨ hk
            , (le_of_lt k.lt_two_pow_self).trans
                ((Nat.pow_le_pow_left hp.two_le k).trans hpow)
            ⟩
        ⟩
  have hS_eq :
      (∑ pk ∈ S, Real.log pk.1) = ∑ pk ∈ S, g pk := by
    refine Finset.sum_congr rfl ?_
    intro pk hpk
    rcases pk with ⟨p, k⟩
    rcases mem_primePowerPairsUpTo_iff.mp hpk with ⟨hp, _hk, hpow⟩
    simp [g, hp, hpow]
  have hnonneg :
      ∀ pk ∈ T, pk ∉ S → 0 ≤ g pk := by
    intro pk _hpk _hnot
    rcases pk with ⟨p, k⟩
    by_cases h : Nat.Prime p ∧ p ^ k ≤ N
    · have hp_one : (1 : Real) ≤ (p : Real) := by
        exact_mod_cast h.1.one_le
      have hlog : 0 ≤ Real.log (p : Real) := Real.log_nonneg hp_one
      simpa [g, h] using hlog
    · simp [g, h]
  unfold chebyshevPsi
  rw [show primePowerPairsUpTo N = S from rfl]
  rw [hS_eq]
  exact
    Finset.sum_le_sum_of_subset_of_nonneg
      (s := S) (t := T) (f := g) hsub hnonneg

/-- Theorem target: a finite-linear upper bound for psi. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac55ce5c47e9dce6bb1db4c1bcc9d814b42b6ef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
