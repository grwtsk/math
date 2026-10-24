# differentiableWithinAt_complex_iff_differentiableWithinAt_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f21255364cb0ddc74ef42258316cfb7abe7117a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/682df81c9763be40a44bea87e08267f396d3910d65488d54ae74e49e1c1840bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0a5dcb8-63b5-99ff-9684-38ca870453c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:251ad4d7-03fe-578d-08c2-0ce866a741ab",
  "kind": "theorem",
  "lexical_name": "differentiableWithinAt_complex_iff_differentiableWithinAt_real",
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
  "slug": "differentiablewithinat-complex-iff-differentiablewithinat-real--de90e0af4aed011d0a0c7adc",
  "source": {
    "blob": "2f21255364cb0ddc74ef42258316cfb7abe7117a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 231,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant682df81c9763be40a44bea87e08267f396d3910d65488d54ae74e49e1c1840bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de90e0af4aed011d0a0c7adc454d6782aa0e0c7b568d8e140bf2d1f617c3743c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant682df81c9763be40a44bea87e08267f396d3910d65488d54ae74e49e1c1840bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:251ad4d7-03fe-578d-08c2-0ce866a741ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableWithinAt_complex_iff_differentiableWithinAt_real
    (hs : UniqueDiffWithinAt ℝ s x) :
    DifferentiableWithinAt ℂ f s x ↔ DifferentiableWithinAt ℝ f s x ∧
      (fderivWithin ℝ f s x I = I • fderivWithin ℝ f s x 1) := by
  refine ⟨fun h ↦ ⟨h.restrictScalars ℝ, ?_⟩, fun ⟨h₁, h₂⟩ ↦ ?_⟩
  · simp only [← h.restrictScalars_fderivWithin ℝ hs, ContinuousLinearMap.coe_restrictScalars']
    rw [(by simp : I = I • 1), (fderivWithin ℂ f s x).map_smul]
    simp
  · apply (differentiableWithinAt_iff_restrictScalars ℝ h₁ hs).2
    use (fderivWithin ℝ f s x).complexOfReal h₂
    rfl

/--
In cases where the **Cauchy-Riemann Equation** guarantees complex differentiability at `x`, the
complex derivative equals `ContinuousLinearMap.complexOfReal` of the real derivative.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant682df81c9763be40a44bea87e08267f396d3910d65488d54ae74e49e1c1840bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant682df81c9763be40a44bea87e08267f396d3910d65488d54ae74e49e1c1840bd.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f21255364cb0ddc74ef42258316cfb7abe7117a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
