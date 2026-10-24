# nth_eligibleResidueSixPrime_eq_nth_prime_add_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c926cf9-d46c-5d4c-9ce6-d0a6e0445c94",
  "kind": "theorem",
  "lexical_name": "nth_eligibleResidueSixPrime_eq_nth_prime_add_two",
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
  "slug": "nth-eligibleresiduesixprime-eq-nth-prime-add-two--32b4b341e904831c9a2a737e",
  "source": {
    "blob": "92b470ccfbd4abd042a59e2c49ecf54fb7edc0f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 75,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32b4b341e904831c9a2a737eb7b86397f5695981274a065023986315909128b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c926cf9-d46c-5d4c-9ce6-d0a6e0445c94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nth_eligibleResidueSixPrime_eq_nth_prime_add_two (n : ℕ) :
    Nat.nth IsEligibleResidueSixPrime n = Nat.nth Nat.Prime (n + 2) := by
  let f : ℕ → ℕ := fun m ↦ Nat.nth Nat.Prime (m + 2)
  have hf : StrictMono f := by
    exact (Nat.nth_strictMono Nat.infinite_setOf_prime).comp
      (strictMono_id.add_const 2)
  have hfEligible : ∀ m, IsEligibleResidueSixPrime (f m) := by
    intro m
    rw [eligibleResidueSixPrime_iff_prime_and_three_lt]
    refine ⟨Nat.prime_nth_prime (m + 2), ?_⟩
    have hmono : Nat.nth Nat.Prime 2 ≤ Nat.nth Nat.Prime (m + 2) :=
      Nat.nth_monotone Nat.infinite_setOf_prime (by omega)
    rw [Nat.nth_prime_two_eq_five] at hmono
    change 3 < Nat.nth Nat.Prime (m + 2)
    omega
  have hsurj : ∀ p, IsEligibleResidueSixPrime p → p ∈ Set.range f := by
    intro p hp
    have hp' : p.Prime ∧ 3 < p :=
      (eligibleResidueSixPrime_iff_prime_and_three_lt p).mp hp
    have hpRange : p ∈ Set.range (Nat.nth Nat.Prime) := by
      rw [Nat.range_nth_of_infinite Nat.infinite_setOf_prime]
      exact hp'.1
    rcases hpRange with ⟨i, hi⟩
    have hi2 : 2 ≤ i := by
      by_contra hnot
      have hilt : i < 2 := Nat.lt_of_not_ge hnot
      interval_cases i <;> simp at hi <;> omega
    refine ⟨i - 2, ?_⟩
    dsimp only [f]
    rw [Nat.sub_add_cancel hi2, hi]
  have hcomp := Nat.nth_comp_of_strictMono
    (p := IsEligibleResidueSixPrime) (n := n) hf hsurj
    (fun hfinite ↦ False.elim (infinite_eligibleResidueSixPrimes hfinite))
  have hnthTrue : Nat.nth (fun _ : ℕ ↦ True) n = n := by
    simpa only [Nat.count_true] using
      Nat.nth_count (p := fun _ : ℕ ↦ True) (n := n) trivial
  calc
    Nat.nth IsEligibleResidueSixPrime n =
        f (Nat.nth (fun m ↦ IsEligibleResidueSixPrime (f m)) n) := hcomp.symm
    _ = f (Nat.nth (fun _ : ℕ ↦ True) n) := by
      congr 2
      funext m
      exact propext ⟨fun _ ↦ True.intro, fun _ ↦ hfEligible m⟩
    _ = f n := by rw [hnthTrue]
    _ = Nat.nth Nat.Prime (n + 2) := rfl

/-- Requested closed form for the positive canonical cutoff. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92b470ccfbd4abd042a59e2c49ecf54fb7edc0f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
