# incompatibleDyadicStartBlockL1_le_blockCount_mul_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1db9144f-ecd5-8fe0-0b47-101402bae904",
  "kind": "theorem",
  "lexical_name": "incompatibleDyadicStartBlockL1_le_blockCount_mul_sq",
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
  "slug": "incompatibledyadicstartblockl1-le-blockcount-mul-sq--0c0774d059a6df384e5c103e",
  "source": {
    "blob": "aa5b568f8e02f958ecfeb5e8341b9105a6e2a35e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 22,
    "path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalIncompatibleLinearWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c0774d059a6df384e5c103e1ddd861b4acd09100c247da81fbc1dabf9b32681",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreShortIntervalIncompatibleLinearWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1db9144f-ecd5-8fe0-0b47-101402bae904`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem incompatibleDyadicStartBlockL1_le_blockCount_mul_sq
    (j n : ℕ) :
    incompatibleDyadicStartBlockL1 j n ≤
      (j + 1 : ℝ) * (n : ℝ) ^ 2 := by
  unfold incompatibleDyadicStartBlockL1
  calc
    (∑ r ∈ (Finset.range (j + 1)).filter (fun r => 2 ^ r < n),
      dyadicStartBlockShortIntervalL1 r n) ≤
      ∑ _r ∈ (Finset.range (j + 1)).filter (fun r => 2 ^ r < n),
        (n : ℝ) ^ 2 := by
      apply Finset.sum_le_sum
      intro r hr
      have hrn : 2 ^ r < n := (Finset.mem_filter.mp hr).2
      calc
        dyadicStartBlockShortIntervalL1 r n ≤
            ((2 ^ r : ℕ) : ℝ) * (n : ℝ) :=
          dyadicStartBlockShortIntervalL1_le r n
        _ ≤ (n : ℝ) * (n : ℝ) := by
          apply mul_le_mul_of_nonneg_right
          · exact_mod_cast Nat.le_of_lt hrn
          · positivity
        _ = (n : ℝ) ^ 2 := by ring
    _ ≤ ((Finset.range (j + 1)).card : ℝ) * (n : ℝ) ^ 2 := by
      rw [Finset.sum_const]
      apply mul_le_mul_of_nonneg_right
      · exact_mod_cast Finset.card_filter_le _
      · positivity
    _ = (j + 1 : ℝ) * (n : ℝ) ^ 2 := by simp

/-- One-depth deterministic estimate needed to make the crude incompatible
budget harmless.  This proposition contains no Möbius values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreShortIntervalIncompatibleLinearWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreShortIntervalIncompatibleLinearWitness.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa5b568f8e02f958ecfeb5e8341b9105a6e2a35e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
