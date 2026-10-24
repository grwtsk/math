# exists_nnnorm_eq_one_lt_apply_of_lt_opNNNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee0b403cdc18734daf3436da63205a20f3e03e93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62244e73-5fd6-2928-9685-fb59655e5e5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c77a709-a099-5fe6-ae70-2e3c60f8e4c6",
  "kind": "theorem",
  "lexical_name": "exists_nnnorm_eq_one_lt_apply_of_lt_opNNNorm",
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
  "slug": "exists-nnnorm-eq-one-lt-apply-of-lt-opnnnorm--9138743b4a18c4f4dcbfd286",
  "source": {
    "blob": "ee0b403cdc18734daf3436da63205a20f3e03e93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 216,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9138743b4a18c4f4dcbfd2860673b823a2a8db950733cef3403c42864fc882d3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c77a709-a099-5fe6-ae70-2e3c60f8e4c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nnnorm_eq_one_lt_apply_of_lt_opNNNorm [NormedAlgebra ℝ 𝕜]
    (f : E →SL[σ₁₂] F) {r : ℝ≥0} (hr : r < ‖f‖₊) :
    ∃ x : E, ‖x‖₊ = 1 ∧ r < ‖f x‖₊ := by
  obtain ⟨x, hlt, hr⟩ := exists_lt_apply_of_lt_opNNNorm f hr
  obtain rfl | hx0 := eq_zero_or_nnnorm_pos x
  · simp at hr
  use algebraMap ℝ 𝕜 ‖x‖⁻¹ • x
  suffices r < ‖x‖₊⁻¹ * ‖f x‖₊ by simpa [nnnorm_smul, inv_mul_cancel₀ hx0.ne'] using this
  calc
    r < 1⁻¹ * ‖f x‖₊ := by simpa
    _ < ‖x‖₊⁻¹ * ‖f x‖₊ := by gcongr; exact hr.pos

/-- When the domain is a real normed space, `ContinuousLinearMap.sSup_unitClosedBall_eq_nnnorm` can
be tightened to take the supremum over only the `Metric.sphere`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee0b403cdc18734daf3436da63205a20f3e03e93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
