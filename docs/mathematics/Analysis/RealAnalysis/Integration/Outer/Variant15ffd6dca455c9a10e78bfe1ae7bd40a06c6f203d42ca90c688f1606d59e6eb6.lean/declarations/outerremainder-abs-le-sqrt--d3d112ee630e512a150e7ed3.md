# outerRemainder_abs_le_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4cdb796-f8e7-a973-8f61-a744f392593b",
  "kind": "theorem",
  "lexical_name": "outerRemainder_abs_le_sqrt",
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
  "slug": "outerremainder-abs-le-sqrt--d3d112ee630e512a150e7ed3",
  "source": {
    "blob": "21bde7bc9f1ca4cef171802c818159631272181f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3d112ee630e512a150e7ed3d5defd0df32f00a8f932f6d1ddf0b4b8e2cb1238",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4cdb796-f8e7-a973-8f61-a744f392593b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem outerRemainder_abs_le_sqrt {A : ℝ} (hA : 1 ≤ A)
    {N : ℕ} (hN : N ≤ sourceKernelCutoff A) :
    |outerRemainder A N| ≤ 24 * Real.sqrt (N : ℝ) := by
  apply (outerRemainder_abs_le_twelve hA hN).trans
  calc
    _ ≤ 12 * (2 * Real.sqrt (N : ℝ)) :=
      mul_le_mul_of_nonneg_left (inverse_sqrt_sum_le N) (by norm_num)
    _ = _ := by ring

/-- The user-specified short divisor prefix has a growing exp(A/2) envelope.
The omitted d>floor(exp A) sector is still present in the complete identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21bde7bc9f1ca4cef171802c818159631272181f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
