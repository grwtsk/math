# sigmoid_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8de366f4-673b-fb36-04b0-e5fb9af7c9e8",
  "kind": "theorem",
  "lexical_name": "sigmoid_deriv",
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
  "slug": "sigmoid-deriv--1ed05adc277c07179f227508",
  "source": {
    "blob": "f3c1b3bb3e098f87ba6ae4f4e53d3276819873b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 228,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ed05adc277c07179f22750804462e5c398a286a8c61599e48698b1bc42f4618",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8de366f4-673b-fb36-04b0-e5fb9af7c9e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sigmoid_deriv (x : ℝ) :
    HasDerivAt sigmoid (sigmoid x * (1 - sigmoid x)) x := by
  unfold sigmoid
  have h_denom_pos : 0 < 1 + exp (-x) := sigmoid_denom_pos x
  have h_denom_ne : 1 + exp (-x) ≠ 0 := ne_of_gt h_denom_pos
  -- Use quotient rule: d/dx [1/f] = -f'/f²
  have hexp_deriv : HasDerivAt (fun y => exp (-y)) (-exp (-x)) x := by
    have h1 := Real.hasDerivAt_exp (-x)
    have h2 := hasDerivAt_neg x
    have hcomp := HasDerivAt.comp x h1 h2
    convert hcomp using 1
    ring
  have hdenom_deriv : HasDerivAt (fun y => 1 + exp (-y)) (-exp (-x)) x := by
    have hconst : HasDerivAt (fun _ : ℝ => (1 : ℝ)) 0 x := hasDerivAt_const x 1
    convert hconst.add hexp_deriv using 1
    ring
  have hmain : HasDerivAt (fun y => 1 / (1 + exp (-y)))
      (exp (-x) / (1 + exp (-x))^2) x := by
    have h := hdenom_deriv.inv h_denom_ne
    simp only [one_div] at h ⊢
    convert h using 1
    ring
  convert hmain using 1
  -- Show: exp(-x)/(1+exp(-x))² = σ(x)·(1-σ(x))
  have h1 : 1 / (1 + exp (-x)) * (1 - 1 / (1 + exp (-x))) =
      exp (-x) / (1 + exp (-x))^2 := by
    field_simp
    ring
  linarith [h1]

/-- The derivative is always in (0, 1/4] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3c1b3bb3e098f87ba6ae4f4e53d3276819873b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
