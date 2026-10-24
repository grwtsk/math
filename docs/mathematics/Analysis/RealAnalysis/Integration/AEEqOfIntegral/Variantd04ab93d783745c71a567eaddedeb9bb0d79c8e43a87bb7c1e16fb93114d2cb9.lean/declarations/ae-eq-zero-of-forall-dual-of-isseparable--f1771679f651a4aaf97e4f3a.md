# ae_eq_zero_of_forall_dual_of_isSeparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab3b390a490889e5774dd39e424e93e44e54c2f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45def5af-c8bb-7298-fec8-767df49cf1b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a15a78a0-7577-9555-000a-e55d41c3da66",
  "kind": "theorem",
  "lexical_name": "ae_eq_zero_of_forall_dual_of_isSeparable",
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
  "slug": "ae-eq-zero-of-forall-dual-of-isseparable--f1771679f651a4aaf97e4f3a",
  "source": {
    "blob": "ab3b390a490889e5774dd39e424e93e44e54c2f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1771679f651a4aaf97e4f3a3d2c4012b0d580e966c757bd748c1a0d37c83634",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a15a78a0-7577-9555-000a-e55d41c3da66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_eq_zero_of_forall_dual_of_isSeparable [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    {t : Set E} (ht : TopologicalSpace.IsSeparable t) {f : α → E}
    (hf : ∀ c : Dual 𝕜 E, (fun x => ⟪f x, c⟫) =ᵐ[μ] 0) (h't : ∀ᵐ x ∂μ, f x ∈ t) : f =ᵐ[μ] 0 := by
  rcases ht with ⟨d, d_count, hd⟩
  haveI : Encodable d := d_count.toEncodable
  have : ∀ x : d, ∃ g : E →L[𝕜] 𝕜, ‖g‖ ≤ 1 ∧ g x = ‖(x : E)‖ :=
    fun x => exists_dual_vector'' 𝕜 (x : E)
  choose s hs using this
  have A : ∀ a : E, a ∈ t → (∀ x, ⟪a, s x⟫ = (0 : 𝕜)) → a = 0 := by
    intro a hat ha
    contrapose! ha
    have a_pos : 0 < ‖a‖ := by simp only [ha, norm_pos_iff, Ne.def, not_false_iff]
    have a_mem : a ∈ closure d := hd hat
    obtain ⟨x, hx⟩ : ∃ x : d, dist a x < ‖a‖ / 2 := by
      rcases Metric.mem_closure_iff.1 a_mem (‖a‖ / 2) (half_pos a_pos) with ⟨x, h'x, hx⟩
      exact ⟨⟨x, h'x⟩, hx⟩
    use x
    have I : ‖a‖ / 2 < ‖(x : E)‖ := by
      have : ‖a‖ ≤ ‖(x : E)‖ + ‖a - x‖ := norm_le_insert' _ _
      have : ‖a - x‖ < ‖a‖ / 2 := by rwa [dist_eq_norm] at hx
      linarith
    intro h
    apply lt_irrefl ‖s x x‖
    calc
      ‖s x x‖ = ‖s x (x - a)‖ := by simp only [h, sub_zero, ContinuousLinearMap.map_sub]
      _ ≤ 1 * ‖(x : E) - a‖ := (ContinuousLinearMap.le_of_op_norm_le _ (hs x).1 _)
      _ < ‖a‖ / 2 := by rw [one_mul]; rwa [dist_eq_norm'] at hx
      _ < ‖(x : E)‖ := I
      _ = ‖s x x‖ := by rw [(hs x).2, IsROrC.norm_coe_norm]
  have hfs : ∀ y : d, ∀ᵐ x ∂μ, ⟪f x, s y⟫ = (0 : 𝕜) := fun y => hf (s y)
  have hf' : ∀ᵐ x ∂μ, ∀ y : d, ⟪f x, s y⟫ = (0 : 𝕜) := by rwa [ae_all_iff]
  filter_upwards [hf', h't] with x hx h'x
  exact A (f x) h'x hx
#align measure_theory.ae_eq_zero_of_forall_dual_of_is_separable MeasureTheory.ae_eq_zero_of_forall_dual_of_isSeparable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd04ab93d783745c71a567eaddedeb9bb0d79c8e43a87bb7c1e16fb93114d2cb9.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3b390a490889e5774dd39e424e93e44e54c2f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
