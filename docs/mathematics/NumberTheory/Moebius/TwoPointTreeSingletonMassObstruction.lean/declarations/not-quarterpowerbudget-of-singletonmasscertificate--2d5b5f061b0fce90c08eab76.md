# not_quarterPowerBudget_of_singletonMassCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:286efe50-8198-9853-aab0-5a77349410ec",
  "kind": "theorem",
  "lexical_name": "not_quarterPowerBudget_of_singletonMassCertificate",
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
  "slug": "not-quarterpowerbudget-of-singletonmasscertificate--2d5b5f061b0fce90c08eab76",
  "source": {
    "blob": "df63aa2cc4c6b4b86fa35fe5e55314e766859d03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 181,
    "path": "GRWTSK/NumberTheory/Moebius/TwoPointTreeSingletonMassObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d5b5f061b0fce90c08eab768de9fd03368ec1414f2de0b6e322fc55e0729261",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TwoPointTreeSingletonMassObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:286efe50-8198-9853-aab0-5a77349410ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_quarterPowerBudget_of_singletonMassCertificate
    (cert : MertensSingletonMassRefutationCertificate) :
    ¬ QuarterPowerMertensCoordinateEnergyBudget := by
  rintro ⟨A, hA, hbudget⟩
  obtain ⟨j, hescape⟩ := cert.quarterPower_escape A hA
  have hsingle :=
    mertensTwoPointSingletonSquareMass_le_coordinateBlockEnergySum j
  have hdepth : 0 ≤ (j : ℝ) + 2 := by positivity
  have hscaled :
      ((j : ℝ) + 2) * mertensTwoPointSingletonSquareMass j ≤
        ((j : ℝ) + 2) *
          twoPointCoordinateBlockEnergySum
            moebiusReal moebiusReal j :=
    mul_le_mul_of_nonneg_left hsingle hdepth
  have hupper := hscaled.trans (hbudget j)
  exact (not_lt_of_ge hupper) hescape

/-- Scoped refutation of the complete unweighted coordinate/tree supplier,
conditional only on the explicit arithmetic singleton-mass certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TwoPointTreeSingletonMassObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TwoPointTreeSingletonMassObstruction.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df63aa2cc4c6b4b86fa35fe5e55314e766859d03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
