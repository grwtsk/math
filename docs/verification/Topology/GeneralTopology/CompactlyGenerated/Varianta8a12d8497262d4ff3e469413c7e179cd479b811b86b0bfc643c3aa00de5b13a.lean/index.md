# Verification target: GRWTSK.Topology.GeneralTopology.CompactlyGenerated.Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c24840e591150334410d13259adc0b00194c6d4b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c24840e591150334410d13259adc0b00194c6d4b`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.CompactlyGeneratedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompactlyGenerated](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/compactlygenerated--fa0705e3974fc7ee857fa730.md) | 37 | `declaration-track:fa0705e3974fc7ee857fa7307160f9c7b4736eb704b4f73ab6994e96d9792115` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/instance--ef419ab93f95b78f649ad44d.md) | 45 | `declaration-track:ef419ab93f95b78f649ad44dd93e9d4aa5c9a476a02b78967e1fa33831f82c36` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/instance--a972428432a25f5233e3a20f.md) | 48 | `declaration-track:a972428432a25f5233e3a20fa04464bac968744d27493bec30752149e53c3b24` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/instance--61e8c630ba346a114cb1bdae.md) | 53 | `declaration-track:61e8c630ba346a114cb1bdae41f9ec1163865c8ad383501899cf95386dc65c00` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/instance--cf9fda5f9ce297e07b574d78.md) | 56 | `declaration-track:cf9fda5f9ce297e07b574d787ad4ecae594198b872caea96ca5b74c0df841665` |
| 6 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/of--00b2317034afe319f81ca8f6.md) | 62 | `declaration-track:00b2317034afe319f81ca8f60fdfde561e020bd74e9a702e838e3e69e55d226b` |
| 7 | `abbrev` | [ofHom](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/ofhom--1ef07f6d1aadc35217744f11.md) | 71 | `declaration-track:1ef07f6d1aadc35217744f1169269cce632c26fbc159cf53f86bd164bc935731` |
| 8 | `def` | [compactlyGeneratedToTop](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/compactlygeneratedtotop--a139d7351dd2029d55ddfdd1.md) | 77 | `declaration-track:a139d7351dd2029d55ddfdd1584c60dc2c5a18c88642232245b2288dad982282` |
| 9 | `def` | [fullyFaithfulCompactlyGeneratedToTop](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/fullyfaithfulcompactlygeneratedtotop--1966d1fee93b3445918ecb59.md) | 81 | `declaration-track:1966d1fee93b3445918ecb595f9a49d2a2a33c9970d840b78d423babf31e4fb8` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/instance--2700548191ba4483bd6ae1ab.md) | 84 | `declaration-track:2700548191ba4483bd6ae1ab9066418db431309195c9a00959b110eb9f56c1a3` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/instance--d21bc33231b8b4de08c3a051.md) | 86 | `declaration-track:d21bc33231b8b4de08c3a051f68b3680680e9d0583894437f13682eb1858984e` |
| 12 | `def` | [isoOfHomeo](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/isoofhomeo--927e72568ae110e96ffb8079.md) | 90 | `declaration-track:927e72568ae110e96ffb80794551398d3e35cfdd9192d094b459b19d7b27ce26` |
| 13 | `def` | [homeoOfIso](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/homeoofiso--c4c1fb0417e83b6a1f9c3928.md) | 102 | `declaration-track:c4c1fb0417e83b6a1f9c3928fb6bd0622e07e2fca570dbca414747e3e89e30ce` |
| 14 | `def` | [isoEquivHomeo](../../../../../mathematics/Topology/GeneralTopology/CompactlyGenerated/Varianta8a12d8497262d4ff3e469413c7e179cd479b811b86b0bfc643c3aa00de5b13a.lean/declarations/isoequivhomeo--937f1122df3a9c086a6e889e.md) | 113 | `declaration-track:937f1122df3a9c086a6e889ea832bc58cfa1608aa9b4ca7edb870c23b3bd377d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
