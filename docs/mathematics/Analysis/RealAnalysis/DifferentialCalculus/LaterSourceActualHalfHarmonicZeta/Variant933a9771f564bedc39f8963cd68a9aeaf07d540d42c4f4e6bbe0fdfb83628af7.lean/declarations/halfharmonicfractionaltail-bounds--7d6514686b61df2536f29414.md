# halfHarmonicFractionalTail_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e06bd06-9f51-a1e8-749e-4d13d5984f95",
  "kind": "theorem",
  "lexical_name": "halfHarmonicFractionalTail_bounds",
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
  "slug": "halfharmonicfractionaltail-bounds--7d6514686b61df2536f29414",
  "source": {
    "blob": "8fd6179e71ec68402403a148c97674d9f12f2c0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaterSourceActualHalfHarmonicZeta/Variant933a9771f564bedc39f8963cd68a9aeaf07d540d42c4f4e6bbe0fdfb83628af7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d6514686b61df2536f2941493733ae6453ac3bf01f2a37afd140151d80b5f80",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LaterSourceActualHalfHarmonicZeta/Variant933a9771f564bedc39f8963cd68a9aeaf07d540d42c4f4e6bbe0fdfb83628af7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e06bd06-9f51-a1e8-749e-4d13d5984f95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfHarmonicFractionalTail_bounds (L : ℕ) (hL : 1 ≤ L) :
    0 ≤ halfHarmonicFractionalTail L ∧
      halfHarmonicFractionalTail L ≤ 1 / Real.sqrt (L : ℝ) := by
  have hLR : (1 : ℝ) ≤ (L : ℝ) := by exact_mod_cast hL
  have ht := earlyFractionalDensity_tail_bounds hLR
  unfold halfHarmonicFractionalTail
  constructor
  · exact mul_nonneg (by norm_num) ht.1
  · calc
      _ ≤ (1 / 2 : ℝ) * (2 / Real.sqrt (L : ℝ)) :=
        mul_le_mul_of_nonneg_left ht.2 (by norm_num)
      _ = _ := by ring

/-- The actual finite half harmonic has a quantitative calibrated zeta remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LaterSourceActualHalfHarmonicZeta/Variant933a9771f564bedc39f8963cd68a9aeaf07d540d42c4f4e6bbe0fdfb83628af7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaterSourceActualHalfHarmonicZeta/Variant933a9771f564bedc39f8963cd68a9aeaf07d540d42c4f4e6bbe0fdfb83628af7.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fd6179e71ec68402403a148c97674d9f12f2c0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
