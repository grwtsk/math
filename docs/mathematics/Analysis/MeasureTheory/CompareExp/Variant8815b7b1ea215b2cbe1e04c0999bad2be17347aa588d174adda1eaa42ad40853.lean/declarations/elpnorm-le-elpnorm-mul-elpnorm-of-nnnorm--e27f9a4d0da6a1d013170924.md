# eLpNorm_le_eLpNorm_mul_eLpNorm_of_nnnorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6479010-e2df-0f97-4af8-a409bd0f7253",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_eLpNorm_mul_eLpNorm_of_nnnorm",
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
  "slug": "elpnorm-le-elpnorm-mul-elpnorm-of-nnnorm--e27f9a4d0da6a1d013170924",
  "source": {
    "blob": "0e5583391e8a71d8008933342f40cfa89d134704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 369,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e27f9a4d0da6a1d013170924aef865f60bbf9098eaf08dbe9cd4179d3acc5795",
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

Occurrence: `result:c6479010-e2df-0f97-4af8-a409bd0f7253`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_eLpNorm_mul_eLpNorm_of_nnnorm
    {p q r : ℝ≥0∞} (b : E → F → G) (c : ℝ≥0) (hb : Continuous b.uncurry)
    (hf : AEStronglyMeasurable f μ) (hg : AEStronglyMeasurable g μ)
    (h : ∀ᵐ x ∂μ, ‖b (f x) (g x)‖₊ ≤ c * ‖f x‖₊ * ‖g x‖₊)
    [hpqr : HolderTriple p q r] :
    eLpNorm (fun x => b (f x) (g x)) r μ ≤ c * eLpNorm f p μ * eLpNorm g q μ := by
  have hbf : AEStronglyMeasurable (fun x => b (f x) (g x)) μ :=
    Continuous.comp_aestronglyMeasurable₂ hb hf hg
  rcases eq_zero_or_pos r with rfl | hr
  · simp [hbf]
  have hpqr := hpqr.one_div_eq
  obtain (rfl | rfl | hp) := ENNReal.trichotomy p
  · simp_all
  · have : r = q := by simpa using hpqr
    rw [← this]
    apply eLpNorm_le_eLpNorm_top_mul_eLpNorm_of_pos r b c hb h hr
  obtain (rfl | rfl | hq) := ENNReal.trichotomy q
  · simp_all
  · have : r = p := by simpa using hpqr
    rw [← this]
    apply eLpNorm_le_eLpNorm_mul_eLpNorm_top_of_pos r b c hb h hr
  obtain ⟨hp₁, hp₂⟩ := ENNReal.toReal_pos_iff.mp hp
  obtain ⟨hq₁, hq₂⟩ := ENNReal.toReal_pos_iff.mp hq
  have hpqr' : 1 / r.toReal = 1 / p.toReal + 1 / q.toReal := by
    have := congr(ENNReal.toReal $(hpqr))
    rw [ENNReal.toReal_add (by simpa using hp₁.ne') (by simpa using hq₁.ne')] at this
    simpa
  have hr : 0 < r.toReal := one_div_pos.mp <| by rw [hpqr']; positivity
  obtain ⟨hr₁, hr₂⟩ := ENNReal.toReal_pos_iff.mp hr
  have hrp : r.toReal < p.toReal := lt_of_one_div_lt_one_div hp <|
    hpqr' ▸ lt_add_of_pos_right _ (by positivity)
  rw [eLpNorm_eq_eLpNorm' hr₁.ne' hr₂.ne hbf,
    eLpNorm_eq_eLpNorm' hp₁.ne' hp₂.ne hf,
    eLpNorm_eq_eLpNorm' hq₁.ne' hq₂.ne hg]
  exact eLpNorm'_le_eLpNorm'_mul_eLpNorm' hf hg b c h hr hrp hpqr'

/-- Hölder's inequality, as an inequality on the `ℒp` seminorm of an elementwise operation
`fun x => b (f x) (g x)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e5583391e8a71d8008933342f40cfa89d134704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
