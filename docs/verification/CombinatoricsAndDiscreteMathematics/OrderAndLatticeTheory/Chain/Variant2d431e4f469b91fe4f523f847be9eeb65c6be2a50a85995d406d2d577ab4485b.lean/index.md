# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Chain.Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9895845b7328d1a5f5df148f37cdefc610cc385e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9895845b7328d1a5f5df148f37cdefc610cc385e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Chain` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ChainClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean/declarations/chainclosure--8234de1e89cf8ab02bd07c56.md) | 38 | `declaration-track:8234de1e89cf8ab02bd07c56af8c591726e7e3f0872f49d3fd37ebf620b54b6c` |
| 2 | `def` | [maxChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean/declarations/maxchain--e64e63dd025e8ecb33c0c212.md) | 43 | `declaration-track:e64e63dd025e8ecb33c0c212776a7351b573457f3a0b5e16081560acfa735b67` |
| 3 | `lemma` | [chainClosure_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean/declarations/chainclosure-empty--14cdbeed66252eadcbed4cf5.md) | 45 | `result-track:14cdbeed66252eadcbed4cf530e94288dce6e4406b94548e29a09495495fa014` |
| 4 | `lemma` | [chainClosure_maxChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean/declarations/chainclosure-maxchain--a569c316b46d945b7822cbf9.md) | 49 | `result-track:a569c316b46d945b7822cbf9a56653f77392263c1345b2cd5ae655a41b67fa43` |
| 5 | `lemma` | [chainClosure_succ_total_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean/declarations/chainclosure-succ-total-aux--e40660e9c31973d7a20544b0.md) | 52 | `result-track:e40660e9c31973d7a20544b09a22fe25d74731c35be035c1cf2842d858a53d79` |
| 6 | `lemma` | [chainClosure_succ_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean/declarations/chainclosure-succ-total--35471e8be9f244061c472855.md) | 64 | `result-track:35471e8be9f244061c472855eb1f97fc5a5078af90c856e0f66d0ec0e5006cea` |
| 7 | `lemma` | [ChainClosure.total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean/declarations/chainclosure-total--d973a32f9b8b3844caba7f74.md) | 83 | `result-track:d973a32f9b8b3844caba7f74d4692bbc3fc514b88c805ba952376cbb4c0ce5b7` |
| 8 | `lemma` | [ChainClosure.succ_fixpoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean/declarations/chainclosure-succ-fixpoint--29deeb285dc76ef7679a4da6.md) | 88 | `result-track:29deeb285dc76ef7679a4da6a2fa3f7ccc7cf2fc09f58f993422fd8b5bd72f1c` |
| 9 | `lemma` | [ChainClosure.succ_fixpoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean/declarations/chainclosure-succ-fixpoint-iff--2b59d68ed3a253df7bd14cca.md) | 94 | `result-track:2b59d68ed3a253df7bd14cca4843e0cdf6af9b805cbbf0fd6beedc6030c20c50` |
| 10 | `lemma` | [ChainClosure.isChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean/declarations/chainclosure-ischain--be6a7d81abefc53f3e144fce.md) | 99 | `result-track:be6a7d81abefc53f3e144fce009d1d580c92847742246fb38da208a15ab883e1` |
| 11 | `theorem` | [maxChain_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Chain/Variant2d431e4f469b91fe4f523f847be9eeb65c6be2a50a85995d406d2d577ab4485b.lean/declarations/maxchain-spec--c3277d02c1aced3b9a38d105.md) | 111 | `result-track:c3277d02c1aced3b9a38d105438a4602860882ee6bd16cbffd153f4319271a36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
