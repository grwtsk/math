# harmonicPrimeMass_log_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a9f7389-069a-5357-273a-8a713f7d523a",
  "kind": "theorem",
  "lexical_name": "harmonicPrimeMass_log_bound",
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
  "slug": "harmonicprimemass-log-bound--84cacbe15d2be6daaacd3a78",
  "source": {
    "blob": "4f20f7dc568798f47a70048e03ffdd4723f2b550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 136,
    "path": "GRWTSK/NumberTheory/Prime/ReciprocalMass.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84cacbe15d2be6daaacd3a7872972991760ad747fdf1e9f7ec371e7fa463bad8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/ReciprocalMass.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a9f7389-069a-5357-273a-8a713f7d523a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonicPrimeMass_log_bound {T : ℝ} (hT : 0 ≤ T) :
    harmonicPrimeMass (pickupPrimes T) ≤
      log 4 * ((log 2)⁻¹ + |log (log 2)|) + log 4 * log (1 + T) := by
  have hl4 : 0 ≤ log (4 : ℝ) := log_nonneg (by norm_num)
  by_cases hsmall : Real.exp T < 2
  · have hempty : pickupPrimes T = ∅ := by
      apply Finset.eq_empty_iff_forall_notMem.mpr
      intro p hp
      have hp' := Finset.mem_filter.mp hp
      have hle := (Nat.le_floor_iff (exp_pos T).le).mp (Finset.mem_Icc.mp hp'.1).2
      have ht : (2 : ℝ) ≤ p := by exact_mod_cast hp'.2.two_le
      linarith
    rw [hempty]
    simp only [harmonicPrimeMass, Finset.sum_empty]
    have : 0 ≤ log (1 + T) := log_nonneg (by linarith)
    positivity
  · have hx : 2 ≤ exp T := le_of_not_gt hsmall
    have htpos : 0 < T := by
      have := (log_le_log (by norm_num) hx)
      rw [log_exp] at this
      exact lt_of_lt_of_le (log_pos (by norm_num : (1 : ℝ) < 2)) this
    have hsets : pickupPrimes T = (Finset.Icc 0 ⌊exp T⌋₊).filter Nat.Prime := by
      ext p
      simp only [pickupPrimes, Finset.mem_filter, Finset.mem_Icc]
      constructor
      · intro h; exact ⟨⟨Nat.zero_le _, h.1.2⟩, h.2⟩
      · intro h; exact ⟨⟨h.2.one_le, h.1.2⟩, h.2⟩
    have hb := prime_mass_bound hx
    rw [← hsets, log_exp] at hb
    change harmonicPrimeMass (pickupPrimes T) ≤ _ at hb
    have hlog : log T ≤ log (1 + T) := log_le_log htpos (by linarith)
    have habs := neg_le_abs (log (log (2 : ℝ)))
    nlinarith

end GRWTSK.RiemannHypothesis.CCC
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/ReciprocalMass.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Prime/ReciprocalMass.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f20f7dc568798f47a70048e03ffdd4723f2b550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
