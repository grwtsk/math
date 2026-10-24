# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition.Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6fdef2947c76e212092dd1d1a65679063023c5f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6fdef2947c76e212092dd1d1a65679063023c5f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FaaDiBruno` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderedBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/orderedblock--444b4510035c19693a6fba28.md) | 40 | `declaration-track:444b4510035c19693a6fba2898f5b1085c1426acd416b97017fecbc2642e87a6` |
| 2 | `theorem` | [mem_orderedBlock_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/mem-orderedblock-iff--272420dc32b2e0f79bcd52db.md) | 47 | `result-track:272420dc32b2e0f79bcd52db668e9421d86983cba82c1b52fec34431956f8dda` |
| 3 | `theorem` | [orderedBlock_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/orderedblock-card--cbb7c4193b508ac9db34b812.md) | 57 | `result-track:cbb7c4193b508ac9db34b8122c910dcbefcac29d07e39acd84380dca700b4835` |
| 4 | `theorem` | [orderedBlock_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/orderedblock-nonempty--5dc21b8596494dd20b476c89.md) | 68 | `result-track:5dc21b8596494dd20b476c895186f4a9008f23a8ff68c5f67f853134823d7ad5` |
| 5 | `theorem` | [orderedBlock_index_eq_of_common_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/orderedblock-index-eq-of-common-mem--3ec689e819b78b80ca5f7e50.md) | 77 | `result-track:3ec689e819b78b80ca5f7e503d8453d555fb35e5237d5eb11124ca9d64d137b6` |
| 6 | `theorem` | [orderedBlock_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/orderedblock-injective--41493a1317e25c204c40d346.md) | 96 | `result-track:41493a1317e25c204c40d346c7510494ccafa05f00aece6dd0cb0943fdc9c189` |
| 7 | `def` | [orderedBlocks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/orderedblocks--ac26149bc2194200a2108718.md) | 108 | `declaration-track:ac26149bc2194200a21087180ad50ea19e7ee62d7f4491f8ba8e40c306effc09` |
| 8 | `def` | [orderedToDirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/orderedtodirectionpartition--1b54f353ae4656ba54f3b08a.md) | 114 | `declaration-track:1b54f353ae4656ba54f3b08a3fd0f8a8b7a68f6a90e76db6312d677876a9c31c` |
| 9 | `theorem` | [orderedToDirectionPartition_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/orderedtodirectionpartition-parts--16f34ed4afe82282dddd8a7c.md) | 147 | `result-track:16f34ed4afe82282dddd8a7c84968a4654b334b37d7b9a0924d108b93d00542b` |
| 10 | `theorem` | [orderedToDirectionPartition_card_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/orderedtodirectionpartition-card-parts--9f220b1c19b9ca3a038bff96.md) | 155 | `result-track:9f220b1c19b9ca3a038bff96074a9355d4b837a6759e4a3feabf34b3e6dba75b` |
| 11 | `def` | [orderedBlockPart](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/orderedblockpart--2fdd986fe5b3d00b3f73602e.md) | 165 | `declaration-track:2fdd986fe5b3d00b3f73602ec796d587f955ef58440b05ba675a180677f56974` |
| 12 | `def` | [orderedBlockEquivParts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/orderedblockequivparts--f8796b1e14fd452f475d2088.md) | 175 | `declaration-track:f8796b1e14fd452f475d20880391c102a31fdc796cc4b5553dbd7edcbbc7492e` |
| 13 | `theorem` | [orderedBlockEquivParts_apply_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/orderedblockequivparts-apply-val--dc1a2f726f0bfbfcc43f4ab0.md) | 192 | `result-track:dc1a2f726f0bfbfcc43f4ab00eb91e22d29bc3bb419e103038f67f1d76299e43` |
| 14 | `theorem` | [orderedBlock_orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/orderedblock-orderemboffin--aae73a50b3cc1f2f43743b42.md) | 203 | `result-track:aae73a50b3cc1f2f43743b4230ebf95ad14e7819406fe405ff66cc4e823a23f9` |
| 15 | `theorem` | [blockDirections_orderedBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/blockdirections-orderedblock--82984eb5cd98f574be594568.md) | 221 | `result-track:82984eb5cd98f574be594568683d2450ca482d02a64357fc700d37776f1f560c` |
| 16 | `theorem` | [prod_parts_orderedToDirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/prod-parts-orderedtodirectionpartition--825c01873e1ed46a5c32abd2.md) | 242 | `result-track:825c01873e1ed46a5c32abd293a0ab636d674f9fb04e1c78f40985e843a9e571` |
| 17 | `theorem` | [sum_parts_orderedToDirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Af0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549feOrderedPartition/Variantaf0b01fae94980e840be2f6d8c7334d4498df1a8a1a4edd9c2331e6685b549fe.lean/declarations/sum-parts-orderedtodirectionpartition--b51ada02b2dd4a238683fbb5.md) | 258 | `result-track:b51ada02b2dd4a238683fbb5ed2d0ddd90b737f94d94193566660ab0db35d599` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
