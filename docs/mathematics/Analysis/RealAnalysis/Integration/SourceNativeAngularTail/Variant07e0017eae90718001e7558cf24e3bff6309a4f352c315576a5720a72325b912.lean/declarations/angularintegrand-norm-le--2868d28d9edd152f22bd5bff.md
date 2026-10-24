# angularIntegrand_norm_le

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
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f86c842-76f0-a523-1858-cc3e8a478c00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b89995e-a0a5-ca8c-3ea7-4b28bb6b0bf8",
  "kind": "theorem",
  "lexical_name": "angularIntegrand_norm_le",
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
  "slug": "angularintegrand-norm-le--2868d28d9edd152f22bd5bff",
  "source": {
    "blob": "8ce55e5fcc6da19d4e8fd1de4bddab5061dea963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 89,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2868d28d9edd152f22bd5bff05ddd27e89cb17ff33b5c2d752b205c207066bc1",
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

Occurrence: `result:7b89995e-a0a5-ca8c-3ea7-4b28bb6b0bf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angularIntegrand_norm_le (A : ℝ) (hA : 1 ≤ A) (t : ℝ) (ht : 1 ≤ |t|) :
    ‖angularIntegrand A t‖ ≤ heightCoefficient A / |t| ^ 6 := by
  have hd := combinedMultiplier_norm_le 2 (by norm_num)
    ((2 : ℂ) + Complex.I * (t : ℂ)) (by simp)
  have hh := nativeMellin_two_line_decay A hA t ht
  rw [angularIntegrand, norm_mul]
  calc
    _ ≤ rightLineMajorant 2 *
        ((204288 ^ 2 * 10 / (4096 / 109395 : ℝ)) * Real.exp (3 * A) /
          (A ^ 9 * |t| ^ 6)) :=
      mul_le_mul hd hh (norm_nonneg _) (rightLineMajorant_nonneg _)
    _ = _ := by unfold heightCoefficient; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variant07e0017eae90718001e7558cf24e3bff6309a4f352c315576a5720a72325b912.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ce55e5fcc6da19d4e8fd1de4bddab5061dea963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
