# boundedRestrictedPair_sum_eq_divisorsAntidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b02f63a2-55b8-cc84-5567-ff6f30f70142",
  "kind": "theorem",
  "lexical_name": "boundedRestrictedPair_sum_eq_divisorsAntidiagonal",
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
  "slug": "boundedrestrictedpair-sum-eq-divisorsantidiagonal--47fc0971c1f4ed059bec4caa",
  "source": {
    "blob": "2b9cece1ecfb57b5fb8c515ef953c8cc11820ee4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 360,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant21184cab2a90d44476e40a920c463267c7e6506fbca543b5ae93779a7b04895d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47fc0971c1f4ed059bec4caa2e5d7ab5bec5207a710060924fa292227b86217c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant21184cab2a90d44476e40a920c463267c7e6506fbca543b5ae93779a7b04895d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b02f63a2-55b8-cc84-5567-ff6f30f70142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem boundedRestrictedPair_sum_eq_divisorsAntidiagonal
    (N : ℕ) (n : VaughanScaleIndex N)
    (cut : ℕ → ℕ → Prop) [DecidableRel cut]
    (hcutpos : ∀ m k, cut m k → 0 < m ∧ 0 < k)
    (F : ℕ → ℕ → ℂ) :
    (∑ a : {q : VaughanFactorPair N //
        q.1.1 * q.2.1 ≤ 2 * N ∧ cut q.1.1 q.2.1},
      if a.1.1.1 * a.1.2.1 = n.1 then F a.1.1.1 a.1.2.1 else 0) =
      ∑ q ∈ n.1.divisorsAntidiagonal with cut q.1 q.2, F q.1 q.2 := by
  classical
  let carrier : Finset (VaughanFactorPair N) :=
    Finset.univ.filter fun q =>
      q.1.1 * q.2.1 ≤ 2 * N ∧ cut q.1.1 q.2.1
  let fiber : Finset (VaughanFactorPair N) :=
    carrier.filter fun q => q.1.1 * q.2.1 = n.1
  let divisors : Finset (ℕ × ℕ) :=
    n.1.divisorsAntidiagonal.filter fun q => cut q.1 q.2
  calc
    (∑ a : {q : VaughanFactorPair N //
        q.1.1 * q.2.1 ≤ 2 * N ∧ cut q.1.1 q.2.1},
      if a.1.1.1 * a.1.2.1 = n.1 then F a.1.1.1 a.1.2.1 else 0) =
        ∑ q ∈ carrier,
          if q.1.1 * q.2.1 = n.1 then F q.1.1 q.2.1 else 0 := by
            apply (Finset.sum_subtype carrier ?_ fun q =>
              if q.1.1 * q.2.1 = n.1 then F q.1.1 q.2.1 else 0).symm
            intro q
            simp [carrier]
    _ = ∑ q ∈ fiber, F q.1.1 q.2.1 := by
          exact (Finset.sum_filter (fun q : VaughanFactorPair N =>
            q.1.1 * q.2.1 = n.1) (fun q => F q.1.1 q.2.1)).symm
    _ = ∑ q ∈ divisors, F q.1 q.2 := by
      apply Finset.sum_bij (fun q _ => (q.1.1, q.2.1))
      · intro q hq
        simp only [fiber, carrier, Finset.mem_filter, Finset.mem_univ,
          true_and] at hq
        simp only [divisors, Finset.mem_filter]
        have hpos := hcutpos q.1.1 q.2.1 hq.1.2
        refine ⟨Nat.mem_divisorsAntidiagonal.mpr ⟨hq.2, ?_⟩, hq.1.2⟩
        rw [← hq.2]
        exact ne_of_gt (Nat.mul_pos hpos.1 hpos.2)
      · intro q₁ hq₁ q₂ hq₂ heq
        apply Prod.ext
        · exact Fin.ext (Prod.mk.inj heq).1
        · exact Fin.ext (Prod.mk.inj heq).2
      · intro p hp
        simp only [divisors, Finset.mem_filter] at hp
        have hpn := Nat.mem_divisorsAntidiagonal.mp hp.1
        have hp1le : p.1 < 2 * N + 1 :=
          lt_of_le_of_lt
            (Nat.le_of_dvd (Nat.pos_of_ne_zero hpn.2) ⟨p.2, hpn.1.symm⟩)
            n.2
        have hp2le : p.2 < 2 * N + 1 :=
          lt_of_le_of_lt
            (Nat.le_of_dvd (Nat.pos_of_ne_zero hpn.2)
              ⟨p.1, by simpa [mul_comm] using hpn.1.symm⟩)
            n.2
        let q : VaughanFactorPair N := (⟨p.1, hp1le⟩, ⟨p.2, hp2le⟩)
        have hq : q ∈ fiber := by
          simp only [fiber, carrier, Finset.mem_filter, Finset.mem_univ,
            true_and, q]
          have hnle : n.1 ≤ 2 * N := Nat.le_of_lt_succ n.2
          exact ⟨⟨by simpa [hpn.1] using hnle, hp.2⟩, hpn.1⟩
        exact ⟨q, hq, rfl⟩
      · intro q hq
        rfl
    _ = ∑ q ∈ n.1.divisorsAntidiagonal with cut q.1 q.2,
          F q.1 q.2 := rfl

/-- The effective Type II factor atoms are exactly the divisor pairs
`m * k = n` with `m > U` and `k > U`.  This is a finite reindexing theorem;
it asserts no cancellation estimate. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant21184cab2a90d44476e40a920c463267c7e6506fbca543b5ae93779a7b04895d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant21184cab2a90d44476e40a920c463267c7e6506fbca543b5ae93779a7b04895d.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b9cece1ecfb57b5fb8c515ef953c8cc11820ee4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
