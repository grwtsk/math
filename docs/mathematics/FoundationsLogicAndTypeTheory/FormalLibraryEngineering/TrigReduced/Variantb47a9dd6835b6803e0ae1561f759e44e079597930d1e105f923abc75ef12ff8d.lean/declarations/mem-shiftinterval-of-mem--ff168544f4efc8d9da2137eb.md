# mem_shiftInterval_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74aa39fd-485c-56a9-807a-5bb16b8111e8",
  "kind": "theorem",
  "lexical_name": "mem_shiftInterval_of_mem",
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
  "slug": "mem-shiftinterval-of-mem--ff168544f4efc8d9da2137eb",
  "source": {
    "blob": "3785ac7b91052d3e1fdb970df5adb3380ea4d711",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff168544f4efc8d9da2137ebb1c1794dd76060fdd06a1b91cde4780ad38e2652",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74aa39fd-485c-56a9-807a-5bb16b8111e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_shiftInterval_of_mem {x : ℝ} {I : IntervalRat} {k : ℤ}
    (hx : x ∈ I) : x - 2 * Real.pi * k ∈ shiftInterval I k := by
  simp only [IntervalRat.mem_def] at hx ⊢
  unfold shiftInterval
  split_ifs with hk
  · -- k ≥ 0 case
    constructor
    · -- x - 2πk ≥ I.lo - k * twoPiRatHi
      have h1 : (I.lo : ℝ) ≤ x := hx.1
      have h2 : 2 * Real.pi ≤ (twoPiRatHi : ℝ) := le_of_lt two_pi_lt_twoPiRatHi
      have hk_cast : (0 : ℝ) ≤ k := Int.cast_nonneg hk
      have h3 : 2 * Real.pi * k ≤ (twoPiRatHi : ℝ) * k :=
        mul_le_mul_of_nonneg_right h2 hk_cast
      simp only [Rat.cast_sub, Rat.cast_mul, Rat.cast_intCast]
      linarith
    · -- x - 2πk ≤ I.hi - k * twoPiRatLo
      have h1 : x ≤ (I.hi : ℝ) := hx.2
      have h2 : (twoPiRatLo : ℝ) ≤ 2 * Real.pi := le_of_lt twoPiRatLo_lt_two_pi
      have hk_cast : (0 : ℝ) ≤ k := Int.cast_nonneg hk
      have h3 : (twoPiRatLo : ℝ) * k ≤ 2 * Real.pi * k :=
        mul_le_mul_of_nonneg_right h2 hk_cast
      simp only [Rat.cast_sub, Rat.cast_mul, Rat.cast_intCast]
      linarith
  · -- k < 0 case
    have hkneg : k < 0 := Int.not_le.mp hk
    have hk_cast : (k : ℝ) ≤ 0 := Int.cast_nonpos.mpr (le_of_lt hkneg)
    constructor
    · -- x - 2πk ≥ I.lo - k * twoPiRatLo
      have h1 : (I.lo : ℝ) ≤ x := hx.1
      have h2 : (twoPiRatLo : ℝ) ≤ 2 * Real.pi := le_of_lt twoPiRatLo_lt_two_pi
      -- k < 0 and twoPiRatLo ≤ 2π, so k * 2π ≤ k * twoPiRatLo
      have h3 : (k : ℝ) * (2 * Real.pi) ≤ k * twoPiRatLo :=
        mul_le_mul_of_nonpos_left h2 hk_cast
      simp only [Rat.cast_sub, Rat.cast_mul, Rat.cast_intCast]
      linarith
    · -- x - 2πk ≤ I.hi - k * twoPiRatHi
      have h1 : x ≤ (I.hi : ℝ) := hx.2
      have h2 : 2 * Real.pi ≤ (twoPiRatHi : ℝ) := le_of_lt two_pi_lt_twoPiRatHi
      -- k < 0 and 2π ≤ twoPiRatHi, so k * twoPiRatHi ≤ k * 2π
      have h3 : (k : ℝ) * twoPiRatHi ≤ k * (2 * Real.pi) :=
        mul_le_mul_of_nonpos_left h2 hk_cast
      simp only [Rat.cast_sub, Rat.cast_mul, Rat.cast_intCast]
      linarith

/-! ### Computable reduced evaluation -/

/-- Computable sin evaluation with range reduction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variantb47a9dd6835b6803e0ae1561f759e44e079597930d1e105f923abc75ef12ff8d.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3785ac7b91052d3e1fdb970df5adb3380ea4d711` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
