# goldbachReducedIntegerPhaseSum_eq_moebiusExpansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:529700e0-3688-e159-b434-c3204f416e41",
  "kind": "theorem",
  "lexical_name": "goldbachReducedIntegerPhaseSum_eq_moebiusExpansion",
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
  "slug": "goldbachreducedintegerphasesum-eq-moebiusexpansion--f833d7ef2b0d7b11ca9f3bab",
  "source": {
    "blob": "150728bd7ad5ba326cec22777bac8b2068673f9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 257,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachCompositeRamanujan.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f833d7ef2b0d7b11ca9f3bab287340103e2e1c0afeaeebc2c0d58900cb03e17e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:529700e0-3688-e159-b434-c3204f416e41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachReducedIntegerPhaseSum_eq_moebiusExpansion
    {q N : ℕ} (hq : 0 < q) :
    goldbachReducedIntegerPhaseSum q (N : ℤ) =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius (q / d) : ℂ) *
          (if d ∣ N then (d : ℂ) else 0) := by
  classical
  have hindicator (a : ℕ) :
      (goldbachMoebiusCoprimeIndicator q a : ℂ) =
        ∑ d ∈ q.divisors, if d ∣ a then (ArithmeticFunction.moebius d : ℂ) else 0 := by
    have hset : q.divisors.filter (fun d => d ∣ a) = (Nat.gcd q a).divisors := by
      ext d
      simp only [Finset.mem_filter, Nat.mem_divisors]
      constructor
      · rintro ⟨⟨hdq, _⟩, hda⟩
        exact ⟨Nat.dvd_gcd hdq hda, (Nat.gcd_pos_of_pos_left a hq).ne'⟩
      · rintro ⟨hdg, _⟩
        exact ⟨⟨dvd_trans hdg (Nat.gcd_dvd_left q a), hq.ne'⟩,
          dvd_trans hdg (Nat.gcd_dvd_right q a)⟩
    unfold goldbachMoebiusCoprimeIndicator
    rw [← hset, Finset.sum_filter]
    push_cast
    apply Finset.sum_congr rfl
    intro d hd
    split_ifs <;> simp
  unfold goldbachReducedIntegerPhaseSum
    goldbachCoprimeResidues
  rw [Finset.sum_filter]
  calc
    (∑ a ∈ Finset.range q,
        if q.Coprime a then
          unitCharacter (N : ℤ)
            (goldbachRationalArcCenter a q)
        else 0) =
      ∑ a ∈ Finset.range q,
        (goldbachMoebiusCoprimeIndicator q a : ℂ) *
          unitCharacter (N : ℤ)
            (goldbachRationalArcCenter a q) := by
              apply Finset.sum_congr rfl
              intro a ha
              rw [goldbachMoebiusCoprimeIndicator_eq hq]
              by_cases hcop : q.Coprime a
              · simp only [if_pos hcop, Int.cast_one, one_mul]
              · simp only [if_neg hcop, Int.cast_zero, zero_mul]
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius d : ℂ) *
          (∑ a ∈ Finset.range q with d ∣ a,
            unitCharacter (N : ℤ)
              (goldbachRationalArcCenter a q)) := by
              simp_rw [hindicator, Finset.sum_mul, ite_mul, zero_mul]
              rw [Finset.sum_comm]
              apply Finset.sum_congr rfl
              intro d hd
              rw [Finset.mul_sum, Finset.sum_filter]
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius d : ℂ) *
          goldbachFullIntegerPhaseSum (q / d) (N : ℤ) := by
              apply Finset.sum_congr rfl
              intro d hd
              rw [goldbachMultiplePhaseFiber hq hd]
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius d : ℂ) *
          (if q / d ∣ N then ((q / d : ℕ) : ℂ) else 0) := by
              apply Finset.sum_congr rfl
              intro d hd
              have hquot0 : 0 < q / d :=
                Nat.div_pos (Nat.le_of_dvd hq
                  (mem_divisors.mp hd).1) (Nat.pos_of_mem_divisors hd)
              let : NeZero (q / d) := ⟨hquot0.ne'⟩
              rw [goldbachFullIntegerPhaseSum_formula]
              have hzero :
                  ((N : ℤ) : ZMod (q / d)) = 0 ↔
                    q / d ∣ N := by
                simpa using
                  ZMod.natCast_eq_zero_iff N (q / d)
              by_cases hdiv : q / d ∣ N
              · rw [if_pos (hzero.2 hdiv), if_pos hdiv]
              · rw [if_neg (fun hz => hdiv (hzero.1 hz)),
                  if_neg hdiv, mul_zero]
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius (q / d) : ℂ) *
          (if d ∣ N then (d : ℂ) else 0) := by
              apply Finset.sum_bij (fun d _hd => q / d)
              · intro d hd
                exact (goldbachDivisorReflection hq hd).1
              · intro d₁ h₁ d₂ h₂ hdiv
                calc
                  d₁ = q / (q / d₁) := (goldbachDivisorReflection hq h₁).2.symm
                  _ = q / (q / d₂) := by rw [hdiv]
                  _ = d₂ := (goldbachDivisorReflection hq h₂).2
              · intro d hd
                exact ⟨q / d, (goldbachDivisorReflection hq hd).1,
                  (goldbachDivisorReflection hq hd).2⟩
              · intro d hd
                rw [(goldbachDivisorReflection hq hd).2]

/-- The reduced-residue phase sum is exactly the integer Ramanujan sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachCompositeRamanujan.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150728bd7ad5ba326cec22777bac8b2068673f9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
