# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Multiset.Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8934dbed9a91fc17f2bc01cc89f6a854cbe3dc2b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8934dbed9a91fc17f2bc01cc89f6a854cbe3dc2b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean.json)

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
| 1 | `def` | [enle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/declarations/enle--1fd54c60a5ce300c0c3d9d52.md) | 25 | `declaration-track:1fd54c60a5ce300c0c3d9d528ab49f7a49f0f90ef0ebbfa3484146bcc03005ec` |
| 2 | `instance` | [enle.isLinearOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/declarations/enle-islinearorder--7d9f3e9d304a7b293151b843.md) | 29 | `declaration-track:7d9f3e9d304a7b293151b843ce4b05999405cc99506774e1edfb9b833f753807` |
| 3 | `def` | [encodeMultiset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/declarations/encodemultiset--ed984a79d3e759c7f1641694.md) | 33 | `declaration-track:ed984a79d3e759c7f164169474efc2bbc254b4fb98f5abe4a53d0f260d6438d4` |
| 4 | `def` | [decodeMultiset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/declarations/decodemultiset--b8ab064099844c4c5cddfbab.md) | 37 | `declaration-track:b8ab064099844c4c5cddfbabbe9fea11d8edbd49329342c172a958702300a981` |
| 5 | `instance` | [_root_.Multiset.encodable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/declarations/root-multiset-encodable--7e347b4760ccca65de764ca2.md) | 41 | `declaration-track:7e347b4760ccca65de764ca2858c12dd073add6a12acc4fd74cf96e527c97632` |
| 6 | `def` | [lower](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/declarations/lower--8554bba5c685a4693a02786d.md) | 53 | `declaration-track:8554bba5c685a4693a02786d4d2ab7a02722427f1d2b2dcdf8a623169b68b12e` |
| 7 | `def` | [raise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/declarations/raise--dd2bb28cb76169d43fbf71ac.md) | 59 | `declaration-track:dd2bb28cb76169d43fbf71ac9296c24ec8773d5aac975cc196cdd883902481dc` |
| 8 | `theorem` | [lower_raise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/declarations/lower-raise--6cc7134127dfacd5d9e21d12.md) | 63 | `result-track:6cc7134127dfacd5d9e21d12502352aa655df784378a460eba4abde60bb51c27` |
| 9 | `theorem` | [raise_lower](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/declarations/raise-lower--366af0a5ed1f74da2c9e7523.md) | 67 | `result-track:366af0a5ed1f74da2c9e75239af81e6940b478667281006f0e626efe8ffdf08d` |
| 10 | `theorem` | [isChain_raise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/declarations/ischain-raise--db6214d536dacf3d11ae206b.md) | 73 | `result-track:db6214d536dacf3d11ae206be2aa410e6c80e90c2056cbc6aad1f82766445f2b` |
| 11 | `theorem` | [isChain_cons_raise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/declarations/ischain-cons-raise--726fb2d8f89341a15d96c803.md) | 78 | `result-track:726fb2d8f89341a15d96c803f7b2e9f1975faa9b769a92bc6a3032a905632775` |
| 12 | `theorem` | [raise_sorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/declarations/raise-sorted--95bd195286857adb9adef1d8.md) | 82 | `result-track:95bd195286857adb9adef1d8ee538d7d00f7fa4f9a091600e1750cbd5fca09a0` |
| 13 | `instance` | [multiset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.lean/declarations/multiset--5b238070af66755bed8ae859.md) | 86 | `declaration-track:5b238070af66755bed8ae859dc95ccbc09306dd5a31e2a3181ef26e71b933615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
