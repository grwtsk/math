# Verification target: GRWTSK.Topology.AlgebraicTopology.InnerFibration.Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4efed0aa5d6362f6f42c9e0f1d932220cfea28e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4efed0aa5d6362f6f42c9e0f1d932220cfea28e`.

Source path: `GRWTSK/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean.json)

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
| 1 | `inductive` | [innerHornInclusions](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/innerhorninclusions--efa4d453ab6c9c2ede664335.md) | 33 | `declaration-track:efa4d453ab6c9c2ede6643358776b8b8f983740ecfca8b40890a3a08520aa34b` |
| 2 | `lemma` | [horn_ι_mem_innerHornInclusions](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/horn-mem-innerhorninclusions--95144031443c502ca2a55c65.md) | 37 | `result-track:95144031443c502ca2a55c6506bbfb6e716e555d873d06cfd788db417eb060b3` |
| 3 | `lemma` | [innerHornInclusions_eq_iSup](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/innerhorninclusions-eq-isup--09bbff2dfe10a1df4d35eb8a.md) | 44 | `result-track:09bbff2dfe10a1df4d35eb8a8d593e733ea655a86f3f606dacda8f0dbffdf84d` |
| 4 | `lemma` | [innerHornInclusions_le_J](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/innerhorninclusions-le-j--595e67dcef53e20cb2cfb209.md) | 56 | `result-track:595e67dcef53e20cb2cfb209b13f0cc5177f989e32266a4da16c616934f106de` |
| 5 | `lemma` | [innerHornInclusions_le_monomorphisms](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/innerhorninclusions-le-monomorphisms--a64c42254eccb408e9ac321c.md) | 59 | `result-track:a64c42254eccb408e9ac321c7c43f48c7116afab891cb055f4fe76925759d2b7` |
| 6 | `def` | [innerFibrations](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/innerfibrations--9c3d9218c31182a95444d7b0.md) | 66 | `declaration-track:9c3d9218c31182a95444d7b0ad88e73fb0c07b6fa4e55e0256e274e55cab4493` |
| 7 | `class` | [InnerFibration](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/innerfibration--2b17f4f09f2420fe29bbd40e.md) | 72 | `declaration-track:2b17f4f09f2420fe29bbd40e9b56d0f3ff3871a028a8a703dff7cf719224df86` |
| 8 | `lemma` | [mem_innerFibrations](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/mem-innerfibrations--aeafcc85c710f5df885e3953.md) | 75 | `result-track:aeafcc85c710f5df885e39535275385d9f4b7eb241f92d81cb1d982a99234612` |
| 9 | `lemma` | [quasicategory_iff_innerFibration](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/quasicategory-iff-innerfibration--a7cd3b2a15a9a4e4f2d43bcf.md) | 78 | `result-track:a7cd3b2a15a9a4e4f2d43bcffff4a63373792118642dfae5b24438d439dcaaa7` |
| 10 | `lemma` | [quasicategory_iff_of_isTerminal](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/quasicategory-iff-of-isterminal--9d79991ceeeb4a8dc928107a.md) | 85 | `result-track:9d79991ceeeb4a8dc928107a48342b5b4116e68265909e7f1b31a2551c1f2f65` |
| 11 | `lemma` | [quasicategory_of_innerFibration](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/quasicategory-of-innerfibration--2ac97322dfce8f6ba1356092.md) | 94 | `result-track:2ac97322dfce8f6ba1356092ad0873496033bcd1b4c7c997977d6062d23c0508` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/instance--ed323691d9208be147aac561.md) | 101 | `declaration-track:ed323691d9208be147aac5612a7f2c19c861971ae60261559436c12f140621ef` |
| 13 | `lemma` | [quasicategory_of_from_innerFibrations](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/quasicategory-of-from-innerfibrations--4d2fa90a45f68086c3356e49.md) | 105 | `result-track:4d2fa90a45f68086c3356e49d681d4c231e14bbe3bcfb8bb8b1b7e7ae0a68c80` |
| 14 | `lemma` | [Quasicategory.from_innerFibrations](../../../../../mathematics/Topology/AlgebraicTopology/InnerFibration/Variant950db43d04686d42a3111c2e02452b08d31061200d23ce1cecd8d3f73619be5c.lean/declarations/quasicategory-from-innerfibrations--fa3ed997fd70cde085a603a1.md) | 110 | `result-track:fa3ed997fd70cde085a603a1eb2655fd6b23ffd46d4acd1847cc66f822910c48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
