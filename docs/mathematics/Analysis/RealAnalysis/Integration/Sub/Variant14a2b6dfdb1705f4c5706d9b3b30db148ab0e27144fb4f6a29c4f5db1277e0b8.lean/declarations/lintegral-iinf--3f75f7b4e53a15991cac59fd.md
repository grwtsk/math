# lintegral_iInf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d8e76541bd486034955db2673d8981954523e58",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65b23ce3-e194-c804-b09d-24f5a11e69d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a3f92d1-ecef-ac7c-bb8b-becaf11c4817",
  "kind": "theorem",
  "lexical_name": "lintegral_iInf'",
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
  "slug": "lintegral-iinf--3f75f7b4e53a15991cac59fd",
  "source": {
    "blob": "8d8e76541bd486034955db2673d8981954523e58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f75f7b4e53a15991cac59fd193f2840684ef37b52f49827ab12f895696337c4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a3f92d1-ecef-ac7c-bb8b-becaf11c4817`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_iInf' {f : ℕ → α → ℝ≥0∞} (h_meas : ∀ n, AEMeasurable (f n) μ)
    (h_anti : ∀ᵐ a ∂μ, Antitone (fun i ↦ f i a)) (h_fin : ∫⁻ a, f 0 a ∂μ ≠ ∞) :
    ∫⁻ a, ⨅ n, f n a ∂μ = ⨅ n, ∫⁻ a, f n a ∂μ := by
  simp_rw [← iInf_apply]
  let p : α → (ℕ → ℝ≥0∞) → Prop := fun _ f' => Antitone f'
  have hp : ∀ᵐ x ∂μ, p x fun i => f i x := h_anti
  have h_ae_seq_mono : Antitone (aeSeq h_meas p) := by
    intro n m hnm x
    by_cases hx : x ∈ aeSeqSet h_meas p
    · exact aeSeq.prop_of_mem_aeSeqSet h_meas hx hnm
    · simp only [aeSeq, hx, if_false]
      exact le_rfl
  rw [lintegral_congr_ae (aeSeq.iInf h_meas hp).symm]
  simp_rw [iInf_apply]
  rw [lintegral_iInf (aeSeq.measurable h_meas p) h_ae_seq_mono]
  · congr
    exact funext fun n ↦ lintegral_congr_ae (aeSeq.aeSeq_n_eq_fun_n_ae h_meas hp n)
  · rwa [lintegral_congr_ae (aeSeq.aeSeq_n_eq_fun_n_ae h_meas hp 0)]

/-- **Monotone convergence theorem** for an infimum over a directed family and indexed by a
countable type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variant14a2b6dfdb1705f4c5706d9b3b30db148ab0e27144fb4f6a29c4f5db1277e0b8.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d8e76541bd486034955db2673d8981954523e58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
