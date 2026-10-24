# minSqFacAux_has_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e73300c-6356-a590-4290-c552d21dc289",
  "kind": "theorem",
  "lexical_name": "minSqFacAux_has_prop",
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
  "slug": "minsqfacaux-has-prop--2c01d0b5acc883597f06cfd2",
  "source": {
    "blob": "82768a42121429627bca02a10ce73934f81d1e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 155,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c01d0b5acc883597f06cfd281acaae53ffff5d1b8f6ccf120f468848e645a3e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e73300c-6356-a590-4290-c552d21dc289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minSqFacAux_has_prop {n : ℕ} (k) (n0 : 0 < n) (i) (e : k = 2 * i + 3)
    (ih : ∀ m, Prime m → m ∣ n → k ≤ m) : MinSqFacProp n (minSqFacAux n k) := by
  rw [minSqFacAux]
  by_cases h : n < k * k <;> simp only [h, ↓reduceDIte]
  · refine squarefree_iff_prime_squarefree.2 fun p pp d => ?_
    have := ih p pp (dvd_trans ⟨_, rfl⟩ d)
    have := Nat.mul_le_mul this this
    exact not_le_of_lt h (le_trans this (le_of_dvd n0 d))
  have k2 : 2 ≤ k := by omega
  have k0 : 0 < k := lt_of_lt_of_le (by decide) k2
  have IH : ∀ n', n' ∣ n → ¬k ∣ n' → MinSqFacProp n' (n'.minSqFacAux (k + 2)) := by
    intro n' nd' nk
    have hn' := le_of_dvd n0 nd'
    refine
      have : Nat.sqrt n' - k < Nat.sqrt n + 2 - k :=
        lt_of_le_of_lt (Nat.sub_le_sub_right (Nat.sqrt_le_sqrt hn') _) (Nat.minFac_lemma n k h)
      @minSqFacAux_has_prop n' (k + 2) (pos_of_dvd_of_pos nd' n0) (i + 1)
        (by simp [e, left_distrib]) fun m m2 d => ?_
    rcases Nat.eq_or_lt_of_le (ih m m2 (dvd_trans d nd')) with me | ml
    · subst me
      contradiction
    apply (Nat.eq_or_lt_of_le ml).resolve_left
    intro me
    rw [← me, e] at d
    change 2 * (i + 2) ∣ n' at d
    have := ih _ prime_two (dvd_trans (dvd_of_mul_right_dvd d) nd')
    rw [e] at this
    exact absurd this (by omega)
  have pk : k ∣ n → Prime k := by
    refine fun dk => prime_def_minFac.2 ⟨k2, le_antisymm (minFac_le k0) ?_⟩
    exact ih _ (minFac_prime (ne_of_gt k2)) (dvd_trans (minFac_dvd _) dk)
  split_ifs with dk dkk
  · exact ⟨pk dk, (Nat.dvd_div_iff_mul_dvd dk).1 dkk, fun p pp d => ih p pp (dvd_trans ⟨_, rfl⟩ d)⟩
  · specialize IH (n / k) (div_dvd_of_dvd dk) dkk
    exact minSqFacProp_div _ (pk dk) dk (mt (Nat.dvd_div_iff_mul_dvd dk).2 dkk) IH
  · exact IH n (dvd_refl _) dk
termination_by n.sqrt + 2 - k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82768a42121429627bca02a10ce73934f81d1e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
