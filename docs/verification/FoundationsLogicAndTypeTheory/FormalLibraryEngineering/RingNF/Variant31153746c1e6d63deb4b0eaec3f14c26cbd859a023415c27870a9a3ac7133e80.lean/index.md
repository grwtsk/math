# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RingNF.Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72bc943d94750b206fb2f4ebaf7260a9279eee63",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72bc943d94750b206fb2f4ebaf7260a9279eee63`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean.json)

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
| 1 | `inductive` | [RingMode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/ringmode--e1799b34d96a2a92fdc9e4a7.md) | 32 | `declaration-track:e1799b34d96a2a92fdc9e4a72393d0e468c209391625ebc28eac1c642094c020` |
| 2 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/config--8904bafe0adea23d2e785223.md) | 40 | `declaration-track:8904bafe0adea23d2e78522317e8fa9e39161ab5b8768c3a37a5ed607eddf68a` |
| 3 | `def` | [evalExpr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/evalexpr--d9404ee255359df87afacfa0.md) | 60 | `declaration-track:d9404ee255359df87afacfa09dbbd4be432e55b7ceecc3fe0b3aebe3c74f38e5` |
| 4 | `def` | [evalExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/evalexpr--cc493e2f882614fc57b0e258.md) | 83 | `declaration-track:cc493e2f882614fc57b0e258ebe15593e91e4a50d982861a6f6e5d840ee75891` |
| 5 | `theorem` | [add_assoc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/add-assoc-rev--830d9e4f56283716b09d4d98.md) | 89 | `result-track:830d9e4f56283716b09d4d984b9aa02fc3ac44ec0dda5a11b7a1134a4d612640` |
| 6 | `theorem` | [mul_assoc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/mul-assoc-rev--1e8e549be22bb3cdb37788aa.md) | 90 | `result-track:1e8e549be22bb3cdb37788aa5757cbade995c51a696f85fbe7689910ea9dea7c` |
| 7 | `theorem` | [mul_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/mul-neg--d1ef9f6eebb924b943a6c314.md) | 91 | `result-track:d1ef9f6eebb924b943a6c3140ebcd5d9747747fdf2cf265e1e11a6aa1bf3b133` |
| 8 | `theorem` | [add_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/add-neg--bacf72cdd452060a364c4e42.md) | 92 | `result-track:bacf72cdd452060a364c4e42bc347e94b48680d6a3a04aff195916e6ed6d8eed` |
| 9 | `theorem` | [nat_rawCast_0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/nat-rawcast-0--da7c1162c86840fd42b8cac8.md) | 93 | `result-track:da7c1162c86840fd42b8cac843c85042edaabf36e37ba5b410a82946d1e74ada` |
| 10 | `theorem` | [nat_rawCast_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/nat-rawcast-1--ad94d99d5c4000d49fc0afec.md) | 94 | `result-track:ad94d99d5c4000d49fc0afec593595cef74f5309bbd2a1c50c5ea945842a1586` |
| 11 | `theorem` | [nat_rawCast_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/nat-rawcast-2--cebc9520df3f4055872bea4f.md) | 95 | `result-track:cebc9520df3f4055872bea4fd4cf6205c023d98cadcbf58cbddced7f1a203eda` |
| 12 | `theorem` | [int_rawCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/int-rawcast-neg--f3930b88d8deace6d0dc4a58.md) | 96 | `result-track:f3930b88d8deace6d0dc4a58ba9dc2813c1df95885133571805991d419931b7d` |
| 13 | `theorem` | [nnrat_rawCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/nnrat-rawcast--bd02aa550bafed76d2e1f57c.md) | 97 | `result-track:bd02aa550bafed76d2e1f57cb5770819e3411030903ad00248f275c2bacbfb2b` |
| 14 | `theorem` | [rat_rawCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/rat-rawcast-neg--d84713b6ca800504768d718a.md) | 99 | `result-track:d84713b6ca800504768d718a928fd8b28e4d21d4bffd87b98d8b9f9c1032f0f9` |
| 15 | `def` | [cleanup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/cleanup--389b09b842be0c7d3cdefc64.md) | 103 | `declaration-track:389b09b842be0c7d3cdefc64592c90dc291f7e49d22edeba24f7afd7d51f57ba` |
| 16 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/initialize--1eb8eb7b452ba9c024f6fd29.md) | 120 | `declaration-track:1eb8eb7b452ba9c024f6fd2955444358adc873a80c79ba79b97371c0b4451ea9` |
| 17 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/elab--c49cde560140858b6f73f826.md) | 147 | `declaration-track:c49cde560140858b6f73f8269bbedc5e38d2ff9c1949ea9c6b20fdf9196e665d` |
| 18 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/macro--152a15581826ed285b0ab9d6.md) | 155 | `declaration-track:152a15581826ed285b0ab9d6c01f72da0e2e39fab2e0d711041a54482e0e3005` |
| 19 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/syntax--3ee485689368698167cfecf5.md) | 158 | `declaration-track:3ee485689368698167cfecf52d05dd6491b22d091a5a274c2b04742bcbf2346d` |
| 20 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/elab--7169de61780dba29abed4446.md) | 168 | `declaration-track:7169de61780dba29abed44467da1b24da131418b6b22e44d06b1cc9498f1ffdd` |
| 21 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/macro--9d1f7d42df50272091b46324.md) | 176 | `declaration-track:9d1f7d42df50272091b46324fc4021a2a29d79969922a33dd1ab717fe395f736` |
| 22 | `def` | [elabRingNFConv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/elabringnfconv--e0dbc7b0967b9491ce04c2fe.md) | 180 | `declaration-track:e0dbc7b0967b9491ce04c2fec227e17dda6d1fb96a2bcd490996f957dca53e33` |
| 23 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/macro--7e86f7c38b84ee14ee670b5c.md) | 190 | `declaration-track:7e86f7c38b84ee14ee670b5c771f921a1f2affc9e30ea2e65ae1232dc5893dd5` |
| 24 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/macro--19eabbf3f2286ace1097732b.md) | 208 | `declaration-track:19eabbf3f2286ace1097732bd12b307724082d0f57ddd7b1b62aa58f4fb40dd9` |
| 25 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/macro--7185b297d0cbed2fc08869d9.md) | 214 | `declaration-track:7185b297d0cbed2fc08869d9cd745a0709cb91edba8cd4055e38d7d10dec79f7` |
| 26 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/macro--98ed5e0a8acdf5886e6a7d7b.md) | 227 | `declaration-track:98ed5e0a8acdf5886e6a7d7bd259a115f0f43b8ca5f3f79f58ce0d3db949558e` |
| 27 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingNF/Variant31153746c1e6d63deb4b0eaec3f14c26cbd859a023415c27870a9a3ac7133e80.lean/declarations/macro--ced60a26c1453a92c51b1239.md) | 233 | `declaration-track:ced60a26c1453a92c51b1239332bda223c397eed3b3a346540dc8bbce686d85a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
