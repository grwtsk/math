# mobiusLogHighGCDReduceTerm_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c791c703-d1ab-40c7-0f4c-c00ac0349f0f",
  "kind": "theorem",
  "lexical_name": "mobiusLogHighGCDReduceTerm_injOn",
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
  "slug": "mobiusloghighgcdreduceterm-injon--0ada2789fd653486c58d5d9a",
  "source": {
    "blob": "fcef170ddde778f44fd5ed12801a728be37c7125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 131,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ada2789fd653486c58d5d9ae73a221fcf9dd20f3e7d7a35766872dfbef1db14",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c791c703-d1ab-40c7-0f4c-c00ac0349f0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobiusLogHighGCDReduceTerm_injOn
    {X Y : ℕ}
    (hY : 1 ≤ Y) :
    Set.InjOn mobiusLogHighGCDReduceTerm
      (mobiusLogAbsoluteHighGCDTypeIITermIndexSet X Y : Set _) := by
  intro x hx y hy hxy
  rcases x with ⟨h₁, ⟨n₁, ⟨g₁, uv₁⟩⟩⟩
  rcases y with ⟨h₂, ⟨n₂, ⟨g₂, uv₂⟩⟩⟩
  simp only [mobiusLogAbsoluteHighGCDTypeIITermIndexSet,
    Finset.mem_sigma] at hx hy
  rcases hx with ⟨hh₁, hn₁, hg₁, huv₁⟩
  rcases hy with ⟨hh₂, hn₂, hg₂, huv₂⟩
  rcases centeredMobiusLogHighGCDClass_pair_is_genuine
      hY hg₁ huv₁ with ⟨d₁, e₁, rfl⟩
  rcases centeredMobiusLogHighGCDClass_pair_is_genuine
      hY hg₂ huv₂ with ⟨d₂, e₂, rfl⟩
  have hgEq : g₁ = g₂ := congrArg Sigma.fst hxy
  subst g₂
  have hpayload :
      (⟨n₁ / g₁, d₁ / g₁⟩,
        ⟨(n₁ + h₁) / g₁, e₁ / g₁⟩) =
      (⟨n₂ / g₁, d₂ / g₁⟩,
        ⟨(n₂ + h₂) / g₁, e₂ / g₁⟩) := by
    have hh := (Sigma.mk.inj_iff.mp hxy).2
    simpa [mobiusLogHighGCDReduceTerm, heq_eq_eq,
      centeredMobiusLogDivisorModulus] using hh
  have hleft := congrArg Prod.fst hpayload
  have hright := congrArg Prod.snd hpayload
  have haEq : n₁ / g₁ = n₂ / g₁ :=
    (Sigma.mk.inj_iff.mp hleft).1
  have hdEq : d₁ / g₁ = d₂ / g₁ := by
    have hh := (Sigma.mk.inj_iff.mp hleft).2
    simpa [heq_eq_eq] using hh
  have hbEq : (n₁ + h₁) / g₁ = (n₂ + h₂) / g₁ :=
    (Sigma.mk.inj_iff.mp hright).1
  have heEq : e₁ / g₁ = e₂ / g₁ := by
    have hh := (Sigma.mk.inj_iff.mp hright).2
    simpa [heq_eq_eq] using hh
  have hclass₁ :=
    (mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv₁).2
  have hclass₂ :=
    (mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv₂).2
  have hg_d₁ : g₁ ∣ d₁ := by
    rw [← hclass₁]
    exact Nat.gcd_dvd_left d₁ e₁
  have hg_e₁ : g₁ ∣ e₁ := by
    rw [← hclass₁]
    exact Nat.gcd_dvd_right d₁ e₁
  have hg_d₂ : g₁ ∣ d₂ := by
    rw [← hclass₂]
    exact Nat.gcd_dvd_left d₂ e₂
  have hg_e₂ : g₁ ∣ e₂ := by
    rw [← hclass₂]
    exact Nat.gcd_dvd_right d₂ e₂
  have hpair₁ :=
    mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp
      (mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv₁).1
  have hpair₂ :=
    mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff.mp
      (mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv₂).1
  have hd₁n : d₁ ∣ n₁ :=
    (Nat.mem_divisors.mp
      (some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff.mp
        hpair₁.1).1).1
  have he₁n : e₁ ∣ n₁ + h₁ :=
    (Nat.mem_divisors.mp
      (some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff.mp
        hpair₁.2).1).1
  have hd₂n : d₂ ∣ n₂ :=
    (Nat.mem_divisors.mp
      (some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff.mp
        hpair₂.1).1).1
  have he₂n : e₂ ∣ n₂ + h₂ :=
    (Nat.mem_divisors.mp
      (some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff.mp
        hpair₂.2).1).1
  have hg_n₁ : g₁ ∣ n₁ := hg_d₁.trans hd₁n
  have hg_n₂ : g₁ ∣ n₂ := hg_d₂.trans hd₂n
  have hg_nh₁ : g₁ ∣ n₁ + h₁ := hg_e₁.trans he₁n
  have hg_nh₂ : g₁ ∣ n₂ + h₂ := hg_e₂.trans he₂n
  have hnEq : n₁ = n₂ := by
    calc
      n₁ = g₁ * (n₁ / g₁) := (Nat.mul_div_cancel' hg_n₁).symm
      _ = g₁ * (n₂ / g₁) := by rw [haEq]
      _ = n₂ := Nat.mul_div_cancel' hg_n₂
  have hnhEq : n₁ + h₁ = n₂ + h₂ := by
    calc
      n₁ + h₁ = g₁ * ((n₁ + h₁) / g₁) :=
        (Nat.mul_div_cancel' hg_nh₁).symm
      _ = g₁ * ((n₂ + h₂) / g₁) := by rw [hbEq]
      _ = n₂ + h₂ := Nat.mul_div_cancel' hg_nh₂
  have hhEq : h₁ = h₂ := by omega
  have hdFullEq : d₁ = d₂ := by
    calc
      d₁ = g₁ * (d₁ / g₁) := (Nat.mul_div_cancel' hg_d₁).symm
      _ = g₁ * (d₂ / g₁) := by rw [hdEq]
      _ = d₂ := Nat.mul_div_cancel' hg_d₂
  have heFullEq : e₁ = e₂ := by
    calc
      e₁ = g₁ * (e₁ / g₁) := (Nat.mul_div_cancel' hg_e₁).symm
      _ = g₁ * (e₂ / g₁) := by rw [heEq]
      _ = e₂ := Nat.mul_div_cancel' hg_e₂
  subst n₂
  subst h₂
  subst d₂
  subst e₂
  rfl

/-- Exact term count is bounded by the relaxed reduced-divisor box. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIReduction.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcef170ddde778f44fd5ed12801a728be37c7125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
