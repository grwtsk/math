# eLpNorm_le_eLpNorm_top_mul_eLpNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:937d0979-b552-a820-b60d-82d0d93ab981",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_eLpNorm_top_mul_eLpNorm",
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
  "slug": "elpnorm-le-elpnorm-top-mul-elpnorm--2559fdb0fb18e6bd66c91c68",
  "source": {
    "blob": "0e5583391e8a71d8008933342f40cfa89d134704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 294,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2559fdb0fb18e6bd66c91c6824fe7ab2ed5aac9a9e13344b616d30017936e3d1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:937d0979-b552-a820-b60d-82d0d93ab981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_eLpNorm_top_mul_eLpNorm (p : ℝ≥0∞)
    (b : E → F → G) (c : ℝ≥0) (hb : Continuous b.uncurry) (hf : AEStronglyMeasurable f μ)
    (h : ∀ᵐ x ∂μ, ‖b (f x) (g x)‖₊ ≤ c * ‖f x‖₊ * ‖g x‖₊) :
    eLpNorm (fun x => b (f x) (g x)) p μ ≤ c * eLpNorm f ∞ μ * eLpNorm g p μ := by
  rcases eq_zero_or_pos p with rfl | hp; swap
  · apply eLpNorm_le_eLpNorm_top_mul_eLpNorm_of_pos p b c hb h hp
  rcases eq_zero_or_pos c with rfl | hc
  · have : ∀ᵐ x ∂μ, b (f x) (g x) = 0 := by
      filter_upwards [h] with x hx using by simpa using hx
    rw [eLpNorm_congr_ae this]
    simp
  by_cases h'f : f =ᵐ[μ] 0
  · have : ∀ᵐ x ∂μ, b (f x) (g x) = 0 := by
      filter_upwards [h, h'f] with x hx h'x using by simpa [h'x] using hx
    rw [eLpNorm_congr_ae this]
    simp
  by_cases hg : AEStronglyMeasurable g μ
  · have hbf : AEStronglyMeasurable (fun x => b (f x) (g x)) μ :=
      Continuous.comp_aestronglyMeasurable₂ hb hf hg
    simp [hbf]
  rw [eLpNorm_of_not_aestronglyMeasurable hg]
  apply le_top.trans_eq
  rw [mul_top]
  have : eLpNorm f ∞ μ ≠ 0 := by
    contrapose! h'f
    rwa [← eLpNorm_eq_zero_iff top_ne_zero]
  simp [mul_eq_zero, hc.ne', this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e5583391e8a71d8008933342f40cfa89d134704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
