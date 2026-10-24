# topBlock_sq_add_shiftedProperEnergy_le_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c180807e-e96d-8479-c2a7-4eaac8a1cb74",
  "kind": "theorem",
  "lexical_name": "topBlock_sq_add_shiftedProperEnergy_le_succ",
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
  "slug": "topblock-sq-add-shiftedproperenergy-le-succ--269db4074b31a675cf710b6e",
  "source": {
    "blob": "9419fe18fbf54d5842c11da5176674023e905e00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 168,
    "path": "GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:269db4074b31a675cf710b6e16de80752691f185d123d98fb0b84438aaf79673",
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

Occurrence: `result:c180807e-e96d-8479-c2a7-4eaac8a1cb74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem topBlock_sq_add_shiftedProperEnergy_le_succ
    (m : ℕ) (a : ℕ → ℝ) :
    finitePrefixSum a (2 ^ m) ^ 2 +
        alignedDyadicProperCarlesonEnergy m
          (shiftedSequence a (2 ^ m)) ≤
      alignedDyadicProperCarlesonEnergy (m + 1) a := by
  have htopAbs :
      |alignedDyadicBlockSum a m 0| ≤
        alignedDyadicScaleMaximum (m + 1) m a :=
    abs_alignedDyadicBlockSum_le_scaleMaximum
      (m + 1) m a (q := 0) (by simp)
  have htop :
      finitePrefixSum a (2 ^ m) ^ 2 ≤
        alignedDyadicScaleMaximum (m + 1) m a ^ 2 := by
    have hs := (sq_le_sq₀
      (abs_nonneg (alignedDyadicBlockSum a m 0))
      (alignedDyadicScaleMaximum_nonneg (m + 1) m a)).2 htopAbs
    simpa [sq_abs] using hs
  have hright :
      alignedDyadicProperCarlesonEnergy m
          (shiftedSequence a (2 ^ m)) ≤
        ∑ r ∈ Finset.range m,
          alignedDyadicScaleMaximum (m + 1) r a ^ 2 := by
    unfold alignedDyadicProperCarlesonEnergy
    apply Finset.sum_le_sum
    intro r hrange
    have hr : r ≤ m := Nat.le_of_lt (Finset.mem_range.mp hrange)
    exact (sq_le_sq₀
      (alignedDyadicScaleMaximum_nonneg m r
        (shiftedSequence a (2 ^ m)))
      (alignedDyadicScaleMaximum_nonneg (m + 1) r a)).2
        (alignedDyadicScaleMaximum_shifted_half_le_succ m r a hr)
  calc
    finitePrefixSum a (2 ^ m) ^ 2 +
        alignedDyadicProperCarlesonEnergy m
          (shiftedSequence a (2 ^ m)) ≤
      alignedDyadicScaleMaximum (m + 1) m a ^ 2 +
        ∑ r ∈ Finset.range m,
          alignedDyadicScaleMaximum (m + 1) r a ^ 2 :=
      add_le_add htop hright
    _ = (∑ r ∈ Finset.range m,
          alignedDyadicScaleMaximum (m + 1) r a ^ 2) +
        alignedDyadicScaleMaximum (m + 1) m a ^ 2 := by ring
    _ = alignedDyadicProperCarlesonEnergy (m + 1) a := by
      simp [alignedDyadicProperCarlesonEnergy,
        Finset.sum_range_succ]

/-- Weighted two-term Cauchy inequality, including the zero-weight base case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9419fe18fbf54d5842c11da5176674023e905e00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
