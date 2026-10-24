# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.AscendingDescendingSequences.Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cb8c825d1304c0b34c2de23fc5395ed9a0a69fc",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cb8c825d1304c0b34c2de23fc5395ed9a0a69fc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [incSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/incsequencesto--ec45a0867a10f5198cf13128.md) | 47 | `declaration-track:ec45a0867a10f5198cf13128e4d72b215e71a905b561a182e6baec82aedbf116` |
| 2 | `def` | [decSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/decsequencesto--7d3811badc5044d3cf4fe289.md) | 52 | `declaration-track:7d3811badc5044d3cf4fe28975f5410289d4cea8a5e5d7dbe2febbafa458f444` |
| 3 | `lemma` | [one_mem_incSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/one-mem-incsequencesto--31324391ffd8166c65a0d0db.md) | 57 | `result-track:31324391ffd8166c65a0d0dbf570e90d5c358fb172f48a5a99bb5fa6795930b2` |
| 4 | `lemma` | [one_mem_decSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/one-mem-decsequencesto--86dccd88a13eaee7d04eba99.md) | 59 | `result-track:86dccd88a13eaee7d04eba993c872b6d60004378525d077698ef071d42c978ff` |
| 5 | `lemma` | [incSequencesTo_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/incsequencesto-nonempty--2a351ef7830c41b6306c0aa9.md) | 62 | `result-track:2a351ef7830c41b6306c0aa99dd3ddd186563050167c04fdef587c0f252c9c7d` |
| 6 | `lemma` | [decSequencesTo_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/decsequencesto-nonempty--b7c1ebf08e1979fc2220ad88.md) | 64 | `result-track:b7c1ebf08e1979fc2220ad88d809e5961c31089cd45497667e983780382b997a` |
| 7 | `def` | [maxIncSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/maxincsequencesto--772561604e4f4dde03f4cd7f.md) | 67 | `declaration-track:772561604e4f4dde03f4cd7f56abc2fca763715017bcb78cb28105add5025ae4` |
| 8 | `def` | [maxDecSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/maxdecsequencesto--f2540145d94b880682d1aa4f.md) | 71 | `declaration-track:f2540145d94b880682d1aa4f4d584e95286b78de04e4c16c0d8bac71a0139de5` |
| 9 | `lemma` | [one_le_maxIncSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/one-le-maxincsequencesto--13d369bbcf12da72d1433750.md) | 74 | `result-track:13d369bbcf12da72d14337503f4790f3af05c630935c2d362fadfd4dd56b2d2f` |
| 10 | `lemma` | [one_le_maxDecSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/one-le-maxdecsequencesto--20fef301d2d18edab80a032f.md) | 76 | `result-track:20fef301d2d18edab80a032fa23568474260f5a52ef438d74d75db4312f4cdbe` |
| 11 | `lemma` | [maxIncSequencesTo_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/maxincsequencesto-mem--34c6bf967e4f3cdc7a0cdfbf.md) | 79 | `result-track:34c6bf967e4f3cdc7a0cdfbfd3a7e0c85c17d4a2703715ca562875a7bc48ef7a` |
| 12 | `lemma` | [maxDecSequencesTo_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/maxdecsequencesto-mem--c8bc5f839d8e35478742f9e5.md) | 81 | `result-track:c8bc5f839d8e35478742f9e5b2f1ec39ef90caa06e3ede623880a0781278ef9a` |
| 13 | `lemma` | [maxIncSequencesTo_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/maxincsequencesto-lt--b5daa8fabfb5140873ee55c1.md) | 92 | `result-track:b5daa8fabfb5140873ee55c1743beaa068d60c37f0be3a46d336fca8c0e7132f` |
| 14 | `lemma` | [maxDecSequencesTo_gt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/maxdecsequencesto-gt--a14870c568d532df893be92d.md) | 118 | `result-track:a14870c568d532df893be92d778db748cb0bb0928e438aa294bee1bed625403f` |
| 15 | `def` | [paired](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/paired--b972d6117733f6a94ec390af.md) | 126 | `declaration-track:b972d6117733f6a94ec390af7f7c346a78a8b3241fa116c640f9802a4e8bb2ec` |
| 16 | `lemma` | [paired_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/paired-injective--5a1b636543df073dfa496bea.md) | 133 | `result-track:5a1b636543df073dfa496bea83a3c1625c4438752e40a1ba03f7406a80953447` |
| 17 | `theorem` | [erdos_szekeres](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant0c94cc305fce0e13b306f14df78a15d699bf62f6c189ece158870bc4f177d30d.lean/declarations/erdos-szekeres--ac3ab3e698ecdf6151cda871.md) | 150 | `result-track:ac3ab3e698ecdf6151cda871953241f4dc09c5fc89d18ebf0caa93ddedeb470d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
