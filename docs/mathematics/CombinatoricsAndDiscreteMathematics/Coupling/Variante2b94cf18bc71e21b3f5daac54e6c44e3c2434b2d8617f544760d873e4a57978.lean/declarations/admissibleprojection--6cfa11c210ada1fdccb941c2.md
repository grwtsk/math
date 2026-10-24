# AdmissibleProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e5b7e0216d7f70460d308053d59ccb8acccf9cd926803da81d51b659c140efb",
  "kind": "structure",
  "lexical_name": "AdmissibleProjection",
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
  "slug": "admissibleprojection--6cfa11c210ada1fdccb941c2",
  "source": {
    "blob": "6e9d33b7d6235709ae778962d5cfc20ee8167f6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cfa11c210ada1fdccb941c29da224d22d26ec8929cac1409b0c6a4bb8007a8f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e5b7e0216d7f70460d308053d59ccb8acccf9cd926803da81d51b659c140efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AdmissibleProjection
    (Model : Type*) [Fintype Model] [DecidableEq Model]
    (template : CouplingWeightState Model)
    (metric : WeightDistance Model) where
  project : RawWeightState Model → CouplingWeightState Model
  sameActive : ∀ raw, (project raw).activeModels = template.activeModels
  sameRegion : ∀ raw, (project raw).activeRegionIdentity = template.activeRegionIdentity
  samePolicy : ∀ raw, (project raw).policyIdentity = template.policyIdentity
  fixedOnAdmissible : ∀ accepted, project accepted.weight = accepted
  nonexpansive :
    ∀ left right,
      metric.distance (project left).weight (project right).weight ≤
        metric.distance left right

/-- Projection always produces an admissible coupling state by construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variante2b94cf18bc71e21b3f5daac54e6c44e3c2434b2d8617f544760d873e4a57978.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e9d33b7d6235709ae778962d5cfc20ee8167f6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
