# lintegral_iInf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96495f56-17a2-851d-be38-98915666af2e",
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
  "slug": "lintegral-iinf--c660224d6c1dc23ae724f61c",
  "source": {
    "blob": "c1301ca819ba6768513e4a05329c0013aecdf545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c660224d6c1dc23ae724f61c4818c231fb5543130c5ff5c904d5c83920c58c6a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96495f56-17a2-851d-be38-98915666af2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–110.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Sub/Variant6e593c3c9fbc13cc3d98d3dd0d6e7aea9e38bef50f00ec4ed37b110640f651fb.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1301ca819ba6768513e4a05329c0013aecdf545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
