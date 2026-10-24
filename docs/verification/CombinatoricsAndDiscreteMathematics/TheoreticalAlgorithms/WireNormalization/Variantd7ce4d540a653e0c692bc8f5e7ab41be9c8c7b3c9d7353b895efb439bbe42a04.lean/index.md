# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.WireNormalization.Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02e316e9d179ade80dd8ef9311f8f1c46e70f94c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02e316e9d179ade80dd8ef9311f8f1c46e70f94c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WireTerm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/wireterm--523d683b7945ee4cb5d505bb.md) | 19 | `declaration-track:523d683b7945ee4cb5d505bb75bf9dde2828c989ffd734e2f343b17d08cc179a` |
| 2 | `def` | [WireTerm.decode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/wireterm-decode--cdbd64890449582346de1727.md) | 25 | `declaration-track:cdbd64890449582346de1727ac6074675a5843f35f96d586219d20cfc7c305b2` |
| 3 | `def` | [WireTerm.encode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/wireterm-encode--dd986da84f7783f30428c004.md) | 30 | `declaration-track:dd986da84f7783f30428c004515b49067c3df6b25f9d09503c19b28fc747b163` |
| 4 | `theorem` | [decode_encode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/decode-encode--bf766704d68fdde6f5743345.md) | 35 | `result-track:bf766704d68fdde6f5743345db3486013e23dcfcaac7634e617dac6648c26056` |
| 5 | `theorem` | [encode_decode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/encode-decode--5a407e315636d50733f48b9e.md) | 41 | `result-track:5a407e315636d50733f48b9e00eea52353536f53749c7ae3022d4ec15a8cebf7` |
| 6 | `def` | [WireTerm.nodeCost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/wireterm-nodecost--a814f4eae0213939b9515df4.md) | 47 | `declaration-track:a814f4eae0213939b9515df445a03191fc2cc7773cac67754522dd7caff2ab69` |
| 7 | `theorem` | [nodeCost_eq_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/nodecost-eq-size--eb6ffa4246a0f1a18b69ad67.md) | 52 | `result-track:eb6ffa4246a0f1a18b69ad67869a06b86935ed0a6e5834c13ed24f719bc461ac` |
| 8 | `structure` | [Packet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/packet--9f74d87ce1da8ae87570fa62.md) | 58 | `declaration-track:9f74d87ce1da8ae87570fa62a5f5059587851d3530040f32481e44140c867c5b` |
| 9 | `def` | [PacketValid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/packetvalid--985731773d8a6ed7834c53ff.md) | 65 | `declaration-track:985731773d8a6ed7834c53ffb687fa1e0ece61adb2f07545a642893b01562291` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/instance--388c33066fae965cf6adfa91.md) | 71 | `declaration-track:388c33066fae965cf6adfa9161dfda7c6a00940a6d8478dae179336fbfec3900` |
| 11 | `def` | [checkPacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/checkpacket--9bd1a2256ff52eb0f406652c.md) | 74 | `declaration-track:9bd1a2256ff52eb0f406652ca3a8da525d020a8d940c80bc6bd4d90572643c77` |
| 12 | `theorem` | [checkPacket_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/checkpacket-correct--4c70e3f9e1d59cc91bc985c6.md) | 76 | `result-track:4c70e3f9e1d59cc91bc985c6ce1038989412f1452cc789b15155a508be980937` |
| 13 | `structure` | [CheckedPacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/checkedpacket--6aadf34de53f6ac605451d4c.md) | 79 | `declaration-track:6aadf34de53f6ac605451d4c856b34d3e13dbc3660d0f7ca421640cdc52c0a5b` |
| 14 | `def` | [admitPacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/admitpacket--3820699838a13f5625adf601.md) | 83 | `declaration-track:3820699838a13f5625adf601d6143ffa9ed28731b4bf3ad7af4a00016050c334` |
| 15 | `theorem` | [admitPacket_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/admitpacket-sound--eaecca915eb37805db3f7011.md) | 87 | `result-track:eaecca915eb37805db3f70110d1c3dc72d2087652a8511da4185cf64843302b1` |
| 16 | `def` | [normalizePacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/normalizepacket--b08fe838a24ca43af6949750.md) | 95 | `declaration-track:b08fe838a24ca43af6949750a3ed09d88b62547f4960fd83574aea9adc32710f` |
| 17 | `theorem` | [normalizePacket_valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/normalizepacket-valid--9adf29745caaa6cfabcbd4b3.md) | 99 | `result-track:9adf29745caaa6cfabcbd4b35453a3f2607b0f0858e12da276d98c553a6577e2` |
| 18 | `theorem` | [normalizePacket_semantics](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/normalizepacket-semantics--5856c964502aa328f27e7f8c.md) | 113 | `result-track:5856c964502aa328f27e7f8c300c74ea7ffd854f9502e0f42fdd26a921eebc33` |
| 19 | `theorem` | [normalizePacket_readout](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/normalizepacket-readout--2b971220e19049e72eb64195.md) | 124 | `result-track:2b971220e19049e72eb64195328562c96200bdecb33e27c696225abc2e73612e` |
| 20 | `def` | [fixture](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/fixture--6786a441b3c3f0ff31f2dfa4.md) | 131 | `declaration-track:6786a441b3c3f0ff31f2dfa4aca3a30a2cb8e7f75592a091c5c960250395091a` |
| 21 | `theorem` | [fixture_admitted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/fixture-admitted--b8a9d0b6d66e826e8bf8f56d.md) | 135 | `result-track:b8a9d0b6d66e826e8bf8f56dda2221ccab1cd463d77454377f2013e62a545443` |
| 22 | `def` | [checkedFixture](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/checkedfixture--abf4e4af8160e96898a995af.md) | 137 | `declaration-track:abf4e4af8160e96898a995afc49eb8d067a98210f33f6f2fcbe9c1df277c2560` |
| 23 | `theorem` | [fixture_normalized](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/fixture-normalized--91153ab89c8d14752688d41d.md) | 139 | `result-track:91153ab89c8d14752688d41d734f45cdc7986f339f8e433f91094f072a1665ea` |
| 24 | `theorem` | [wrong_context_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/wrong-context-rejected--b771a2ae11f81c4e857d55e4.md) | 144 | `result-track:b771a2ae11f81c4e857d55e4fb5496030f38927fe7ba347f9ea060487336f643` |
| 25 | `theorem` | [undeclared_constructor_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/undeclared-constructor-rejected--b58d7fc86d52a253156d130d.md) | 146 | `result-track:b58d7fc86d52a253156d130da9c49f44aba81da6eff70925b8071e9a0b4ff565` |
| 26 | `theorem` | [changed_source_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean/declarations/changed-source-rejected--0337d388c39f5d484792a94a.md) | 149 | `result-track:0337d388c39f5d484792a94af90afbd4b5a926aca7aaee57d172a716b95bc43c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
