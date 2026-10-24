# partial_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f16a23db0fa1f46fe9574b8968d63c6913836676",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4368dd8-fabd-600e-9809-0fa9701ae29e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16a93688-8f86-5576-c6e8-a7d97eefe516",
  "kind": "lemma",
  "lexical_name": "partial_sum_le",
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
  "slug": "partial-sum-le--c0b3adbdb2341dc683927e48",
  "source": {
    "blob": "f16a23db0fa1f46fe9574b8968d63c6913836676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 315,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0b3adbdb2341dc683927e48fcb7c0f4253ec4701f2bdbab646ec08901a8f899",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16a93688-8f86-5576-c6e8-a7d97eefe516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma partial_sum_le (u : Finset {ρ : Z.carrier // ρ ∉ H.sA}) :
    ∑ x ∈ u, (Z.mult (x : Z.carrier) : ℝ) * ∑ k, ‖uvec P T (x : Z.carrier) k‖ ^ 2
      ≤ P.L T * theta0 A₀ H.K T := by
  classical
  have hLC := LocalCount.ofWindowCount Z H.hA₀ H.hloc
  -- push u forward to a Finset of the carrier; all its elements are tail zeros
  set s : Finset Z.carrier := u.map (Function.Embedding.subtype _) with hs
  have hs_tail : ∀ ρ ∈ s, InTail T ((fun ρ : Z.carrier => (ρ : ℂ).im) ρ) := by
    intro ρ hρ
    rw [hs, Finset.mem_map] at hρ
    obtain ⟨x, _, rfl⟩ := hρ
    exact (H.not_mem_sA_iff _).mp x.2
  have hcount := tail_count_sum_le hLC H.hT s hs_tail
  have hterm : ∀ x ∈ u,
      (Z.mult (x : Z.carrier) : ℝ) * ∑ k, ‖uvec P T (x : Z.carrier) k‖ ^ 2
        ≤ H.K ^ 2 * P.L T *
          ((Z.mult (x : Z.carrier) : ℝ) * ((distI T ((x : Z.carrier) : ℂ).im) ^ 3)⁻¹) := by
    intro x _
    have hx : InTail T ((x : Z.carrier) : ℂ).im := (H.not_mem_sA_iff _).mp x.2
    have h := norm_sq_uvec_le H.hT H.hL H.hC₁ H.hdecay (x : Z.carrier).2 hx
    have hm : (0:ℝ) ≤ Z.mult (x : Z.carrier) := Nat.cast_nonneg _
    calc _ ≤ (Z.mult (x : Z.carrier) : ℝ) * (H.K ^ 2 * P.L T * ((distI T ((x : Z.carrier) : ℂ).im) ^ 3)⁻¹) :=
          mul_le_mul_of_nonneg_left h hm
      _ = _ := by ring
  calc _ ≤ ∑ x ∈ u, H.K ^ 2 * P.L T *
          ((Z.mult (x : Z.carrier) : ℝ) * ((distI T ((x : Z.carrier) : ℂ).im) ^ 3)⁻¹) :=
        sum_le_sum hterm
    _ = H.K ^ 2 * P.L T *
          ∑ ρ ∈ s, (Z.mult ρ : ℝ) * ((distI T (ρ : ℂ).im) ^ 3)⁻¹ := by
        rw [← mul_sum, hs, Finset.sum_map]; rfl
    _ ≤ H.K ^ 2 * P.L T * (4 * A₀ * Real.log (4 * T) / T) :=
        mul_le_mul_of_nonneg_left hcount (by have := H.L_pos; positivity)
    _ = P.L T * theta0 A₀ H.K T := by unfold theta0; ring

/-- ∑_{γ∉I'} m_ρ ‖u_ρ‖₂² is summable … -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant674d2a40f21d5287cc3801fa81faadc37a6910dbc3fb344b43d88fab8dcfa512.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f16a23db0fa1f46fe9574b8968d63c6913836676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
