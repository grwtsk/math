# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.WitnessDischarge.Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49186bd91a02f760839cee65874772e4da7a983f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49186bd91a02f760839cee65874772e4da7a983f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ProofStrategy.CertifiedRoute` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AcceptedSeedRegistry](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8.lean/declarations/acceptedseedregistry--34f3cb3d2d633a608564e9a1.md) | 19 | `declaration-track:34f3cb3d2d633a608564e9a1cb965a8f1534a039ce8b138c7fb393c6731d51a3` |
| 2 | `inductive` | [Derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8.lean/declarations/derivation--417892278d31627fca898c0b.md) | 26 | `declaration-track:417892278d31627fca898c0b1839a80de6fc4eacc732147d4976b4c22cd6e122` |
| 3 | `theorem` | [proves](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8.lean/declarations/proves--c49f5edaaf2758594bbaad00.md) | 51 | `result-track:c49f5edaaf2758594bbaad00ff62efb1ecbc4ca53888d8c4e197ffcb85e8b05c` |
| 4 | `def` | [Discharged](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8.lean/declarations/discharged--ee353eae691da8b4512c1276.md) | 71 | `declaration-track:ee353eae691da8b4512c12768cd67503f54d1721e588aa543ed7c5b1f57cdd0e` |
| 5 | `theorem` | [acceptedSeed_discharged](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8.lean/declarations/acceptedseed-discharged--56bcf6cd4b328f27f6867d46.md) | 83 | `result-track:56bcf6cd4b328f27f6867d4659f51d5ac9cba10ec0000188284ecca48e2878c1` |
| 6 | `theorem` | [usableRoute_discharged](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8.lean/declarations/usableroute-discharged--bc046ca80817c2a3f82b78df.md) | 97 | `result-track:bc046ca80817c2a3f82b78df215958dca158c211a442e4e4dacf50633e13f8d4` |
| 7 | `theorem` | [discharged_proves](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8.lean/declarations/discharged-proves--cf90d91e1613a5f667f15a9a.md) | 117 | `result-track:cf90d91e1613a5f667f15a9a91de90132d2079a257a87851f9091b08d15496f9` |
| 8 | `theorem` | [rejectedStatement_not_discharged](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/WitnessDischarge/Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8.lean/declarations/rejectedstatement-not-discharged--c89a4f02a5836cf3226f9c30.md) | 132 | `result-track:c89a4f02a5836cf3226f9c30886df89f4143510da37ad06cf574bef71477b0f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
