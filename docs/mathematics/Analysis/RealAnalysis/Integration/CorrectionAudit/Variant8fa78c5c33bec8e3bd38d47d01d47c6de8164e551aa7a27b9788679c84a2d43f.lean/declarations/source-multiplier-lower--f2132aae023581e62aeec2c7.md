# source_multiplier_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30923c12-ea41-5fcb-2ca1-5ed358e4cf70",
  "kind": "lemma",
  "lexical_name": "source_multiplier_lower",
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
  "slug": "source-multiplier-lower--f2132aae023581e62aeec2c7",
  "source": {
    "blob": "bab3fa5713841130ceb2140fb670c27ebcae6ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2132aae023581e62aeec2c7cc120f1493cb7cab3389f1c0c07f48bfce81d643",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30923c12-ea41-5fcb-2ca1-5ed358e4cf70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma source_multiplier_lower (ξ : ℝ) : archimedeanMultiplier 0 ≤ archimedeanMultiplier ξ := by
  have hs := (AdmissionSource.quarter_series ξ).tsum_eq
  have hn : 0 ≤ ∑' n : ℕ, kernel (ξ / 2) (n + 1 / 4) := tsum_nonneg (fun n : ℕ ↦ kernel_nonneg (ξ / 2) (n + 1 / 4) (by positivity))
  rw [hs] at hn
  have hzero : archimedeanMultiplier 0 = -archimedeanConstant := by
    simp [archimedeanMultiplier, archimedeanConstant]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectionAudit/Variant8fa78c5c33bec8e3bd38d47d01d47c6de8164e551aa7a27b9788679c84a2d43f.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bab3fa5713841130ceb2140fb670c27ebcae6ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
