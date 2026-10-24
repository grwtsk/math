# actualPsiFloor_pairing_density_negative_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ccf83bf-cbbb-1f82-997a-aac26767e19f",
  "kind": "theorem",
  "lexical_name": "actualPsiFloor_pairing_density_negative_block",
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
  "slug": "actualpsifloor-pairing-density-negative-block--8981ce6a7ab4cb9df49c9b0b",
  "source": {
    "blob": "c5bd89a7525bd3425498ee74916c2a248c6c970f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPsiFloorKernelSignChallenge/Varianta86fbd0a2475a27b9e4ec9160f500b9be193fe73746e7846dd0166f2c5a2991b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8981ce6a7ab4cb9df49c9b0bf07848fa92a2b254b2cb3c047d8b1601eb3d120f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPsiFloorKernelSignChallenge/Varianta86fbd0a2475a27b9e4ec9160f500b9be193fe73746e7846dd0166f2c5a2991b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ccf83bf-cbbb-1f82-997a-aac26767e19f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsiFloor_pairing_density_negative_block {A x : ℝ} (hA : 91 ≤ A)
    (hx : 6 ≤ x) (hx7 : x < 7) : -actualPsiFloorDensity A x < 0 := by
  have ha := actual_psi_floor_negative_block x hx hx7
  change Chebyshev.psi x - (⌊x⌋₊ : ℝ) < -1 at ha
  have hd := actualPsiFloor_small_block_derivative_neg hA
    (by linarith : 1 ≤ x) (by linarith : x ≤ 20)
  have hm := mul_pos_of_neg_of_neg
    (show Chebyshev.psi x - (⌊x⌋₊ : ℝ) < 0 by linarith) hd
  unfold actualPsiFloorDensity
  linarith

/-- Actual weighted pairing density is positive after the retained prime-nineteen jump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPsiFloorKernelSignChallenge/Varianta86fbd0a2475a27b9e4ec9160f500b9be193fe73746e7846dd0166f2c5a2991b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPsiFloorKernelSignChallenge/Varianta86fbd0a2475a27b9e4ec9160f500b9be193fe73746e7846dd0166f2c5a2991b.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5bd89a7525bd3425498ee74916c2a248c6c970f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
