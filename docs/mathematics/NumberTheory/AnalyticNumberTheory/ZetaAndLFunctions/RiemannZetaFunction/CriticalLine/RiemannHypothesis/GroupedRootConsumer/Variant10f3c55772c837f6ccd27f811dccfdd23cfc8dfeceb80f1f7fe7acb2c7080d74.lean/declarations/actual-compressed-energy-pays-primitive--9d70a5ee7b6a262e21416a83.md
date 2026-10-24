# actual_compressed_energy_pays_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:841b149e-2fbb-2bad-82ed-ddd582b48567",
  "kind": "theorem",
  "lexical_name": "actual_compressed_energy_pays_primitive",
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
  "slug": "actual-compressed-energy-pays-primitive--9d70a5ee7b6a262e21416a83",
  "source": {
    "blob": "5553864c89e1147df3feab13a677800a8a02baf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedRootConsumer/Variant10f3c55772c837f6ccd27f811dccfdd23cfc8dfeceb80f1f7fe7acb2c7080d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d70a5ee7b6a262e21416a838bd1ba0a58608d9941ef480c212601f456cd4d55",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedRootConsumer/Variant10f3c55772c837f6ccd27f811dccfdd23cfc8dfeceb80f1f7fe7acb2c7080d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:841b149e-2fbb-2bad-82ed-ddd582b48567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_compressed_energy_pays_primitive {κ : Type*} [Fintype κ] [DecidableEq κ]
    {N K : ℕ} (hN : 1 ≤ N) (hK : 0 < K) (label : Fin K → κ)
    (hs : Function.Surjective label) :
    (ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N) ^ 2 ≤
      (2 / Real.sqrt N) * groupedEnergy label
        (fun j ↦ cellClock (N + j.val) (N + j.val + 1 : ℕ))
        (fun j ↦ NativeSuperlevelConsumer.storage N j.val *
          cellClock (N + j.val) (N + j.val + 1 : ℕ)) := by
  let w : Fin K → ℝ := fun j ↦ cellClock (N + j.val) (N + j.val + 1 : ℕ)
  let v : Fin K → ℝ := fun j ↦ NativeSuperlevelConsumer.storage N j.val * w j
  have hw : ∀ j, 0 < w j := fun j ↦ cellClock_pos (by omega)
  have hn : (Finset.univ : Finset (Fin K)).Nonempty := ⟨⟨0,hK⟩, Finset.mem_univ _⟩
  have hW : 0 < ∑ j, w j := Finset.sum_pos (fun j _ ↦ hw j) hn
  have h := grouped_energy_retains_root label hs w v hw hW.ne'
  have hv : (∑ j, v j) = ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N := by
    rw [← complete_grouping_retains_total label v]
    exact actual_native_grouping_retains_primitive hN K label
  have hwidth : (∑ j, w j) ≤ 2 / Real.sqrt N := by
    change (∑ j : Fin K, cellClock (N + j.val) (N + j.val + 1 : ℕ)) ≤ _
    rw [Fin.sum_univ_eq_sum_range (fun j : ℕ ↦ cellClock (N + j) (N + j + 1 : ℕ)),
      native_width_telescope]
    have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + K : ℕ) := by positivity
    rw [show (2 : ℝ) / Real.sqrt N = 2 * (1 / Real.sqrt N) by ring]
    linarith
  have hE : 0 ≤ groupedEnergy label w v := by
    unfold groupedEnergy
    apply Finset.sum_nonneg
    intro k _
    exact div_nonneg (sq_nonneg _) (surjective_grouping_positive_width label hs w hw k).le
  have hroot := (div_le_iff₀ hW).mp h
  rw [hv] at hroot
  exact hroot.trans (by simpa [w, v, mul_comm] using mul_le_mul_of_nonneg_left hwidth hE)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedRootConsumer/Variant10f3c55772c837f6ccd27f811dccfdd23cfc8dfeceb80f1f7fe7acb2c7080d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedRootConsumer/Variant10f3c55772c837f6ccd27f811dccfdd23cfc8dfeceb80f1f7fe7acb2c7080d74.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5553864c89e1147df3feab13a677800a8a02baf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
