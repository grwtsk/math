# Verification target: GRWTSK.Topology.GeneralTopology.Lemmas.Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7a59d0427ebce7447368cbc771063f975ea2f62",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7a59d0427ebce7447368cbc771063f975ea2f62`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_nhdsGT_of_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/declarations/tendsto-nhdsgt-of-tendsto-attop--04e9f7f0363ee514abb05987.md) | 43 | `result-track:04e9f7f0363ee514abb059879563756ee25b88a17b14814f254d30356d9a939a` |
| 2 | `theorem` | [tendsto_nhdsLT_of_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/declarations/tendsto-nhdslt-of-tendsto-attop--0758abd215434c452e2ceb24.md) | 47 | `result-track:0758abd215434c452e2ceb24ad1d4326fc472bf055339ad3b913f5aa2cd8e9be` |
| 3 | `theorem` | [tendsto_nhdsNE_of_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/declarations/tendsto-nhdsne-of-tendsto-attop--def9df70e5a41e0d1e66ef9b.md) | 54 | `result-track:def9df70e5a41e0d1e66ef9b4d2b5e8e532a7c4d76abd430e049e5719fc84cb9` |
| 4 | `theorem` | [tendsto_nhdsNE_of_tendsto_atTop_nhds_of_eq](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/declarations/tendsto-nhdsne-of-tendsto-attop-nhds-of-eq--6d1f86da66fba66cf3f61fcb.md) | 60 | `result-track:6d1f86da66fba66cf3f61fcbfa34ba09a56ee28344d3b794e3b37627e525c3c4` |
| 5 | `theorem` | [isBigOWith_of_tendsto_top](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/declarations/isbigowith-of-tendsto-top--fd053c7221213c97e1101418.md) | 67 | `result-track:fd053c7221213c97e11014188e88427997849a6484544e8ff4b0a32e07ef7ad6` |
| 6 | `theorem` | [isBigOWith_of_tendsto_bot](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/declarations/isbigowith-of-tendsto-bot--ade2a6a63b462e085f0d715a.md) | 72 | `result-track:ade2a6a63b462e085f0d715adef683279d0517842473acf77c0a69886472cc6a` |
| 7 | `theorem` | [isBigO_of_div_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/declarations/isbigo-of-div-tendsto-attop--200d4315caa9b17710eb18e1.md) | 77 | `result-track:200d4315caa9b17710eb18e1a002607a4550afe98f16d55d000db968329cb895` |
| 8 | `theorem` | [isBigO_of_div_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/declarations/isbigo-of-div-tendsto-atbot--b7f404488d69d24c5a42ca4a.md) | 82 | `result-track:b7f404488d69d24c5a42ca4aded4929bd00b65de9ec6c5509cd058adbed71ca5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
