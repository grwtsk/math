# actual_source_tail_budgets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c930d912-7415-3561-0834-87a77efa5b6a",
  "kind": "theorem",
  "lexical_name": "actual_source_tail_budgets",
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
  "slug": "actual-source-tail-budgets--6c0776e814f18bd3ea48ad62",
  "source": {
    "blob": "04c43318cd07f8641ca3a528f34f0767e0a729a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/ActualLogarithmicTail/Varianta19679b68b280ed0362dd77ac6599cdb0bb52b8ce63424459839ffd96f1e85f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c0776e814f18bd3ea48ad6224db61eaa542dcdf936b67d30eb7d5be5a70f8bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualLogarithmicTail/Varianta19679b68b280ed0362dd77ac6599cdb0bb52b8ce63424459839ffd96f1e85f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c930d912-7415-3561-0834-87a77efa5b6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_tail_budgets {A T : ℝ} (hA : 1≤A) (hT : 2≤T) :
    (∑' o : HeightTail T, ‖normalizedTransform A (shiftedValue o.val)^2‖) ≤
      actualTailConstant*A^(-9:ℝ)*Real.exp A*Real.log T/T^5 ∧
    (∑' o : HeightTail T, (normalizedTransform A (shiftedValue o.val)).im^2) ≤
      actualTailConstant*A^(-9:ℝ)*Real.exp A*Real.log T/T^5 ∧
    tailError A T ≤ actualTailConstant*A^(-9:ℝ)*Real.exp A*Real.log T/T^5 :=
  ⟨actual_norm_square_tail_bound actualCountConstant_bound hA hT,
    (actual_im_square_tail_bound actualCountConstant_bound hA hT).2,
    actual_tail_error_bound actualCountConstant_bound hA hT⟩

/-- Exact ∃fixedK-before-∀realA,T quantifier order for the source decoder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualLogarithmicTail/Varianta19679b68b280ed0362dd77ac6599cdb0bb52b8ce63424459839ffd96f1e85f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualLogarithmicTail/Varianta19679b68b280ed0362dd77ac6599cdb0bb52b8ce63424459839ffd96f1e85f3.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04c43318cd07f8641ca3a528f34f0767e0a729a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
