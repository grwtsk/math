# sum_Ioc_mul_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0e13d4f-2713-19de-199a-46eb9b1a1a26",
  "kind": "theorem",
  "lexical_name": "sum_Ioc_mul_apply",
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
  "slug": "sum-ioc-mul-apply--f68bcca344711a402eb889cf",
  "source": {
    "blob": "98391cd54219a20fa3b9d5949141d7ecef5de3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f68bcca344711a402eb889cf1fc1a2a52b7b6132abf2349c72ea55a4dd3bb240",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0e13d4f-2713-19de-199a-46eb9b1a1a26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Ioc_mul_apply (f g : ArithmeticFunction R) (h : ℕ → R) (X : ℕ) :
    ∑ N ∈ Ioc 0 X, (f * g) N * h N =
      ∑ d ∈ Ioc 0 X, f d * ∑ e ∈ Ioc 0 (X / d), g e * h (d * e) := by
  simp_rw [ArithmeticFunction.mul_apply, sum_mul, mul_sum]
  rw [sum_sigma', sum_sigma']
  refine sum_nbij' (fun x => ⟨x.2.1, x.2.2⟩) (fun y => ⟨y.1 * y.2, (y.1, y.2)⟩) ?_ ?_ ?_ ?_ ?_
  · rintro ⟨N, ⟨a, b⟩⟩ hx
    simp only [mem_sigma, mem_Ioc, Nat.mem_divisorsAntidiagonal] at hx ⊢
    obtain ⟨⟨hN0, hNX⟩, hab, hN⟩ := hx
    have ha : a ≠ 0 := by rintro rfl; simp at hab; exact hN hab.symm
    have hb : b ≠ 0 := by rintro rfl; simp at hab; exact hN hab.symm
    refine ⟨⟨Nat.pos_of_ne_zero ha, ?_⟩, Nat.pos_of_ne_zero hb, ?_⟩
    · calc a ≤ a * b := Nat.le_mul_of_pos_right a (Nat.pos_of_ne_zero hb)
        _ = N := hab
        _ ≤ X := hNX
    · rw [Nat.le_div_iff_mul_le (Nat.pos_of_ne_zero ha), mul_comm, hab]; exact hNX
  · rintro ⟨d, e⟩ hy
    simp only [mem_sigma, mem_Ioc, Nat.mem_divisorsAntidiagonal] at hy ⊢
    obtain ⟨⟨hd0, hdX⟩, he0, heX⟩ := hy
    rw [Nat.le_div_iff_mul_le hd0] at heX
    exact ⟨⟨Nat.mul_pos hd0 he0, by rwa [mul_comm] at heX⟩, by simp, (Nat.mul_pos hd0 he0).ne'⟩
  · rintro ⟨N, ⟨a, b⟩⟩ hx
    simp only [mem_sigma, Nat.mem_divisorsAntidiagonal] at hx
    obtain ⟨_, hab, _⟩ := hx
    simp [hab]
  · rintro ⟨d, e⟩ _
    rfl
  · rintro ⟨N, ⟨a, b⟩⟩ hx
    simp only [mem_sigma, Nat.mem_divisorsAntidiagonal] at hx
    obtain ⟨_, hab, _⟩ := hx
    simp [hab, mul_assoc]

/-- Same with the factors swapped: Σ_{N≤X} (f∗g)(N) h(N) = Σ_{e≤X} g(e) Σ_{d≤X/e} f(d) h(de). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variantb673b2a806a4d1dbb3329053bf0883edc2d2db59f5b7f05aa73b150f12e84c64.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98391cd54219a20fa3b9d5949141d7ecef5de3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
