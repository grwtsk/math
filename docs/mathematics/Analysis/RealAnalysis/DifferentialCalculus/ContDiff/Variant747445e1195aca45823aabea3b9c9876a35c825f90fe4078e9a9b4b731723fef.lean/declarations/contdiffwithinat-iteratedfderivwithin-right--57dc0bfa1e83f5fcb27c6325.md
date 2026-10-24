# ContDiffWithinAt.iteratedFderivWithin_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c3f424fa48bdb95dad00a6c895134d683847e4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1038,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3362f42-251d-1a66-2f78-28a6fe50e8ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0585cc5a-d44b-fffd-1740-4356c03c3cc2",
  "kind": "theorem",
  "lexical_name": "ContDiffWithinAt.iteratedFderivWithin_right",
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
  "slug": "contdiffwithinat-iteratedfderivwithin-right--57dc0bfa1e83f5fcb27c6325",
  "source": {
    "blob": "6c3f424fa48bdb95dad00a6c895134d683847e4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1049,
    "line": 1038,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57dc0bfa1e83f5fcb27c63250b8cb6b0b80f36d86f09b83cbb1a2125e90c34ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0585cc5a-d44b-fffd-1740-4356c03c3cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1038–1049.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffWithinAt.iteratedFderivWithin_right {i : ℕ} (hf : ContDiffWithinAt 𝕜 n f s x₀)
    (hs : UniqueDiffOn 𝕜 s) (hmn : (m + i : ℕ∞) ≤ n) (hx₀s : x₀ ∈ s) :
    ContDiffWithinAt 𝕜 m (iteratedFDerivWithin 𝕜 i f s) s x₀ := by
  induction' i with i hi generalizing m
  · rw [Nat.zero_eq, ENat.coe_zero, add_zero] at hmn
    exact (hf.of_le hmn).continuousLinearMap_comp
      ((continuousMultilinearCurryFin0 𝕜 E F).symm : _ →L[𝕜] E [×0]→L[𝕜] F)
  · rw [Nat.cast_succ, add_comm _ 1, ← add_assoc] at hmn
    exact ((hi hmn).fderivWithin_right hs le_rfl hx₀s).continuousLinearMap_comp
      (continuousMultilinearCurryLeftEquiv 𝕜 (fun _ : Fin (i+1) ↦ E) F : _ →L[𝕜] E [×(i+1)]→L[𝕜] F)

/-- `x ↦ fderiv 𝕜 (f x) (g x)` is smooth at `x₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant747445e1195aca45823aabea3b9c9876a35c825f90fe4078e9a9b4b731723fef.lean#L1038).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3f424fa48bdb95dad00a6c895134d683847e4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
