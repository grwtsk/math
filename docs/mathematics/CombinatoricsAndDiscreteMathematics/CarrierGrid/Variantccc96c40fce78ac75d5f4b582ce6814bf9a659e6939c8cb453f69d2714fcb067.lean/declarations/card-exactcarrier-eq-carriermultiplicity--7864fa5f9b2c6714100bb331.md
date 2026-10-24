# card_exactCarrier_eq_carrierMultiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dad23e9-7114-f408-9e36-1f6d8b5f6dbb",
  "kind": "theorem",
  "lexical_name": "card_exactCarrier_eq_carrierMultiplicity",
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
  "slug": "card-exactcarrier-eq-carriermultiplicity--7864fa5f9b2c6714100bb331",
  "source": {
    "blob": "532352edb4c09a07b85ea4a479de3d907284722c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 116,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7864fa5f9b2c6714100bb3314469dc82e9437f4e86c0b04d599ad2420bc58359",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dad23e9-7114-f408-9e36-1f6d8b5f6dbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_exactCarrier_eq_carrierMultiplicity {size : Nat}
    (point : NormalizedPoint) :
    Fintype.card { cell : GridCell size size // ExactCarrier size point cell } =
      carrierMultiplicity size point := by
  rw [Fintype.card_congr (exactCarrierEquivAxisCarriers point)]
  simp only [Fintype.card_prod]
  rw [Fintype.card_subtype, Fintype.card_subtype]
  simp [axisCarriers, carrierMultiplicity, Nat.mul_comm]

/-- Matching a cell barycenter implies membership in that cell's closed
support.  The converse fails on every non-barycentric point of the cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `532352edb4c09a07b85ea4a479de3d907284722c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
