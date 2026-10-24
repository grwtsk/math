# uniform_grouped_cap_bounds_every_real_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74388848-3657-0545-ccdb-9ec462307aef",
  "kind": "theorem",
  "lexical_name": "uniform_grouped_cap_bounds_every_real_prefix",
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
  "slug": "uniform-grouped-cap-bounds-every-real-prefix--90f717819a0f6136aa48c723",
  "source": {
    "blob": "5553864c89e1147df3feab13a677800a8a02baf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedRootConsumer/Variant10f3c55772c837f6ccd27f811dccfdd23cfc8dfeceb80f1f7fe7acb2c7080d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90f717819a0f6136aa48c7239bb6b5e7287e8cf79ba425153a58facad18f903e",
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

Occurrence: `result:74388848-3657-0545-ccdb-9ec462307aef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_grouped_cap_bounds_every_real_prefix {N : ℕ} (hN : 1 ≤ N)
    {E : ℝ} (hE : 0 ≤ E) (κ : ℕ → Type*) [∀ K, Fintype (κ K)]
    [∀ K, DecidableEq (κ K)] (label : (K : ℕ) → Fin K → κ K)
    (hs : ∀ K, 0 < K → Function.Surjective (label K))
    (hcap : ∀ K, 0 < K → groupedEnergy (label K)
      (fun j ↦ cellClock (N + j.val) (N + j.val + 1 : ℕ))
      (fun j ↦ NativeSuperlevelConsumer.storage N j.val *
        cellClock (N + j.val) (N + j.val + 1 : ℕ)) ≤ E) :
    Summable (primeRecordIncrement N) ∧ ∀ x : ℝ, (N : ℝ) ≤ x →
      ordinaryPrimePrimitive x - ordinaryPrimePrimitive N ≤ Real.sqrt ((2 / Real.sqrt N) * E) := by
  have hB : 0 ≤ (2 / Real.sqrt N) * E := mul_nonneg (by positivity) hE
  have hint : ∀ K : ℕ, ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N ≤
      Real.sqrt ((2 / Real.sqrt N) * E) := by
    intro K
    by_cases hK : K = 0
    · simp [hK, Real.sqrt_nonneg]
    · have hp : 0 < K := Nat.pos_of_ne_zero hK
      have h := (actual_compressed_energy_pays_primitive hN hp (label K) (hs K hp)).trans
        (mul_le_mul_of_nonneg_left (hcap K hp) (by positivity : 0 ≤ 2 / Real.sqrt N))
      nlinarith [Real.sq_sqrt hB, Real.sqrt_nonneg ((2 / Real.sqrt N) * E)]
  have hreal := NativeCellBound.actual_integer_upper_implies_all_real hN hint
  exact ⟨(NativeCellBound.record_summable_iff_all_real_prefixes_bounded hN).mpr
    ⟨_, Real.sqrt_nonneg _, hreal⟩, hreal⟩

end
end GRWTSK.RiemannHypothesis.Conversation.GroupedRootConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedRootConsumer/Variant10f3c55772c837f6ccd27f811dccfdd23cfc8dfeceb80f1f7fe7acb2c7080d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedRootConsumer/Variant10f3c55772c837f6ccd27f811dccfdd23cfc8dfeceb80f1f7fe7acb2c7080d74.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5553864c89e1147df3feab13a677800a8a02baf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
