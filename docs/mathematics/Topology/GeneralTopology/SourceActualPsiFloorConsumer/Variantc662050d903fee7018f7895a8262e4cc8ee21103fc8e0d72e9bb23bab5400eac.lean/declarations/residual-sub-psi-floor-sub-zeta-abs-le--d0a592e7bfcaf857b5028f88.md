# residual_sub_psi_floor_sub_zeta_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd83679b-77fc-367a-dd29-50aead45bf92",
  "kind": "theorem",
  "lexical_name": "residual_sub_psi_floor_sub_zeta_abs_le",
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
  "slug": "residual-sub-psi-floor-sub-zeta-abs-le--d0a592e7bfcaf857b5028f88",
  "source": {
    "blob": "232c6ddcd7dc6cbad1e8d62fe213769343a51ed9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variantc662050d903fee7018f7895a8262e4cc8ee21103fc8e0d72e9bb23bab5400eac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0a592e7bfcaf857b5028f887a0bb1ed1c5c2bc3e8eef4e1512bbc49371e5a62",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variantc662050d903fee7018f7895a8262e4cc8ee21103fc8e0d72e9bb23bab5400eac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd83679b-77fc-367a-dd29-50aead45bf92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_sub_psi_floor_sub_zeta_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |mertensResidual A - actualPsiFloorPairing A - (riemannZeta (1 / 2 : ℂ)).re| ≤
      260 / A ^ 2 + 960 * 67 / A ^ 3 + fullKappaShortBudget A +
        fiveCancelledFactorialBudget A := by
  have hc := residual_sub_pairing_sub_zeta_abs_le hA
  have hp := complete_pairing_sub_psi_floor_abs_le hA
  have ht := abs_add_le
    (mertensResidual A - completeCorrectedAbelPairing A - (riemannZeta (1 / 2 : ℂ)).re)
    (completeCorrectedAbelPairing A - actualPsiFloorPairing A)
  have he : (mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2 : ℂ)).re) +
        (completeCorrectedAbelPairing A - actualPsiFloorPairing A) =
      mertensResidual A - actualPsiFloorPairing A - (riemannZeta (1 / 2 : ℂ)).re := by ring
  rw [he] at ht
  linarith

/-- The unchanged original residual has vanishing error relative to the true arithmetic pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variantc662050d903fee7018f7895a8262e4cc8ee21103fc8e0d72e9bb23bab5400eac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variantc662050d903fee7018f7895a8262e4cc8ee21103fc8e0d72e9bb23bab5400eac.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `232c6ddcd7dc6cbad1e8d62fe213769343a51ed9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
