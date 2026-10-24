# sourceCorrelation_deriv_increment_bound_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2638af610b7e417a7d6018320db2ca7abf5bb1fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/061c9061beab6bd467dce5d1701c572a6b472ad91dec0e595b1c757a6f1c15e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33a5da2f-10b0-f136-0884-89537510a020",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5757b17e-d122-b8b3-1471-ef57aa3c9939",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_deriv_increment_bound_five",
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
  "slug": "sourcecorrelation-deriv-increment-bound-five--f8cb93bf457673ce3bbffa02",
  "source": {
    "blob": "2638af610b7e417a7d6018320db2ca7abf5bb1fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Probe/Variant061c9061beab6bd467dce5d1701c572a6b472ad91dec0e595b1c757a6f1c15e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8cb93bf457673ce3bbffa020f3d8c9a02677fa057d48298f3d667b7632d7de7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Probe/Variant061c9061beab6bd467dce5d1701c572a6b472ad91dec0e595b1c757a6f1c15e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5757b17e-d122-b8b3-1471-ef57aa3c9939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_deriv_increment_bound_five {A : ℝ} (hA : 200 ≤ A) (a y : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) (a + y) -
      deriv (sourceCorrelation explicitSecondDerivative A) a| ≤ 5 / A ^ 2 * |y| := by
  have hp : 0 < A := by linarith
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := deriv (sourceCorrelation explicitSecondDerivative A))
    (fun x _ ↦ (sourceCorrelation_deriv_contDiff hp).differentiable (by norm_num) x)
    (fun x _ ↦ by simpa only [Real.norm_eq_abs] using
      sourceCorrelation_second_deriv_abs_le_five hA x)
    convex_univ (mem_univ a) (mem_univ (a + y))
  simpa only [Real.norm_eq_abs, add_sub_cancel_left] using h

/-- The even source correlation has vanishing first derivative at the retained origin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Probe/Variant061c9061beab6bd467dce5d1701c572a6b472ad91dec0e595b1c757a6f1c15e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Probe/Variant061c9061beab6bd467dce5d1701c572a6b472ad91dec0e595b1c757a6f1c15e5.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2638af610b7e417a7d6018320db2ca7abf5bb1fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
