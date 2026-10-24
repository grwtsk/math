# supplierEstimate_of_weakMertens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6c77430-6aa4-bbc5-78f0-0461f0a131d9",
  "kind": "theorem",
  "lexical_name": "supplierEstimate_of_weakMertens",
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
  "slug": "supplierestimate-of-weakmertens--d7116c7ddea2365c50f7f646",
  "source": {
    "blob": "0f2181af98b4b4d12847e2e6f33ba5d764a007b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 206,
    "path": "GRWTSK/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7116c7ddea2365c50f7f646d9f438df6cca5fc8c48f5c90ef69bc61484c807c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6c77430-6aa4-bbc5-78f0-0461f0a131d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supplierEstimate_of_weakMertens {C : ℝ} (hC : 0 ≤ C)
    (hM : WeakMertensBound C) : SupplierEstimate := by
  refine ⟨0, 2 * Real.sqrt C, 1, 1, by norm_num, by positivity, by norm_num,
    by norm_num, ?_⟩
  intro A hA
  have he : 0 ≤ positiveEnvelope (2 * A) :=
    runningPositiveMaximum_nonneg pickup_continuous (2 * A)
  have hbudget : 2 * Real.sqrt C * A ≤ supplierAllowance 0 (2 * Real.sqrt C) 1 A := by
    simp only [supplierAllowance, zero_div, add_zero, Real.rpow_one]
    have hn : 0 ≤ (1 / Real.sqrt 2) * positiveEnvelope (2 * A) :=
      mul_nonneg (by positivity) he
    linarith
  exact (signedMeter_le_of_weakMertens hC hM hA).trans
    (EReal.coe_le_coe_iff.mpr hbudget)

end FormalResearch.RiemannHypothesis.Conversation.SupplierWeakMertens
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f2181af98b4b4d12847e2e6f33ba5d764a007b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
