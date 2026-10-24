# exists_primitive_lcm_of_isPrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9af4b88-fc60-5f3d-dc32-19aaff09da30",
  "kind": "theorem",
  "lexical_name": "exists_primitive_lcm_of_isPrimitive",
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
  "slug": "exists-primitive-lcm-of-isprimitive--4cbfd0e70a1bb74e28432c80",
  "source": {
    "blob": "8cb7485b26acfec79834e9ff258359d3eb1ab6e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 413,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variant113eeeacc3a8644c06c11b5a0e28df00dcc0a007874a4cc40313bdc3a4ae1ff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cbfd0e70a1bb74e28432c80b58b94c3ccc2a8b1352d0eefaceed36f9159a6d1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Content/Variant113eeeacc3a8644c06c11b5a0e28df00dcc0a007874a4cc40313bdc3a4ae1ff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9af4b88-fc60-5f3d-dc32-19aaff09da30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_primitive_lcm_of_isPrimitive {p q : R[X]} (hp : p.IsPrimitive) (hq : q.IsPrimitive) :
    ∃ r : R[X], r.IsPrimitive ∧ ∀ s : R[X], p ∣ s ∧ q ∣ s ↔ r ∣ s := by
  classical
    have h : ∃ (n : ℕ) (r : R[X]), r.natDegree = n ∧ r.IsPrimitive ∧ p ∣ r ∧ q ∣ r :=
      ⟨(p * q).natDegree, p * q, rfl, hp.mul hq, dvd_mul_right _ _, dvd_mul_left _ _⟩
    rcases Nat.find_spec h with ⟨r, rdeg, rprim, pr, qr⟩
    refine ⟨r, rprim, fun s => ⟨?_, fun rs => ⟨pr.trans rs, qr.trans rs⟩⟩⟩
    suffices hs : ∀ (n : ℕ) (s : R[X]), s.natDegree = n → p ∣ s ∧ q ∣ s → r ∣ s from
      hs s.natDegree s rfl
    clear s
    by_contra! con
    rcases Nat.find_spec con with ⟨s, sdeg, ⟨ps, qs⟩, rs⟩
    have s0 : s ≠ 0 := by
      contrapose rs
      simp [rs]
    have hs :=
      Nat.find_min' h
        ⟨_, s.natDegree_primPart, s.isPrimitive_primPart, (hp.dvd_primPart_iff_dvd s0).2 ps,
          (hq.dvd_primPart_iff_dvd s0).2 qs⟩
    rw [← rdeg] at hs
    by_cases! sC : s.natDegree ≤ 0
    · rw [eq_C_of_natDegree_le_zero (le_trans hs sC), isPrimitive_iff_content_eq_one, content_C,
        normalize_eq_one] at rprim
      rw [eq_C_of_natDegree_le_zero (le_trans hs sC), ← dvd_content_iff_C_dvd] at rs
      apply rs rprim.dvd
    have hcancel := natDegree_cancelLeads_lt_of_natDegree_le_natDegree hs sC
    rw [sdeg] at hcancel
    apply Nat.find_min con hcancel
    refine
      ⟨_, rfl, ⟨dvd_cancelLeads_of_dvd_of_dvd pr ps, dvd_cancelLeads_of_dvd_of_dvd qr qs⟩,
        fun rcs => rs ?_⟩
    rw [← rprim.dvd_primPart_iff_dvd s0]
    rw [cancelLeads, tsub_eq_zero_iff_le.mpr hs, pow_zero, mul_one] at rcs
    have h :=
      dvd_add rcs (Dvd.intro_left (C (leadingCoeff s) * X ^ (natDegree s - natDegree r)) rfl)
    nontriviality R
    have hC0 := rprim.ne_zero
    rw [Ne, ← leadingCoeff_eq_zero, ← C_eq_zero] at hC0
    rw [sub_add_cancel, ← rprim.dvd_primPart_iff_dvd (mul_ne_zero hC0 s0)] at h
    refine h.trans (Associated.dvd ?_)
    grw [associated_primPart_mul (mul_ne_zero hC0 s0)]
    exact associated_unit_mul_left _ _ (isUnit_primPart_C _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Content/Variant113eeeacc3a8644c06c11b5a0e28df00dcc0a007874a4cc40313bdc3a4ae1ff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Content/Variant113eeeacc3a8644c06c11b5a0e28df00dcc0a007874a4cc40313bdc3a4ae1ff6.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cb7485b26acfec79834e9ff258359d3eb1ab6e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
