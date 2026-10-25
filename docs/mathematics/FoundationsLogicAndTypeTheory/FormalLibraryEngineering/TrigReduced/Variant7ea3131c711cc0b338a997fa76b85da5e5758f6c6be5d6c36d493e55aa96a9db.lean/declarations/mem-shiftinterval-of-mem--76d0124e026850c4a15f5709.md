# mem_shiftInterval_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4267de62c5262789afc965b531752f72f540144",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65dd0bf1-b5c3-ad84-2ab4-c8e6ef5914f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aefd8f3a-d7f0-ec51-e111-6956d1e54760",
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
  "slug": "mem-shiftinterval-of-mem--76d0124e026850c4a15f5709",
  "source": {
    "blob": "b4267de62c5262789afc965b531752f72f540144",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76d0124e026850c4a15f570908b60640759dd0753bc5ac64596d919e87003e5f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aefd8f3a-d7f0-ec51-e111-6956d1e54760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–168.

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

/-- Convenience form: if x ∈ I, then x - 2πk ∈ (reduceToMainPeriod I).1 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4267de62c5262789afc965b531752f72f540144` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
