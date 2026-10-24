# self_convolution_contDiff_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd557abf6f72294f92507e5dfdf855c9dbd1e38d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17188e7c-0009-f380-4203-185636b5e480",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e251beb7-42ae-f349-7df5-a575116305dd",
  "kind": "theorem",
  "lexical_name": "self_convolution_contDiff_two",
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
  "slug": "self-convolution-contdiff-two--3a1770a2731673e6a2bc0860",
  "source": {
    "blob": "dd557abf6f72294f92507e5dfdf855c9dbd1e38d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a1770a2731673e6a2bc0860e039ee1276c0c519b51162e6148483e02388dea9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e251beb7-42ae-f349-7df5-a575116305dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem self_convolution_contDiff_two (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (hfc : HasCompactSupport f) : ContDiff ℝ 2 (f ⋆ f) := by
  have hd := self_convolution_hasDerivAt f hf hfc
  have heq : deriv (f ⋆ f) = deriv f ⋆ f := funext fun t ↦ (hd t).deriv
  rw [show (2 : ℕ∞ω) = 1 + 1 by norm_num, contDiff_succ_iff_deriv]
  refine ⟨fun t ↦ (hd t).differentiableAt, by simp, ?_⟩
  rw [heq]
  exact hfc.contDiff_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ)
    hf.continuous_deriv_one.locallyIntegrable hf

/-- The original unnormalized autocorrelation; no new arithmetic quantity is introduced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Autocorrelation/Variant08b91733f51b5e7e0c8b1ed49b18cc9e57742417f63e0f8de308522dc3153043.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd557abf6f72294f92507e5dfdf855c9dbd1e38d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
