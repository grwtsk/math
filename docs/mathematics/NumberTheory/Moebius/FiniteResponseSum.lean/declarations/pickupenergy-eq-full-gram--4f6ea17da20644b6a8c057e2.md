# pickupEnergy_eq_full_gram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d53c557a-191f-6684-c29e-1216c0d9de2b",
  "kind": "theorem",
  "lexical_name": "pickupEnergy_eq_full_gram",
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
  "slug": "pickupenergy-eq-full-gram--4f6ea17da20644b6a8c057e2",
  "source": {
    "blob": "5e6c4b01e48f5cf6e779023aac9098fc0801127d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 241,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f6ea17da20644b6a8c057e2a124600182cc40d3fad95fb091ec002c90b65b80",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteResponseSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d53c557a-191f-6684-c29e-1216c0d9de2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupEnergy_eq_full_gram {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T = pickupFullGram T := by
  let S := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hprod (m : ℕ) (hm : m ∈ S) (n : ℕ) (hn : n ∈ S) :
      Continuous (fun u => moebiusReal m * moebiusReal n *
        (pickupResponse m u * pickupResponse n u)) := by
    exact continuous_const.mul ((pickupResponse_continuous (Finset.mem_Icc.mp hm).1).mul
      (pickupResponse_continuous (Finset.mem_Icc.mp hn).1))
  unfold pickupEnergy
  calc
    _ = ∫ u in (0 : ℝ)..T, ∑ m ∈ S, ∑ n ∈ S,
        moebiusReal m * moebiusReal n * (pickupResponse m u * pickupResponse n u) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hT] at hu
      change wholePickup u ^ 2 = ∑ m ∈ S, ∑ n ∈ S,
        moebiusReal m * moebiusReal n * (pickupResponse m u * pickupResponse n u)
      rw [wholePickup_fixed_inventory hu.1 hu.2, pow_two, Finset.sum_mul_sum]
      apply Finset.sum_congr rfl
      intro m _
      apply Finset.sum_congr rfl
      intro n _
      ring
    _ = pickupFullGram T := by
      rw [intervalIntegral.integral_finsetSum]
      · unfold pickupFullGram pickupResponseGram
        apply Finset.sum_congr rfl
        intro m hm
        rw [intervalIntegral.integral_finsetSum]
        · apply Finset.sum_congr rfl
          intro n _
          exact intervalIntegral.integral_const_mul _ _
        · intro n hn
          exact (hprod m hm n hn).intervalIntegrable 0 T
      · intro m hm
        exact (continuous_finsetSum S (fun n hn => hprod m hm n hn)).intervalIntegrable 0 T

/-- P00's exact energy identity for the actual source and ordered cross terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteResponseSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e6c4b01e48f5cf6e779023aac9098fc0801127d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
