# fiber_mass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a49d3790-2443-b1fe-e863-6227076551bc",
  "kind": "theorem",
  "lexical_name": "fiber_mass_le",
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
  "slug": "fiber-mass-le--67b3aad7bf0dc14e84cd0b2d",
  "source": {
    "blob": "6dac989dfd24f1a125653b4dbdb16a9663314610",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 122,
    "path": "GRWTSK/NumberTheory/Chebyshev/HigherPrimePowers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67b3aad7bf0dc14e84cd0b2db492c010d9893b6e42a72bd325f9be4dc8b7daf0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/HigherPrimePowers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a49d3790-2443-b1fe-e863-6227076551bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fiber_mass_le (n k : ℕ) (hk : 2 ≤ k) :
    (∑ p ∈ primePowerBases n k, Real.log p) ≤
      2 * Real.log (n + 1 : ℕ) / (k : ℝ) := by
  have hnonneg : 0 ≤ 2 * Real.log (n + 1 : ℕ) / (k : ℝ) :=
    div_nonneg (mul_nonneg (by norm_num) (Real.log_natCast_nonneg _)) (Nat.cast_nonneg k)
  calc
    _ ≤ ∑ _p ∈ primePowerBases n k, 2 * Real.log (n + 1 : ℕ) / (k : ℝ) := by
      apply Finset.sum_le_sum
      intro p hp
      have h := (Finset.mem_filter.mp hp).2
      exact log_base_le n p k (by omega) h.1.two_le h.2.2
    _ = ((primePowerBases n k).card : ℝ) *
        (2 * Real.log (n + 1 : ℕ) / (k : ℝ)) := by simp
    _ ≤ 1 * (2 * Real.log (n + 1 : ℕ) / (k : ℝ)) :=
      mul_le_mul_of_nonneg_right (by exact_mod_cast primePowerBases_card_le_one n k hk) hnonneg
    _ = _ := one_mul _

/-- Complete nonnegativity retains every occupied exponent and prime weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/HigherPrimePowers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/HigherPrimePowers.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dac989dfd24f1a125653b4dbdb16a9663314610` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
