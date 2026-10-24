# transported_jet_edge_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0a787c3-e3d5-826f-cc3d-588ef8f9a3c7",
  "kind": "theorem",
  "lexical_name": "transported_jet_edge_abs_le",
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
  "slug": "transported-jet-edge-abs-le--cd080aacdad9b13dd607c50b",
  "source": {
    "blob": "5149a9d18c65b6412a4d6139b41b7a742e83c510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 246,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd080aacdad9b13dd607c50bc63b1586778f6f40aac3501b0466ec31ae9a5a62",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0a787c3-e3d5-826f-cc3d-588ef8f9a3c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem transported_jet_edge_abs_le {A z : ℝ} (hA : 91 ≤ A) (hz : z ≤ 2 * A) :
    |actualPeriodicTransportJet A z| ≤ 67 / A ^ 4 *
      (1 + (3 / 2 : ℝ) * (2 * A - z) + (2 * A - z) ^ 2 / 8 +
        (2 * A - z) ^ 3 / 16) := by
  have h4 := actual_correlation_iterated_fourth_abs_le_sixty_seven A z hA
  have h3 := actual_correlation_third_edge_abs_le hA hz
  have h2 := actual_correlation_second_edge_abs_le (z := z) hA
  have h1 := actual_correlation_first_edge_abs_le hA hz
  have h1' : |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z| ≤
      67 / A ^ 4 * (2 * A - z) ^ 3 / 6 := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using h1
  unfold actualPeriodicTransportJet
  apply (abs_add_le _ _).trans
  have hh := abs_sub
    (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) z -
      (3 / 2 : ℝ) * iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z)
    (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z / 4)
  have hg := abs_sub (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) z)
    ((3 / 2 : ℝ) * iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z)
  simp only [abs_mul, abs_div, abs_of_pos (by norm_num : 0 < (3 / 2 : ℝ)),
    abs_of_pos (by norm_num : 0 < (3 / 8 : ℝ)),
    abs_of_pos (by norm_num : 0 < (4 : ℝ))] at *
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudget/Variantd24c996b436de6557cd171366113c2c5dc51eefba8ea0d0a4063bfdffce10c73.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5149a9d18c65b6412a4d6139b41b7a742e83c510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
