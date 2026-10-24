# ConvexOn.isBoundedUnder_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddc4ce95-2ebd-5378-2b4f-91cb8cd5db6d",
  "kind": "lemma",
  "lexical_name": "ConvexOn.isBoundedUnder_abs",
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
  "slug": "convexon-isboundedunder-abs--460f6d906f729cb8bfc3ba5b",
  "source": {
    "blob": "86efd5d907f44d4a79d747f51fd3d31168ff181a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 93,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:460f6d906f729cb8bfc3ba5b8987d6b0ec88ab70a2552f56a5d3a0bc84afb209",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddc4ce95-2ebd-5378-2b4f-91cb8cd5db6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConvexOn.isBoundedUnder_abs (hf : ConvexOn ℝ C f) {x₀ : E} (hC : C ∈ 𝓝 x₀) :
    (𝓝 x₀).IsBoundedUnder (· ≤ ·) |f| ↔ (𝓝 x₀).IsBoundedUnder (· ≤ ·) f := by
  refine ⟨fun h ↦ h.mono_le <| .of_forall fun x ↦ le_abs_self _, ?_⟩
  rintro ⟨r, hr⟩
  refine ⟨|r| + 2 * |f x₀|, ?_⟩
  have : (𝓝 x₀).Tendsto (fun y => 2 • x₀ - y) (𝓝 x₀) :=
    tendsto_nhds_nhds.2 (⟨·, ·, by simp [two_nsmul, dist_comm]⟩)
  simp only [Filter.eventually_map, Pi.abs_apply, abs_le'] at hr ⊢
  filter_upwards [this.eventually_mem hC, hC, hr, this.eventually hr] with y hx hx' hfr hfr'
  refine ⟨hfr.trans <| (le_abs_self _).trans <| by simp, ?_⟩
  rw [← sub_le_iff_le_add, neg_sub_comm, sub_le_iff_le_add', ← abs_two, ← abs_mul]
  calc
    -|2 * f x₀| ≤ 2 * f x₀ := neg_abs_le _
    _ ≤ f y + f (2 • x₀ - y) := by
      have := hf.2 hx' hx (by positivity) (by positivity) (add_halves _)
      simp only [one_div, ← Nat.cast_smul_eq_nsmul ℝ, Nat.cast_ofNat, smul_sub, ne_eq,
        OfNat.ofNat_ne_zero, not_false_eq_true, inv_smul_smul₀, add_sub_cancel, smul_eq_mul] at this
      cancel_denoms at this
      rwa [← Nat.cast_two, Nat.cast_smul_eq_nsmul] at this
    _ ≤ f y + |r| := by gcongr; exact hfr'.trans (le_abs_self _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variantb495e101e7cebf96539c58195cbd10b818b4a779d38a0826971e119ba1a5bb6b.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86efd5d907f44d4a79d747f51fd3d31168ff181a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
