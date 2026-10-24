# actual_left_strip_high_time_source_atoms_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8858faee6db497fb4da3eef680e8c428bef2b273",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 491,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed6f9f8f376f9fb9ad099ded886897118a4b7cdc02dd76c4ca0b78f946537f11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6c5ec41-b090-2490-d2d4-9fc3039f1c80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d341613-7740-5c1a-778c-789ac88720ca",
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
  "slug": "actual-left-strip-high-time-source-atoms-zero--51a1f05ce75f427461cf59e8",
  "source": {
    "blob": "8858faee6db497fb4da3eef680e8c428bef2b273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 491,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Varianted6f9f8f376f9fb9ad099ded886897118a4b7cdc02dd76c4ca0b78f946537f11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51a1f05ce75f427461cf59e888411703099a12e3df8e207d7d1da1540a1fe4d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Varianted6f9f8f376f9fb9ad099ded886897118a4b7cdc02dd76c4ca0b78f946537f11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d341613-7740-5c1a-778c-789ac88720ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–499.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Varianted6f9f8f376f9fb9ad099ded886897118a4b7cdc02dd76c4ca0b78f946537f11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Varianted6f9f8f376f9fb9ad099ded886897118a4b7cdc02dd76c4ca0b78f946537f11.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8858faee6db497fb4da3eef680e8c428bef2b273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
