# Verification target: GRWTSK.Analysis.MeasureTheory.AEDisjoint.Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aebd0173721b2e89ad863f7c50bc731c03745b55",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aebd0173721b2e89ad863f7c50bc731c03745b55`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean.json)

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
| 1 | `def` | [AEDisjoint](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/aedisjoint--e2fb7b10792ecaf795d47cde.md) | 28 | `declaration-track:e2fb7b10792ecaf795d47cde9c0954e26d42c1dbefb42f5b7f9fda67371670d8` |
| 2 | `theorem` | [exists_null_pairwise_disjoint_sdiff](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/exists-null-pairwise-disjoint-sdiff--3037e192e4640f5888770100.md) | 35 | `result-track:3037e192e4640f588877010067a8bde14bbd8c3f4fe0e6902231e52c1f66822f` |
| 3 | `theorem` | [eq](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/eq--9492389e7b5e9d588fa5a0cc.md) | 54 | `result-track:9492389e7b5e9d588fa5a0ccc4d61a4ac250eef5788fe2926393037a0df2dafc` |
| 4 | `theorem` | [symm](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/symm--861e51dc332200e99254de08.md) | 58 | `result-track:861e51dc332200e99254de081a6d660e212fc594097c35cd43cd91580854758e` |
| 5 | `instance` | [stdSymm](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/stdsymm--eac02ef7c0ce37313a406ba6.md) | 60 | `declaration-track:eac02ef7c0ce37313a406ba65dedf46b5a065e223eebab9103f9cf88b07016d0` |
| 6 | `theorem` | [comm](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/comm--915d6f6e005aa82929257cce.md) | 65 | `result-track:915d6f6e005aa82929257cce8813596f46daf1dbe9509062a3596a03fd6d7844` |
| 7 | `theorem` | [_root_.Disjoint.aedisjoint](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/root-disjoint-aedisjoint--9f16061dfc406ef8a6c3aca7.md) | 68 | `result-track:9f16061dfc406ef8a6c3aca748541742155c5a8d446d49ba53aa733547c8466b` |
| 8 | `theorem` | [_root_.Pairwise.aedisjoint](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/root-pairwise-aedisjoint--7067eb3a80c781556c1d0e98.md) | 71 | `result-track:7067eb3a80c781556c1d0e9870a8f20f822c1322dc588477a034c47900ef1e05` |
| 9 | `theorem` | [_root_.Set.PairwiseDisjoint.aedisjoint](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/root-set-pairwisedisjoint-aedisjoint--f24252c72831fba474eacfb9.md) | 75 | `result-track:f24252c72831fba474eacfb9415e1235a7ab4f9e4eeebc68de30708687485af7` |
| 10 | `theorem` | [mono_ae](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/mono-ae--c5072072b378ae0e9ab06d09.md) | 79 | `result-track:c5072072b378ae0e9ab06d09861f1ab9afefde9f07eb9be472c6102c18b4fbe4` |
| 11 | `theorem` | [mono](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/mono--ddf63098bd6d7c0aa706891e.md) | 82 | `result-track:ddf63098bd6d7c0aa706891e4160e1ef173addb36d8f7125c36f6128bf2e521e` |
| 12 | `theorem` | [congr](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/congr--4ec5b485a34896f35d0f5d1a.md) | 85 | `result-track:4ec5b485a34896f35d0f5d1ac2f7d9d9b904537fb3a0c36bbe68bf371b740fd8` |
| 13 | `theorem` | [iUnion_left_iff](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/iunion-left-iff--d8a6fe60e6c823e764728a2f.md) | 90 | `result-track:d8a6fe60e6c823e764728a2fbcf541d140521b2b869cf4af2e4bea23d2a40198` |
| 14 | `theorem` | [iUnion_right_iff](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/iunion-right-iff--b01e9c8bbf694e7513551e82.md) | 95 | `result-track:b01e9c8bbf694e7513551e82d8c24e4133b1e06dbf28ab02d6f865f04ac9e79a` |
| 15 | `theorem` | [union_left_iff](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/union-left-iff--52b2e1de2e91a84eede5a5ef.md) | 100 | `result-track:52b2e1de2e91a84eede5a5ef3eb7133c652283753ace542786c869da74404d3e` |
| 16 | `theorem` | [union_right_iff](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/union-right-iff--4b76706453a111684049a30f.md) | 104 | `result-track:4b76706453a111684049a30fd74e87b6a2798886c1c886d959314e15693d8eb7` |
| 17 | `theorem` | [union_left](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/union-left--251b2ab767196bd218d9a50c.md) | 107 | `result-track:251b2ab767196bd218d9a50ce0f16b56c623bacd6b51208cda35cb988d93da5c` |
| 18 | `theorem` | [union_right](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/union-right--f0205042b9a285a79beeb389.md) | 110 | `result-track:f0205042b9a285a79beeb3898bf7f5ae0db70be4a7d3cb0a7df8eef3d244ad57` |
| 19 | `theorem` | [sdiff_ae_eq_left](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/sdiff-ae-eq-left--5b0787c1e8924ebc70812ae2.md) | 113 | `result-track:5b0787c1e8924ebc70812ae241786ebc147d1e2a80baee7db81eae3278b32e6d` |
| 20 | `theorem` | [sdiff_ae_eq_right](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/sdiff-ae-eq-right--c4ebb975a20d237fd99942b4.md) | 118 | `result-track:c4ebb975a20d237fd99942b4f065fcd857b978419b8c6c4718f9ee257ed0062a` |
| 21 | `theorem` | [measure_sdiff_left](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/measure-sdiff-left--1cf041391cca0938f3198d5a.md) | 123 | `result-track:1cf041391cca0938f3198d5a5f771df1572203b1877cc9519d1b31aae322d7a4` |
| 22 | `theorem` | [measure_sdiff_right](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/measure-sdiff-right--3abfdb884385748ba11ad61c.md) | 128 | `result-track:3abfdb884385748ba11ad61cdb83ecc7d8a1eb39f3ff5d94b960b84a1d5bf9df` |
| 23 | `theorem` | [exists_disjoint_diff](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/exists-disjoint-diff--8fed399226a3d9142e96fe7c.md) | 135 | `result-track:8fed399226a3d9142e96fe7c0d2cd3152f0111cb346994f431d04e0eb788cdcf` |
| 24 | `theorem` | [of_null_right](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/of-null-right--77db608e41adef01af60ff00.md) | 141 | `result-track:77db608e41adef01af60ff00f2b88207b55353496440014ad04bad03200d6645` |
| 25 | `theorem` | [of_null_left](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/of-null-left--8e8be27d6bd0ebeeed8aeee6.md) | 144 | `result-track:8e8be27d6bd0ebeeed8aeee62e061d46a32bb9c6e327a455f9d3c17a91e68067` |
| 26 | `theorem` | [aedisjoint_compl_left](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/aedisjoint-compl-left--8851293c89d9cf3f311d7528.md) | 149 | `result-track:8851293c89d9cf3f311d7528722050d7dc37671e864f8c3dadcae645ecdf0bdc` |
| 27 | `theorem` | [aedisjoint_compl_right](../../../../../mathematics/Analysis/MeasureTheory/AEDisjoint/Variant4f322bd6880889de1a1b2a608deeef6d5575ed7b1c436cebcdce5e5c1cac5b69.lean/declarations/aedisjoint-compl-right--0889875fdde9b5e29fa91f83.md) | 152 | `result-track:0889875fdde9b5e29fa91f830f56c892ee99d9f6f8dd310559a9653efed4bc1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
