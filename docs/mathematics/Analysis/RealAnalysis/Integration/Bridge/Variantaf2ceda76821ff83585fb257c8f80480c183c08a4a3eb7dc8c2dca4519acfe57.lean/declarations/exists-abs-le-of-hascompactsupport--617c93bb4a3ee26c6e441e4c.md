# exists_abs_le_of_hasCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:324abf30-d893-1ee8-6730-d79165dac9a6",
  "kind": "theorem",
  "lexical_name": "exists_abs_le_of_hasCompactSupport",
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
  "slug": "exists-abs-le-of-hascompactsupport--617c93bb4a3ee26c6e441e4c",
  "source": {
    "blob": "db88fa3fedc657aa5a64c7ccf4d29a9c09a5be3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:617c93bb4a3ee26c6e441e4c4a45f5ed551dfa3b832f59a781b882431e87bb54",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:324abf30-d893-1ee8-6730-d79165dac9a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_abs_le_of_hasCompactSupport {k : ℝ → ℂ} (hkc : HasCompactSupport k) :
    ∃ Λ : ℝ, ∀ u, k u ≠ 0 → |u| ≤ Λ := by
  obtain ⟨R, hR⟩ := hkc.isCompact.isBounded.subset_closedBall 0
  refine ⟨R, fun u hu => ?_⟩
  have := hR (subset_tsupport _ (Function.mem_support.mpr hu))
  simpa [Real.norm_eq_abs] using this

/-- [eq:hfbound] on the real line, both orders, in terms of Mathlib's `𝓕`:
`‖𝓕 k w‖ (1 + w²) ≤ ‖k‖₁ + ‖k''‖₁/(4π²)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db88fa3fedc657aa5a64c7ccf4d29a9c09a5be3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
