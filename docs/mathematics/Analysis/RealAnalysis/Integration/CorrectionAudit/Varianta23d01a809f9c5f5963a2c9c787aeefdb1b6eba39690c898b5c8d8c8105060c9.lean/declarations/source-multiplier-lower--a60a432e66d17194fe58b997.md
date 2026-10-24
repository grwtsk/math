# source_multiplier_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c61600b794096c8ff39a3a7c0a391ea21db41bfe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 10,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e5c02c3-2e7d-791a-7a7b-f3bc3b4cd9b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:485b4ae3-20af-ac6b-fdc9-b30461df1130",
  "kind": "lemma",
  "lexical_name": "source_multiplier_lower",
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
  "slug": "source-multiplier-lower--a60a432e66d17194fe58b997",
  "source": {
    "blob": "c61600b794096c8ff39a3a7c0a391ea21db41bfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 17,
    "line": 10,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectionAudit/Varianta23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a60a432e66d17194fe58b997ed2596821d58598b90c100d69d98f7aaa5dea296",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrectionAudit/Varianta23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:485b4ae3-20af-ac6b-fdc9-b30461df1130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–17.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma source_multiplier_lower (ξ : ℝ) : archimedeanMultiplier 0 ≤ archimedeanMultiplier ξ := by
  have hs := (AdmissionSource.quarter_series ξ).tsum_eq
  have hn : 0 ≤ ∑' n : ℕ, kernel (ξ / 2) (n + 1 / 4) := tsum_nonneg (fun n : ℕ ↦ kernel_nonneg (ξ / 2) (n + 1 / 4) (by positivity))
  rw [hs] at hn
  have hzero : archimedeanMultiplier 0 = -archimedeanConstant := by
    simp [archimedeanMultiplier, archimedeanConstant]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrectionAudit/Varianta23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectionAudit/Varianta23d01a809f9c5f5963a2c9c787aeefdb1b6eba39690c898b5c8d8c8105060c9.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61600b794096c8ff39a3a7c0a391ea21db41bfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
