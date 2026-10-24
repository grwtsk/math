# appr_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e8c5bffb7d64576fd64ffe8636ca79f37af2dbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:adf97f8a-761b-b625-002b-f086cb086eb2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf815589-9d38-b3a8-d950-8b74a9f5dc76",
  "kind": "theorem",
  "lexical_name": "appr_spec",
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
  "slug": "appr-spec--ca5516aaacb1e7dbae038d35",
  "source": {
    "blob": "1e8c5bffb7d64576fd64ffe8636ca79f37af2dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 350,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca5516aaacb1e7dbae038d35c36e9e02f2e630fc8cf5ce6c22f966309b7ca297",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf815589-9d38-b3a8-d950-8b74a9f5dc76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem appr_spec (n : ℕ) : ∀ x : ℤ_[p], x - appr x n ∈ Ideal.span {(p : ℤ_[p]) ^ n} := by
  simp only [Ideal.mem_span_singleton]
  induction' n with n ih
  · simp only [zero_eq, _root_.pow_zero, isUnit_one, IsUnit.dvd, forall_const]
  intro x
  dsimp only [appr]
  split_ifs with h
  · rw [h]
    apply dvd_zero
  push_cast
  rw [sub_add_eq_sub_sub]
  obtain ⟨c, hc⟩ := ih x
  simp only [map_natCast, ZMod.nat_cast_self, RingHom.map_pow, RingHom.map_mul, ZMod.nat_cast_val]
  have hc' : c ≠ 0 := by
    rintro rfl
    simp only [mul_zero] at hc
    contradiction
  conv_rhs =>
    congr
    simp only [hc]
  rw [show (x - (appr x n : ℤ_[p])).valuation = ((p : ℤ_[p]) ^ n * c).valuation by rw [hc]]
  rw [valuation_p_pow_mul _ _ hc', add_sub_cancel', _root_.pow_succ', ← mul_sub]
  apply mul_dvd_mul_left
  obtain hc0 | hc0 := c.valuation.natAbs.eq_zero_or_pos
  · simp only [hc0, mul_one, _root_.pow_zero]
    rw [mul_comm, unitCoeff_spec h] at hc
    suffices c = unitCoeff h by
      rw [← this, ← Ideal.mem_span_singleton, ← maximalIdeal_eq_span_p]
      apply toZMod_spec
    obtain ⟨c, rfl⟩ : IsUnit c := by
      -- TODO: write a `CanLift` instance for units
      rw [Int.natAbs_eq_zero] at hc0
      rw [isUnit_iff, norm_eq_pow_val hc', hc0, neg_zero, zpow_zero]
    rw [DiscreteValuationRing.unit_mul_pow_congr_unit _ _ _ _ _ hc]
    exact irreducible_p
  · rw [zero_pow hc0]
    simp only [sub_zero, ZMod.cast_zero, mul_zero]
    rw [unitCoeff_spec hc']
    exact (dvd_pow_self (p : ℤ_[p]) hc0.ne').mul_left _
#align padic_int.appr_spec PadicInt.appr_spec

/-- A ring hom from `ℤ_[p]` to `ZMod (p^n)`, with underlying function `PadicInt.appr n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/RingHoms/Variant93ea17f628b2bc8e4af8ff25ec38e5d140824d949b6346ad4638181abd961dcf.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e8c5bffb7d64576fd64ffe8636ca79f37af2dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
