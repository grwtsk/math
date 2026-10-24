# exists_dyadic_bertrandPrime_log_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f530234-b441-7157-2355-8ad6776bc5e4",
  "kind": "theorem",
  "lexical_name": "exists_dyadic_bertrandPrime_log_gt",
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
  "slug": "exists-dyadic-bertrandprime-log-gt--65ae7655091aa8ba4d42cdcb",
  "source": {
    "blob": "b7bc717e32b7cdfaff56d5258e6c98093ed9f9ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65ae7655091aa8ba4d42cdcb8ab9a4cb91cc7dd69f20d1172d445c7ac1e76dfe",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f530234-b441-7157-2355-8ad6776bc5e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_dyadic_bertrandPrime_log_gt
    (B : ℝ) (j₀ : ℕ) :
    ∃ j : ℕ, j₀ ≤ j ∧
      ∃ p : ℕ, p.Prime ∧
        2 * dyadicScale j < p ∧
        p ≤ 4 * dyadicScale j ∧
        B < Real.log (p : ℝ) := by
  have hlog2 : (0 : ℝ) < Real.log 2 :=
    Real.log_pos (by norm_num)
  obtain ⟨j, hj⟩ :=
    exists_nat_gt (max (j₀ : ℝ) (B / Real.log 2))
  have hj₀real : (j₀ : ℝ) < (j : ℝ) :=
    (le_max_left _ _).trans_lt hj
  have hj₀ : j₀ ≤ j := by
    exact_mod_cast (le_of_lt hj₀real)
  have hjquot : B / Real.log 2 < (j : ℝ) :=
    (le_max_right _ _).trans_lt hj
  have hB : B < (j : ℝ) * Real.log 2 :=
    (div_lt_iff₀ hlog2).mp hjquot
  have hlarge :
      B < Real.log (((2 * dyadicScale j : ℕ) : ℝ)) := by
    rw [log_two_mul_dyadicScale]
    nlinarith [hlog2]
  have hbase : 2 * dyadicScale j ≠ 0 := by
    have hpos := dyadicScale_pos j
    omega
  obtain ⟨p, hp, hleft, hright⟩ :=
    Nat.exists_prime_lt_and_le_two_mul
      (2 * dyadicScale j) hbase
  have hright' : p ≤ 4 * dyadicScale j := by
    omega
  have hleftPos :
      (0 : ℝ) < (((2 * dyadicScale j : ℕ) : ℝ)) := by
    exact_mod_cast (Nat.pos_of_ne_zero hbase)
  have hleftReal :
      (((2 * dyadicScale j : ℕ) : ℝ)) ≤ (p : ℝ) := by
    exact_mod_cast (Nat.le_of_lt hleft)
  have hlogp :
      B < Real.log (p : ℝ) :=
    hlarge.trans_le (Real.log_le_log hleftPos hleftReal)
  exact ⟨j, hj₀, p, hp, hleft, hright', hlogp⟩

/-- Discharge the parent's precise prime-jump source interface with
no zero-density, PNT, or RH premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7bc717e32b7cdfaff56d5258e6c98093ed9f9ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
