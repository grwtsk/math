# AnalyticAt.harmonicAt_log_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0ebf18c-2631-7e61-cf7b-e431b0a61213",
  "kind": "theorem",
  "lexical_name": "AnalyticAt.harmonicAt_log_norm",
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
  "slug": "analyticat-harmonicat-log-norm--b1767414bbd014154c04cba7",
  "source": {
    "blob": "97c7faedfe431a64e3ae34f0fad58d60ffc9141a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 117,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Constructions/Varianta66edd9be69fcb286cab37fdbff19f1e0ad12fd1e9fb13647c21a2cd7757b7bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1767414bbd014154c04cba71624f09f432f04783e7bfafce3b1be2aaf343c7c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Constructions/Varianta66edd9be69fcb286cab37fdbff19f1e0ad12fd1e9fb13647c21a2cd7757b7bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0ebf18c-2631-7e61-cf7b-e431b0a61213`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticAt.harmonicAt_log_norm {f : ℂ → ℂ} {z : ℂ} (h₁f : AnalyticAt ℂ f z)
    (h₂f : f z ≠ 0) :
    HarmonicAt (Real.log ‖f ·‖) z := by
  have : (Real.log ‖f ·‖) = (2 : ℝ)⁻¹ • (Real.log ∘ Complex.normSq ∘ f) := by
    funext z
    simp only [Pi.smul_apply, Function.comp_apply, smul_eq_mul]
    rw [Complex.norm_def, Real.log_sqrt]
    · linarith
    exact (f z).normSq_nonneg
  rw [this]
  apply HarmonicAt.const_smul
  by_cases h₃f : f z ∈ Complex.slitPlane
  · exact analyticAt_harmonicAt_log_normSq h₁f h₂f h₃f
  · rw [(by aesop : Complex.normSq ∘ f = Complex.normSq ∘ (-f))]
    exact analyticAt_harmonicAt_log_normSq h₁f.neg (by simpa)
      ((mem_slitPlane_or_neg_mem_slitPlane h₂f).resolve_left h₃f)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Constructions/Varianta66edd9be69fcb286cab37fdbff19f1e0ad12fd1e9fb13647c21a2cd7757b7bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Constructions/Varianta66edd9be69fcb286cab37fdbff19f1e0ad12fd1e9fb13647c21a2cd7757b7bc.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97c7faedfe431a64e3ae34f0fad58d60ffc9141a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
