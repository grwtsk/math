# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MonovaryOrder.Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59c073926d3f1aefd13354af2bf5eb4d4bb4f7d6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59c073926d3f1aefd13354af2bf5eb4d4bb4f7d6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean.json)

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
| 1 | `def` | [MonovaryOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/declarations/monovaryorder--8350a6d196307eae0b5a2653.md) | 30 | `declaration-track:8350a6d196307eae0b5a26534c93bdb25adf09639483b8c9b174a29b7cedaeb9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/declarations/instance--3c9266dfc0fc9e675ad603f1.md) | 33 | `declaration-track:3c9266dfc0fc9e675ad603f1d54e463af5645714f476952129841391d3831c07` |
| 3 | `lemma` | [monovaryOn_iff_exists_monotoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/declarations/monovaryon-iff-exists-monotoneon--ed610b4434cadd7262d416f4.md) | 44 | `result-track:ed610b4434cadd7262d416f4dce4838402da7e9299487c45afc151437b1fa008` |
| 4 | `lemma` | [antivaryOn_iff_exists_monotoneOn_antitoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/declarations/antivaryon-iff-exists-monotoneon-antitoneon--f7f723ffe5fc611a9387f34d.md) | 57 | `result-track:f7f723ffe5fc611a9387f34d2b806dad340c2596aa240910c0939b6f5939de72` |
| 5 | `lemma` | [monovaryOn_iff_exists_antitoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/declarations/monovaryon-iff-exists-antitoneon--133bac8e1832c36afeb66091.md) | 61 | `result-track:133bac8e1832c36afeb660913affd8d5dbb810ace2e89f31f3242b444e9a2864` |
| 6 | `lemma` | [antivaryOn_iff_exists_antitoneOn_monotoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/declarations/antivaryon-iff-exists-antitoneon-monotoneon--c66827c7b5e7bb1bb9aa302d.md) | 66 | `result-track:c66827c7b5e7bb1bb9aa302d0e2dbe47f94bde80780307ff83af8894742417ba` |
| 7 | `lemma` | [monovary_iff_exists_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/declarations/monovary-iff-exists-monotone--0d5e9c6daa8b9cd9232fdd63.md) | 70 | `result-track:0d5e9c6daa8b9cd9232fdd63fafb8c643816d4ade5f26ae0ec9388b6b31d936c` |
| 8 | `lemma` | [monovary_iff_exists_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/declarations/monovary-iff-exists-antitone--3d3a7a78063f074017c883cd.md) | 74 | `result-track:3d3a7a78063f074017c883cd521f261ddc0116acf5806955a1193243cb7814d6` |
| 9 | `lemma` | [antivary_iff_exists_monotone_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/declarations/antivary-iff-exists-monotone-antitone--c60187c71b4f1f85d10a0fd2.md) | 78 | `result-track:c60187c71b4f1f85d10a0fd2182c2e82449c78a52f04c1d09a8fa05bf86c51db` |
| 10 | `lemma` | [antivary_iff_exists_antitone_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/declarations/antivary-iff-exists-antitone-monotone--45d46e515deb074924e7af75.md) | 82 | `result-track:45d46e515deb074924e7af75189dd26479e99a5c52f58ccedfb2cd5af8341b57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
