# eLpNorm_indicator_sub_le_of_dist_bdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e4e2cbb343dedabc38699178931cb44950b4109",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/aca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3293780-67cb-e369-65a0-e542db7d702f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:300f5763-1a87-ac54-7b0e-b950bc5d94e3",
  "kind": "theorem",
  "lexical_name": "eLpNorm_indicator_sub_le_of_dist_bdd",
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
  "slug": "elpnorm-indicator-sub-le-of-dist-bdd--fc4e05e12f33204184e59065",
  "source": {
    "blob": "3e4e2cbb343dedabc38699178931cb44950b4109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 211,
    "path": "GRWTSK/Analysis/MeasureTheory/Indicator/Variantaca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc4e05e12f33204184e590650deaf35eed2e8327c1256cfc34a451b100f0fab7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Indicator/Variantaca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:300f5763-1a87-ac54-7b0e-b950bc5d94e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_indicator_sub_le_of_dist_bdd {β : Type*} [NormedAddCommGroup β]
    (μ : Measure α := by volume_tac) (hp' : p ≠ ∞) (hs : NullMeasurableSet s μ) {f g : α → β}
    {c : ℝ} (hc : 0 ≤ c) (hfgm : AEStronglyMeasurable (s.indicator (f - g)) μ)
    (hf : ∀ x ∈ s, dist (f x) (g x) ≤ c) :
    eLpNorm (s.indicator (f - g)) p μ ≤ ENNReal.ofReal c * μ s ^ (1 / p.toReal) := by
  have hcm : AEStronglyMeasurable (s.indicator fun _ : α ↦ c) μ :=
    AEStronglyMeasurable.indicator₀ (by fun_prop) hs
  by_cases hp : p = 0
  · simp [hp, hfgm]
  have : ∀ x, ‖s.indicator (f - g) x‖ ≤ ‖s.indicator (fun _ => c) x‖ := by
    intro x
    by_cases hx : x ∈ s
    · rw [Set.indicator_of_mem hx, Set.indicator_of_mem hx, Pi.sub_apply, ← dist_eq_norm,
        Real.norm_eq_abs, abs_of_nonneg hc]
      exact hf x hx
    · simp [Set.indicator_of_notMem hx]
  grw [eLpNorm_mono hfgm this, eLpNorm_indicator_const hs hp hp', ← ofReal_norm,
    Real.norm_eq_abs, abs_of_nonneg hc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Indicator/Variantaca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Indicator/Variantaca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e4e2cbb343dedabc38699178931cb44950b4109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
