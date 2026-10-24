# rootWeight_difference_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b0d5394eeaa2ffd3ae58da8d9af7c33f6e61336",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca880703-3b64-2059-b377-4ab121467dbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51b3a93a-f7e4-83b1-b96e-2d8ea60f1fcf",
  "kind": "theorem",
  "lexical_name": "rootWeight_difference_integral",
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
  "slug": "rootweight-difference-integral--88a1628750e26b4a04e53ee5",
  "source": {
    "blob": "1b0d5394eeaa2ffd3ae58da8d9af7c33f6e61336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 229,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88a1628750e26b4a04e53ee580e605214c7c913ce43354645cded3953f321993",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51b3a93a-f7e4-83b1-b96e-2d8ea60f1fcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootWeight_difference_integral (A y : ℝ) (hA : 1 ≤ A) (hy : 0 < y) :
    (∫ x in Set.Ioi (1 : ℝ), rootWeight (correlationDifference A) y x) =
      (1 / Real.sqrt y) * (correlationPrimitive A (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y)) := by
  have h := integral_comp_exp_Ioi (rootWeight (correlationDifference A) y) 0
  simp only [smul_eq_mul, Real.exp_zero] at h
  rw [← h]
  simp_rw [rootWeight_exp_substitution _ y _ hy]
  rw [integral_const_mul, difference_tail_eq_primitive A (Real.log y) hA]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeAudit/Variant18edf5e0c0643666087cef538bf7d45b47fec9eaa8db1675d6e658f72f94fd63.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b0d5394eeaa2ffd3ae58da8d9af7c33f6e61336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
