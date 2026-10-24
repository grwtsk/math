# actual_left_strip_high_time_source_atoms_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e01b1d2164f50a7ba415cb4b5514ac3d0a3ff75a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 504,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efa2c845-cbdd-d4df-3410-30fa1cf980a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6f71d41-2a72-3e85-d5f9-1f250ead060f",
  "kind": "theorem",
  "lexical_name": "actual_left_strip_high_time_source_atoms_zero",
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
  "slug": "actual-left-strip-high-time-source-atoms-zero--fbae5648e6ed0788716e5d09",
  "source": {
    "blob": "e01b1d2164f50a7ba415cb4b5514ac3d0a3ff75a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 504,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variantd4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbae5648e6ed0788716e5d091807150217078ef6405db5fba6fd3b229e2ac3d6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variantd4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6f71d41-2a72-3e85-d5f9-1f250ead060f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_left_strip_high_time_source_atoms_zero {A : ℝ} (hA : 1 ≤ A)
    {v t : ℝ} (hv : v ∈ actualWorkLeftStrip A)
    (ht : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ t) :
    normalizedTest explicitSecondDerivative A (v - t) = 0 ∧
    deriv (normalizedTest explicitSecondDerivative A) (v - t) = 0 := by
  rw [actualWorkLeftStrip_eq_Ico_inter] at hv
  exact source_sectors_zero_after_spatial_edge (by linarith : 0 < A) hv.1.2 ht

/-- On this spatial strip the actual full density equals its independently defined low row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variantd4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variantd4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e01b1d2164f50a7ba415cb4b5514ac3d0a3ff75a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
