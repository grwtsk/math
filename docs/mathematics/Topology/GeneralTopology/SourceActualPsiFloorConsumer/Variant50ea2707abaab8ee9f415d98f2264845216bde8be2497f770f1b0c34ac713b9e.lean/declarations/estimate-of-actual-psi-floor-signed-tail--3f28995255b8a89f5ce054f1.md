# estimate_of_actual_psi_floor_signed_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1254cf72-23b4-62c9-4f0e-3c92b1ea9371",
  "kind": "theorem",
  "lexical_name": "estimate_of_actual_psi_floor_signed_tail",
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
  "slug": "estimate-of-actual-psi-floor-signed-tail--3f28995255b8a89f5ce054f1",
  "source": {
    "blob": "405f95b8df75d5c7cfdeb6d825465f7e1eda68c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 187,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant50ea2707abaab8ee9f415d98f2264845216bde8be2497f770f1b0c34ac713b9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f28995255b8a89f5ce054f1440189e5aa22ef5f24d01b4c42472653cc632bd8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant50ea2707abaab8ee9f415d98f2264845216bde8be2497f770f1b0c34ac713b9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1254cf72-23b4-62c9-4f0e-3c92b1ea9371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_actual_psi_floor_signed_tail {K R : ℝ} (hR : 25600 ≤ R)
    (hpsi : ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_complete_corrected_signed_tail (K := K + 70) (by linarith : 117 ≤ R)
  intro A hRA
  have he := abs_le.mp (complete_pairing_sub_psi_floor_abs_le_seventy (hR.trans hRA))
  have hk := hpsi A hRA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualPsiFloorConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant50ea2707abaab8ee9f415d98f2264845216bde8be2497f770f1b0c34ac713b9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant50ea2707abaab8ee9f415d98f2264845216bde8be2497f770f1b0c34ac713b9e.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `405f95b8df75d5c7cfdeb6d825465f7e1eda68c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
