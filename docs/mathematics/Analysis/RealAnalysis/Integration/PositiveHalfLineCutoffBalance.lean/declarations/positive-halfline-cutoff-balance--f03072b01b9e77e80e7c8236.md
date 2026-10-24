# positive_halfline_cutoff_balance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94b6ffce-f2b6-2d27-919e-585b2e0d3c7a",
  "kind": "theorem",
  "lexical_name": "positive_halfline_cutoff_balance",
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
  "slug": "positive-halfline-cutoff-balance--f03072b01b9e77e80e7c8236",
  "source": {
    "blob": "eb013a240e7cc888094a52158832b66487c8c00d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 23,
    "path": "GRWTSK/Analysis/Integration/PositiveHalfLineCutoffBalance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f03072b01b9e77e80e7c8236c14c84e6ff0695472fbed330e3677e039bf60366",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PositiveHalfLineCutoffBalance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94b6ffce-f2b6-2d27-919e-585b2e0d3c7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_halfline_cutoff_balance {f : ℝ → ℝ} {R : ℝ}
    (admitted : IntegrableOn f (Ioi 0)) (fullZero : (∫ x in Ioi (0 : ℝ), f x) = 0)
    (ordered : 1 ≤ R) (silent : ∀ x : ℝ, R < x → f x = 0) :
    (∫ x in (1 : ℝ)..R, f x) = -(∫ x in (0 : ℝ)..1, f x) := by
  have admittedOne : IntegrableOn f (Ioi 1) :=
    admitted.mono_set (Ioi_subset_Ioi (by norm_num))
  have upperZero : (∫ x in Ioi R, f x) = 0 :=
    setIntegral_eq_zero_of_forall_eq_zero (fun x hx ↦ silent x hx)
  have lower := intervalIntegral.integral_Ioi_sub_Ioi admitted (by norm_num : (0 : ℝ) ≤ 1)
  have upper := intervalIntegral.integral_Ioi_sub_Ioi admittedOne ordered
  rw [fullZero] at lower
  rw [upperZero] at upper
  linarith

/-- A supplied complete sample error keeps the lower integral correction in the price. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/PositiveHalfLineCutoffBalance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/PositiveHalfLineCutoffBalance.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb013a240e7cc888094a52158832b66487c8c00d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
