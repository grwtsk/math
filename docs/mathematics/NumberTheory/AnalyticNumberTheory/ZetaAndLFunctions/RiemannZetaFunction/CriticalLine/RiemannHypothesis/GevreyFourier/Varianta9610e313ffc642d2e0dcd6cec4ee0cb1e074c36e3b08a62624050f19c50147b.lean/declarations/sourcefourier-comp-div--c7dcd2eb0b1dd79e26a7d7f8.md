# sourceFourier_comp_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b812b3ae353e3661d8b966ec6020a933c3fea8b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f3dd012-d597-2166-1596-11d518c7303f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13b99208-3d8a-4acc-7820-92a6aab3d1c8",
  "kind": "theorem",
  "lexical_name": "sourceFourier_comp_div",
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
  "slug": "sourcefourier-comp-div--c7dcd2eb0b1dd79e26a7d7f8",
  "source": {
    "blob": "b812b3ae353e3661d8b966ec6020a933c3fea8b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7dcd2eb0b1dd79e26a7d7f8c9e94b547e20b258a4f92e85d5cb517835799de0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13b99208-3d8a-4acc-7820-92a6aab3d1c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceFourier_comp_div (f : ℝ → ℝ) {A : ℝ} (hA : 0 < A) (ξ : ℝ) :
    sourceFourier (fun x ↦ f (x / A)) ξ = (A : ℂ) * sourceFourier f (A * ξ) := by
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hA.ne'
  unfold sourceFourier
  calc
    _ = ∫ x : ℝ, ((f (x / A) : ℂ) *
        Complex.exp (Complex.I * ((A * ξ : ℝ) : ℂ) * ((x / A : ℝ) : ℂ))) := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall fun x ↦ by
        push_cast
        field_simp
    _ = _ := by
      simpa only [abs_of_pos hA, Complex.real_smul] using
        Measure.integral_comp_div (fun x : ℝ ↦ (f x : ℂ) *
          Complex.exp (Complex.I * ((A * ξ : ℝ) : ℂ) * (x : ℂ))) A

/-- L²-normalized dilation contributes `√A`, while its frequency is `A * ξ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b812b3ae353e3661d8b966ec6020a933c3fea8b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
