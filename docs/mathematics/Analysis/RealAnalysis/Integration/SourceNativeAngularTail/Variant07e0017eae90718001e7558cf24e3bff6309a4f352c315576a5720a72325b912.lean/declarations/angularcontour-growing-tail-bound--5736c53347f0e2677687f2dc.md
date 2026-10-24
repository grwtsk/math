# angularContour_growing_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ce55e5fcc6da19d4e8fd1de4bddab5061dea963",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1794f5a-4e66-33da-fc6e-01847abc469e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:613b1c17-c104-0ef9-7a73-eecb3ed37683",
  "kind": "theorem",
  "lexical_name": "angularContour_growing_tail_bound",
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
  "slug": "angularcontour-growing-tail-bound--5736c53347f0e2677687f2dc",
  "source": {
    "blob": "8ce55e5fcc6da19d4e8fd1de4bddab5061dea963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 242,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5736c53347f0e2677687f2dc9ff8bf94f5b1a0c046774c9ecba6aae126a8760b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:613b1c17-c104-0ef9-7a73-eecb3ed37683`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angularContour_growing_tail_bound (A : ℝ) (hA : 1 ≤ A) :
    ‖angularContour A - angularHead A (growingHeight A)‖ ≤ twoLineTailConstant / A ^ 9 := by
  have hAp : 0 < A := by linarith
  have hT : 1 ≤ growingHeight A := by
    apply Real.one_le_exp_iff.mpr
    dsimp [growingHeight]
    positivity
  have hb := angularContour_sub_head_norm_bound A (growingHeight A) hA hT
  have he : growingHeight A ^ 5 = Real.exp (3 * A) := by
    unfold growingHeight
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [he] at hb
  have heq : twoLineTailConstant * Real.exp (3 * A) / (A ^ 9 * Real.exp (3 * A)) =
      twoLineTailConstant / A ^ 9 := by
    field_simp
  rwa [heq] at hb

/-- The signed real part of the actual contour is bounded by the same signed head and tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ce55e5fcc6da19d4e8fd1de4bddab5061dea963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
