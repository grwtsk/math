# dyadicPrefixMaximum_sq_le_alignedDyadicCarlesonEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f622d707-faea-30fc-5507-8d0da2ef9bdc",
  "kind": "theorem",
  "lexical_name": "dyadicPrefixMaximum_sq_le_alignedDyadicCarlesonEnergy",
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
  "slug": "dyadicprefixmaximum-sq-le-aligneddyadiccarlesonenergy--e35805888410c9a336e5f2ca",
  "source": {
    "blob": "9419fe18fbf54d5842c11da5176674023e905e00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 366,
    "path": "GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e35805888410c9a336e5f2ca4f54bba9e30bfa90819793a1808849b0175d19a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f622d707-faea-30fc-5507-8d0da2ef9bdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicPrefixMaximum_sq_le_alignedDyadicCarlesonEnergy
    (m : ℕ) (a : ℕ → ℝ) :
    dyadicPrefixMaximum m a ^ 2 ≤
      ((m : ℝ) + 1) * alignedDyadicCarlesonEnergy m a := by
  let B : ℝ := ((m : ℝ) + 1) * alignedDyadicCarlesonEnergy m a
  have hB : 0 ≤ B := by
    dsimp [B]
    exact mul_nonneg (by positivity)
      (alignedDyadicCarlesonEnergy_nonneg m a)
  have hpoint : ∀ N : ℕ, N ≤ 2 ^ m →
      |finitePrefixSum a N| ≤ Real.sqrt B := by
    intro N hN
    have hsquare := finitePrefixSum_sq_le_alignedDyadicCarlesonEnergy
      m a N hN
    have habsSquare :
        |finitePrefixSum a N| ^ 2 ≤ (Real.sqrt B) ^ 2 := by
      rw [sq_abs, Real.sq_sqrt hB]
      simpa [B] using hsquare
    exact (sq_le_sq₀ (abs_nonneg _) (Real.sqrt_nonneg _)).mp habsSquare
  have hmax : dyadicPrefixMaximum m a ≤ Real.sqrt B := by
    exact (partialSups_le_iff).2 hpoint
  have hmaxNonneg : 0 ≤ dyadicPrefixMaximum m a := by
    have hzero := le_partialSups_of_le
      (fun N : ℕ => |finitePrefixSum a N|)
      (Nat.zero_le (2 ^ m))
    exact (abs_nonneg (finitePrefixSum a 0)).trans hzero
  have hmaxSquare :
      dyadicPrefixMaximum m a ^ 2 ≤ (Real.sqrt B) ^ 2 :=
    (sq_le_sq₀ hmaxNonneg (Real.sqrt_nonneg _)).2 hmax
  rw [Real.sq_sqrt hB] at hmaxSquare
  simpa [B] using hmaxSquare

/-- At scale zero, a pointwise coefficient bound controls the complete scale
maximum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9419fe18fbf54d5842c11da5176674023e905e00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
