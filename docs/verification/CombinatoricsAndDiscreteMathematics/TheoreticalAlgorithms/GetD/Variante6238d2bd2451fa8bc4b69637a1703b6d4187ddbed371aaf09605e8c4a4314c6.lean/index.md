# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetD.Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2e36d9a206d4b86189e179de37e0888a80fc984",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2e36d9a206d4b86189e179de37e0888a80fc984`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [getD_eq_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/getd-eq-getelem--c75234aeca812f39a4d7188d.md) | 30 | `result-track:c75234aeca812f39a4d7188d345e85833e7ad95186ac89d16ae71c5eaf71cbf9` |
| 2 | `theorem` | [getD_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/getd-map--a4fbb813793d3e73575079ee.md) | 38 | `result-track:a4fbb813793d3e73575079eed3c4e912a886fe18ec5c155819bce8560a0ee551` |
| 3 | `theorem` | [getD_eq_default](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/getd-eq-default--214cb4c391a51e46ac1ee10a.md) | 40 | `result-track:214cb4c391a51e46ac1ee10a4100c438053e0e9b2d5239c5478fcda274764b06` |
| 4 | `theorem` | [getD_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/getd-reverse--5e745a291f93fc98b92f5bcb.md) | 48 | `result-track:5e745a291f93fc98b92f5bcb356475ff2a36fd2684b6ef8c66d206c474862710` |
| 5 | `def` | [decidableGetDNilNe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/decidablegetdnilne--8ba6f0d883cf3df53d8c6720.md) | 55 | `declaration-track:8ba6f0d883cf3df53d8c67206d14dec2087196559afea5e6c264ba7a0bacb284` |
| 6 | `theorem` | [getElem?_getD_singleton_default_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/getelem-getd-singleton-default-eq--1e6323652b52704a0898087f.md) | 59 | `result-track:1e6323652b52704a0898087f34b9ce08010a323a96376da2de6f770c87af8d2d` |
| 7 | `theorem` | [getElem?_getD_replicate_default_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/getelem-getd-replicate-default-eq--07a2dd91b87eda27a1ce2b99.md) | 62 | `result-track:07a2dd91b87eda27a1ce2b99e0e5174c5c771ac8e92ea4af2bd8c819160616fa` |
| 8 | `theorem` | [getD_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/getd-replicate--0337c2c47395a69465c62202.md) | 67 | `result-track:0337c2c47395a69465c62202bc1072d9e089d91b768326a3def1353533f046e1` |
| 9 | `theorem` | [getD_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/getd-append--c7c42bfdb8fb135d97eb1a35.md) | 72 | `result-track:c7c42bfdb8fb135d97eb1a35c9fe799df2ea7170085c375390cb3a3381463454` |
| 10 | `theorem` | [getD_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/getd-append-right--a39da587994f2320d497bc31.md) | 77 | `result-track:a39da587994f2320d497bc31a67d2d5cc538c3ed7a4081469421fbba858215ce` |
| 11 | `theorem` | [getD_eq_getD_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/getd-eq-getd-getelem--5eff06d8b60bef159a824d8b.md) | 86 | `result-track:5eff06d8b60bef159a824d8b657a7b90440b33bee875d4db5d2221bbc0fef8c1` |
| 12 | `theorem` | [getI_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/geti-nil--86cdd4ae4c80db383b49cf03.md) | 100 | `result-track:86cdd4ae4c80db383b49cf039de06088e38223d64baf28762c70cbbbc52ec065` |
| 13 | `theorem` | [getI_cons_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/geti-cons-zero--bc1922fceddb5243476a2d34.md) | 104 | `result-track:bc1922fceddb5243476a2d346ef8e21d368196197b5840c1712bb89753eb77a2` |
| 14 | `theorem` | [getI_cons_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/geti-cons-succ--f0d99f5ab4d9ce3645b8be05.md) | 108 | `result-track:f0d99f5ab4d9ce3645b8be0522f24cf2e239eebd857444ebbf26966b94792f24` |
| 15 | `theorem` | [getI_eq_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/geti-eq-getelem--e1496f4e9b522d9b5a3d3e87.md) | 111 | `result-track:e1496f4e9b522d9b5a3d3e87322342062d0f570445a5fc91701bc0c58d864c32` |
| 16 | `theorem` | [getI_eq_default](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/geti-eq-default--0d288aec794d00bc819a6b43.md) | 114 | `result-track:0d288aec794d00bc819a6b43411000c1d06e39c2034fda7877ae151920b94077` |
| 17 | `theorem` | [getD_default_eq_getI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/getd-default-eq-geti--7c333f34cbab6de89afc73d6.md) | 117 | `result-track:7c333f34cbab6de89afc73d6be9ec341fcc8895af8494eccc00b7fd2d3255308` |
| 18 | `theorem` | [getI_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/geti-append--1319d491a4f6d7ba4c6fae95.md) | 120 | `result-track:1319d491a4f6d7ba4c6fae95b27f2d20f4005e4d04b1c4aa926fce5102d6a915` |
| 19 | `theorem` | [getI_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/geti-append-right--77639214a25d8d16361e1460.md) | 123 | `result-track:77639214a25d8d16361e14602cfc9eecd77470bb8e74711146ad46f7fc344bc7` |
| 20 | `theorem` | [getI_eq_iget_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/geti-eq-iget-getelem--221e6688b1657af96f4dd4f7.md) | 127 | `result-track:221e6688b1657af96f4dd4f70a9de8f92be092ed97fdfe7fdd09fd156ebabec9` |
| 21 | `theorem` | [getI_zero_eq_headI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetD/Variante6238d2bd2451fa8bc4b69637a1703b6d4187ddbed371aaf09605e8c4a4314c6.lean/declarations/geti-zero-eq-headi--4eb45434e1d3128d82a7f193.md) | 132 | `result-track:4eb45434e1d3128d82a7f19330965264f08da7bd99c2da1502a0b90beda1ee15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
