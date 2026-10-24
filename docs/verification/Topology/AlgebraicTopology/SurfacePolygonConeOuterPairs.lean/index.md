# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeOuterPairs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c99a603d897ad3a9470fad0fafc0ad459f1464a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c99a603d897ad3a9470fad0fafc0ad459f1464a`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeFilledQuotient`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerConePoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/declarations/outerconepoint--5317c9edccf640eb1ebf0f70.md) | 38 | `declaration-track:5317c9edccf640eb1ebf0f7032c412ebd86bb30577c39e26e6aeff941ec7b7cd` |
| 2 | `theorem` | [outerConePoint_eq_boundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/declarations/outerconepoint-eq-boundary--9961f814bf5c6e19366ed088.md) | 41 | `result-track:9961f814bf5c6e19366ed088d9cbbf4b30814783d1142ea2ceb17e6e4fd667f9` |
| 3 | `inductive` | [ConeOuterPairStep](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/declarations/coneouterpairstep--b464fc7ceacda7bff973f193.md) | 46 | `declaration-track:b464fc7ceacda7bff973f1930d866f58f326f8f958dbf06ca810cddc0ec448a9` |
| 4 | `def` | [ConeOuterConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/declarations/coneouterconnected--141cc0a3434acf0bdea61b87.md) | 57 | `declaration-track:141cc0a3434acf0bdea61b87ddf558201f42cb3b011a3b92e1522d08689cd62a` |
| 5 | `def` | [coneOuterPairSetoid](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/declarations/coneouterpairsetoid--507e5c3604e3040847bd11ab.md) | 61 | `declaration-track:507e5c3604e3040847bd11abfbfe7d653d8bd9740f5ae85546c460d42c7dc555` |
| 6 | `theorem` | [coneToFilled_respects_outerStep](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/declarations/conetofilled-respects-outerstep--a188bfe7b8ac29007a0888be.md) | 68 | `result-track:a188bfe7b8ac29007a0888bee355c9fb3216f553944355de02da7672afef7d38` |
| 7 | `theorem` | [coneToFilled_respects_outerConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/declarations/conetofilled-respects-outerconnected--d8c2da3f1778b06f3f674c39.md) | 83 | `result-track:d8c2da3f1778b06f3f674c39afac0171f4186b00bda26a6213c761d68a072d9d` |
| 8 | `def` | [outerPairedConeToFilled](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/declarations/outerpairedconetofilled--47b6c868f8e63f3dce79d674.md) | 94 | `declaration-track:47b6c868f8e63f3dce79d674c1951ae16bf6fb7390c90e5d9981a3c446e7a731` |
| 9 | `theorem` | [outerPairedConeToFilled_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/declarations/outerpairedconetofilled-projection--5cb68822fecc06777c9aad0f.md) | 99 | `result-track:5cb68822fecc06777c9aad0f0613c40e67874697a083d6656c50e9bcec58c3d6` |
| 10 | `theorem` | [outerPairedConeToFilled_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/declarations/outerpairedconetofilled-surjective--7c89e2658dcb542025c37b5b.md) | 106 | `result-track:7c89e2658dcb542025c37b5b742b89327c63e838d18acd4e5a25779b11c481d5` |
| 11 | `theorem` | [outerStep_preserves_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/declarations/outerstep-preserves-radius--d8abf5379cc238670bfe337e.md) | 115 | `result-track:d8abf5379cc238670bfe337e59c6f8255abded58e046d25cc0936955cfb2d3d2` |
| 12 | `theorem` | [outerConnected_preserves_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeOuterPairs.lean/declarations/outerconnected-preserves-radius--331d1d648cd3aff0e9b2c823.md) | 123 | `result-track:331d1d648cd3aff0e9b2c823959af024b0ed726512cddab61ca8b331289a4af5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
