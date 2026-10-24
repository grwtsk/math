# residual_sub_pairing_sub_zeta_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31ac199d-2985-530b-f05c-84cbbe3ffcce",
  "kind": "theorem",
  "lexical_name": "residual_sub_pairing_sub_zeta_abs_le",
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
  "slug": "residual-sub-pairing-sub-zeta-abs-le--a6b9147046f1ff5cf75522a2",
  "source": {
    "blob": "9a60397f724c785ea57bcdfd7c160a996f8289a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantf40365858737599207e620f499e8da0836d1bb4109ee9370b07fe0dcef6dcbf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6b9147046f1ff5cf75522a2c8ed7a035fa0023d74688bdbec6f3a487ebee618",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantf40365858737599207e620f499e8da0836d1bb4109ee9370b07fe0dcef6dcbf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31ac199d-2985-530b-f05c-84cbbe3ffcce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_sub_pairing_sub_zeta_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2 : ℂ)).re| ≤ 260 / A ^ 2 + 960 * 67 / A ^ 3 := by
  have hc := actual_calibration_260 (by linarith : 1 ≤ A)
  have hi := integerJ_sub_complete_pairing_abs_le A hA
  have ht := abs_add_le
    (mertensResidual A - integerJ A - (riemannZeta (1 / 2 : ℂ)).re)
    (integerJ A - completeCorrectedAbelPairing A)
  have he : mertensResidual A - completeCorrectedAbelPairing A -
      (riemannZeta (1 / 2 : ℂ)).re =
      (mertensResidual A - integerJ A - (riemannZeta (1 / 2 : ℂ)).re) +
        (integerJ A - completeCorrectedAbelPairing A) := by ring
  rw [← he] at ht
  linarith

/-- Every real scale keeps actual Moebius signs, the full tail and all head errors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantf40365858737599207e620f499e8da0836d1bb4109ee9370b07fe0dcef6dcbf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualLeadingAsymptotic/Variantf40365858737599207e620f499e8da0836d1bb4109ee9370b07fe0dcef6dcbf6.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a60397f724c785ea57bcdfd7c160a996f8289a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
