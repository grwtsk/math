# actual_box_orders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be569253-7fa2-c34e-d5d3-1eb44bf66f36",
  "kind": "theorem",
  "lexical_name": "actual_box_orders",
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
  "slug": "actual-box-orders--afdf9860d7c83e6ba31ef5d5",
  "source": {
    "blob": "42c01079606ba207d63070629b865bd2e9808f2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Varianteaf02d2c22dd18230ca623b9b39820a4c3171bb1c6eab4dec4eb993b281de5cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afdf9860d7c83e6ba31ef5d570e785960ae5edcd28ec401b3b836da996ecc6a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Varianteaf02d2c22dd18230ca623b9b39820a4c3171bb1c6eab4dec4eb993b281de5cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be569253-7fa2-c34e-d5d3-1eb44bf66f36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_box_orders {A : ℝ} (hA : 1 ≤ A) :
    actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) ∧
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualColumnUpper A := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA
  have hK : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    exact_mod_cast actual_column_window_nonempty hA
  exact ⟨Real.log_le_log hU hUN, Real.log_le_log (by positivity) hK⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Varianteaf02d2c22dd18230ca623b9b39820a4c3171bb1c6eab4dec4eb993b281de5cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Varianteaf02d2c22dd18230ca623b9b39820a4c3171bb1c6eab4dec4eb993b281de5cf.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42c01079606ba207d63070629b865bd2e9808f2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
