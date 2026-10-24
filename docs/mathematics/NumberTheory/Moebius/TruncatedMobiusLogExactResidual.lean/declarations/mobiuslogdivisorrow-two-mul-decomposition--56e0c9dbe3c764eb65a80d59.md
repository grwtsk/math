# mobiusLogDivisorRow_two_mul_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b904426-4223-d213-912e-8a7aa5047f9a",
  "kind": "theorem",
  "lexical_name": "mobiusLogDivisorRow_two_mul_decomposition",
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
  "slug": "mobiuslogdivisorrow-two-mul-decomposition--56e0c9dbe3c764eb65a80d59",
  "source": {
    "blob": "89de762b0aa827786e1874f4d33d338eae618b5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 20,
    "path": "GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogExactResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56e0c9dbe3c764eb65a80d59ef0469ea6664f7ab39078e55e3e53ad90f1cdcaa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TruncatedMobiusLogExactResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b904426-4223-d213-912e-8a7aa5047f9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobiusLogDivisorRow_two_mul_decomposition
    (a : ℕ → ℝ) {d : ℕ} (hd : 1 ≤ d) :
    mobiusLogDivisorRow a (2 * d) =
      (∑ r ∈ (2 * d).divisors.filter (fun r => r < d),
        a r * Real.log ((2 * d) / r : ℕ)) +
      a d * Real.log 2 := by
  unfold mobiusLogDivisorRow
  classical
  calc
    (∑ r ∈ (2 * d).divisors,
      a r * Real.log ((2 * d) / r : ℕ)) =
      (∑ r ∈ (2 * d).divisors.filter (fun r => r < d),
        a r * Real.log ((2 * d) / r : ℕ)) +
      ∑ r ∈ (2 * d).divisors.filter (fun r => ¬ r < d),
        a r * Real.log ((2 * d) / r : ℕ) := by
          exact (Finset.sum_filter_add_sum_filter_not
            (2 * d).divisors (fun r => r < d)
            (fun r => a r * Real.log ((2 * d) / r : ℕ))).symm
    _ = (∑ r ∈ (2 * d).divisors.filter (fun r => r < d),
        a r * Real.log ((2 * d) / r : ℕ)) +
      a d * Real.log 2 := by
        congr 1
        rw [Finset.sum_eq_single d]
        · rw [Nat.mul_div_cancel 2 (by omega : 0 < d)]
          norm_num
        · intro r hr hrne
          have hrmem := (Finset.mem_filter.mp hr).1
          have hrnotlt := (Finset.mem_filter.mp hr).2
          have hrdvd : r ∣ 2 * d := Nat.dvd_of_mem_divisors hrmem
          by_cases hr2d : r = 2 * d
          · subst r
            simp
          · have hrlt : r < d :=
              divisor_two_mul_lt_of_ne hd hrdvd hr2d hrne
            exact (hrnotlt hrlt).elim
        · intro hdnot
          exfalso
          apply hdnot
          exact Finset.mem_filter.mpr
            ⟨Nat.mem_divisors.mpr ⟨⟨2, Nat.mul_comm 2 d⟩, by omega⟩,
              by omega⟩

/-- Unconditional reconstruction residual: subtract the actual lower-divisor
sum from row 2d and exactly obtain a(d)*log 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TruncatedMobiusLogExactResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogExactResidual.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89de762b0aa827786e1874f4d33d338eae618b5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
