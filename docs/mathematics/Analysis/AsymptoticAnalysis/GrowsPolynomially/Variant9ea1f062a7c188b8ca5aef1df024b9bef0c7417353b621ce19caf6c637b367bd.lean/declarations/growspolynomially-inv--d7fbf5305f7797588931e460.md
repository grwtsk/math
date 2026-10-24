# GrowsPolynomially.inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46497511-5cd0-534f-a758-6329298cbdec",
  "kind": "lemma",
  "lexical_name": "GrowsPolynomially.inv",
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
  "slug": "growspolynomially-inv--d7fbf5305f7797588931e460",
  "source": {
    "blob": "ebc4480187c09e3283587c150206252ceb767a7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 485,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7fbf5305f7797588931e46026ebc5d3211253aa786a8f1be1acb85a9200d2cc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46497511-5cd0-534f-a758-6329298cbdec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma GrowsPolynomially.inv {f : ℝ → ℝ} (hf : GrowsPolynomially f) :
    GrowsPolynomially fun x => (f x)⁻¹ := by
  cases hf.eventually_atTop_zero_or_pos_or_neg with
  | inl hf' =>
    refine fun b hb => ⟨1, by simp, 1, by simp, ?_⟩
    have hb_pos := hb.1
    filter_upwards [hf', (tendsto_id.const_mul_atTop hb_pos).eventually_forall_ge_atTop hf']
      with x hx hx'
    intro u hu
    simp only [hx, inv_zero, mul_zero, Set.Icc_self, Set.mem_singleton_iff, hx' u hu.1]
  | inr hf_pos_or_neg =>
    suffices GrowsPolynomially fun x => |(f x)⁻¹| by
      cases hf_pos_or_neg with
      | inl hf' =>
        have hmain : (fun x => (f x)⁻¹) =ᶠ[atTop] fun x => |(f x)⁻¹| := by
          filter_upwards [hf'] with x hx₁
          rw [abs_of_nonneg (inv_nonneg_of_nonneg (le_of_lt hx₁))]
        rwa [iff_eventuallyEq hmain]
      | inr hf' =>
        have hmain : (fun x => (f x)⁻¹) =ᶠ[atTop] fun x => -|(f x)⁻¹| := by
          filter_upwards [hf'] with x hx₁
          simp [abs_of_nonpos (inv_nonpos.mpr (le_of_lt hx₁))]
        rw [iff_eventuallyEq hmain]
        exact this.neg
    have hf' : ∀ᶠ x in atTop, f x ≠ 0 := by
      cases hf_pos_or_neg with
      | inl H => filter_upwards [H] with _ hx; exact (ne_of_lt hx).symm
      | inr H => filter_upwards [H] with _ hx; exact (ne_of_gt hx).symm
    simp only [abs_inv]
    have hf := hf.abs
    intro b hb
    have hb_pos := hb.1
    obtain ⟨c₁, hc₁_mem, c₂, hc₂_mem, hf⟩ := hf b hb
    refine ⟨c₂⁻¹, by change 0 < c₂⁻¹; positivity, ?_⟩
    refine ⟨c₁⁻¹, by change 0 < c₁⁻¹; positivity, ?_⟩
    filter_upwards [hf, hf', (tendsto_id.const_mul_atTop hb_pos).eventually_forall_ge_atTop hf']
      with x hx hx' hx''
    intro u hu
    have h₁ : 0 < |f u| := by rw [abs_pos]; exact hx'' u hu.1
    refine ⟨?lb, ?ub⟩
    case lb =>
      rw [← mul_inv]
      gcongr
      exact (hx u hu).2
    case ub =>
      rw [← mul_inv]
      gcongr
      exact (hx u hu).1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebc4480187c09e3283587c150206252ceb767a7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
