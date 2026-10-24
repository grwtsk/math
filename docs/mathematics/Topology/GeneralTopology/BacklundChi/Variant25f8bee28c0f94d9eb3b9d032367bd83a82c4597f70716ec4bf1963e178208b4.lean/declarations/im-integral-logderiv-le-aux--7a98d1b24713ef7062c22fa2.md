# im_integral_logDeriv_le_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c61036e-ffcf-01ea-e9cd-24fc761ad435",
  "kind": "lemma",
  "lexical_name": "im_integral_logDeriv_le_aux",
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
  "slug": "im-integral-logderiv-le-aux--7a98d1b24713ef7062c22fa2",
  "source": {
    "blob": "07d5bcacede31f7967ba4ba5a412b8f32dd72556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a98d1b24713ef7062c22fa2ead8ea99ec9780e7569288cf93ce391923ee0215",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c61036e-ffcf-01ea-e9cd-24fc761ad435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma im_integral_logDeriv_le_aux (hχ1 : χ ≠ 1)
    (hnz : ∀ σ ∈ Set.Icc (1/2 : ℝ) 2, χ.LFunction (σ + T * I) ≠ 0)
    (P : Finset ℝ) (hP : ∀ σ ∈ Set.Icc (1/2 : ℝ) 2, (χ.LFunction (σ + T * I)).re = 0 → σ ∈ P) :
    ∀ n : ℕ, ∀ u v : ℝ, 1/2 ≤ u → u < v → v ≤ 2 →
      (P.filter (fun x => u < x ∧ x < v)).card ≤ n →
      |(∫ σ in u..v, logDeriv χ.LFunction (σ + T * I)).im|
        ≤ 2 * Real.pi * ((P.filter (fun x => u < x ∧ x < v)).card + 1) := by
  -- the empty-interior case, used twice
  have base : ∀ u v : ℝ, 1/2 ≤ u → u < v → v ≤ 2 →
      (P.filter (fun x => u < x ∧ x < v)).card = 0 →
      |(∫ σ in u..v, logDeriv χ.LFunction (σ + T * I)).im|
        ≤ 2 * Real.pi * ((P.filter (fun x => u < x ∧ x < v)).card + 1) := by
    intro u v hu huv hv hc
    have hno : ∀ σ ∈ Set.Ioo u v, (χ.LFunction (σ + T * I)).re ≠ 0 := by
      intro σ hσ hre
      have hσP : σ ∈ P.filter (fun x => u < x ∧ x < v) :=
        Finset.mem_filter.mpr ⟨hP σ ⟨by linarith [hσ.1], by linarith [hσ.2]⟩ hre, hσ.1, hσ.2⟩
      rw [Finset.card_eq_zero] at hc
      simp [hc] at hσP
    rw [hc]
    have := im_integral_le_two_pi hχ1 hnz hu huv hv hno
    simpa using this
  intro n
  induction n with
  | zero =>
    intro u v hu huv hv hc
    exact base u v hu huv hv (Nat.le_zero.mp hc)
  | succ n ih =>
    intro u v hu huv hv hc
    by_cases hc0 : (P.filter (fun x => u < x ∧ x < v)).card = 0
    · exact base u v hu huv hv hc0
    obtain ⟨m, hm⟩ := Finset.card_pos.mp (Nat.pos_of_ne_zero hc0)
    obtain ⟨-, hum, hmv⟩ := Finset.mem_filter.mp hm
    -- the two halves carry fewer points: c₁ + c₂ + 1 ≤ c
    set S := P.filter (fun x => u < x ∧ x < v) with hSdef
    set S₁ := P.filter (fun x => u < x ∧ x < m) with hS₁def
    set S₂ := P.filter (fun x => m < x ∧ x < v) with hS₂def
    have hdisj : Disjoint S₁ S₂ := by
      rw [Finset.disjoint_left]
      intro x hx1 hx2
      have := (Finset.mem_filter.mp hx1).2.2
      have := (Finset.mem_filter.mp hx2).2.1
      linarith
    have hsubS : S₁ ∪ S₂ ⊆ S.erase m := by
      intro x hx
      rw [Finset.mem_erase]
      rcases Finset.mem_union.mp hx with hx | hx
      · obtain ⟨hxP, hux, hxm⟩ := Finset.mem_filter.mp hx
        exact ⟨hxm.ne, Finset.mem_filter.mpr ⟨hxP, hux, by linarith⟩⟩
      · obtain ⟨hxP, hmx, hxv⟩ := Finset.mem_filter.mp hx
        exact ⟨hmx.ne', Finset.mem_filter.mpr ⟨hxP, by linarith, hxv⟩⟩
    have hcard : S₁.card + S₂.card + 1 ≤ S.card := by
      have h1 : S₁.card + S₂.card = (S₁ ∪ S₂).card := (Finset.card_union_of_disjoint hdisj).symm
      have h2 : (S₁ ∪ S₂).card ≤ (S.erase m).card := Finset.card_le_card hsubS
      have h3 : (S.erase m).card = S.card - 1 := Finset.card_erase_of_mem hm
      have h4 : 1 ≤ S.card := Finset.card_pos.mpr ⟨m, hm⟩
      omega
    have hc1 : S₁.card ≤ n := by omega
    have hc2 : S₂.card ≤ n := by omega
    have e1 := ih u m hu hum (by linarith) hc1
    have e2 := ih m v (by linarith) hmv hv hc2
    -- split the integral at m
    have hmI : m ∈ Set.Icc (1/2 : ℝ) 2 := ⟨by linarith, by linarith⟩
    have huI : u ∈ Set.Icc (1/2 : ℝ) 2 := ⟨hu, by linarith⟩
    have hvI : v ∈ Set.Icc (1/2 : ℝ) 2 := ⟨by linarith, hv⟩
    rw [← intervalIntegral.integral_add_adjacent_intervals
      (intervalIntegrable_logDeriv_horizontal hχ1 hnz huI hmI)
      (intervalIntegrable_logDeriv_horizontal hχ1 hnz hmI hvI), Complex.add_im]
    have hcast : ((S₁.card : ℝ) + 1) + ((S₂.card : ℝ) + 1) ≤ (S.card : ℝ) + 1 := by
      have : ((S₁.card + S₂.card + 1 : ℕ) : ℝ) ≤ (S.card : ℝ) := by exact_mod_cast hcard
      push_cast at this; linarith
    calc |(∫ σ in u..m, logDeriv χ.LFunction (σ + T * I)).im
          + (∫ σ in m..v, logDeriv χ.LFunction (σ + T * I)).im|
        ≤ |(∫ σ in u..m, logDeriv χ.LFunction (σ + T * I)).im|
          + |(∫ σ in m..v, logDeriv χ.LFunction (σ + T * I)).im| := abs_add_le _ _
      _ ≤ 2 * Real.pi * ((S₁.card : ℝ) + 1) + 2 * Real.pi * ((S₂.card : ℝ) + 1) := add_le_add e1 e2
      _ ≤ 2 * Real.pi * ((S.card : ℝ) + 1) := by nlinarith [Real.pi_pos]

/-- **(V) Variation of the argument along `[1/2,2] + iT`:** if `ζ ≠ 0` there and `Re ζ(σ+iT)` has
finitely many zeros, then `|Im ∫_{1/2}^{2} ζ'/ζ(σ+iT) dσ| ≤ 2π (#reZeroSetL χ T + 1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07d5bcacede31f7967ba4ba5a412b8f32dd72556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
