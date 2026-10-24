# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MonovaryOrder.Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b8e8a63a4178cd658c69e52ea42fd652136cc39",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b8e8a63a4178cd658c69e52ea42fd652136cc39`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Monotone.Monovary` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Order` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonovaryOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean/declarations/monovaryorder--37c2daae8972b3dfc8cf9a95.md) | 34 | `declaration-track:37c2daae8972b3dfc8cf9a957ff637337615e287fe89e24024b34ef65c5cc96b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean/declarations/instance--5413f5f22444fc9d8aea6833.md) | 37 | `declaration-track:5413f5f22444fc9d8aea68333b8cb586d1080eb5ba167eac01171301c1e2b9c6` |
| 3 | `lemma` | [monovaryOn_iff_exists_monotoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean/declarations/monovaryon-iff-exists-monotoneon--122d63c4d956d0a0a8ce5ea8.md) | 48 | `result-track:122d63c4d956d0a0a8ce5ea8eea367c7d9e704123dceaadc6fd91276088851f6` |
| 4 | `lemma` | [antivaryOn_iff_exists_monotoneOn_antitoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean/declarations/antivaryon-iff-exists-monotoneon-antitoneon--b1997cdb0a596585f4d50f95.md) | 61 | `result-track:b1997cdb0a596585f4d50f95ae3b83107320e80f362e3f37bad3c5be12aacae4` |
| 5 | `lemma` | [monovaryOn_iff_exists_antitoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean/declarations/monovaryon-iff-exists-antitoneon--fa5ec518e7397db4f2307d8a.md) | 65 | `result-track:fa5ec518e7397db4f2307d8ad8cc62cc1b9f04f788f116c652f9a6650b4e5962` |
| 6 | `lemma` | [antivaryOn_iff_exists_antitoneOn_monotoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean/declarations/antivaryon-iff-exists-antitoneon-monotoneon--eca8390d49f8d9afb0ec9051.md) | 70 | `result-track:eca8390d49f8d9afb0ec90514bca45d5d130fd48ef056592cdb578fb6ee40b40` |
| 7 | `lemma` | [monovary_iff_exists_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean/declarations/monovary-iff-exists-monotone--844bf269dca9857ca13d4a17.md) | 74 | `result-track:844bf269dca9857ca13d4a17bbdeec34e444610a18cd9b5a0cd0c3034201e57b` |
| 8 | `lemma` | [monovary_iff_exists_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean/declarations/monovary-iff-exists-antitone--efd0bcf17f2cd43032466df6.md) | 78 | `result-track:efd0bcf17f2cd43032466df66b4e802d27882ce1c3c2b33b32a2a3c23c39bb0f` |
| 9 | `lemma` | [antivary_iff_exists_monotone_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean/declarations/antivary-iff-exists-monotone-antitone--1027bdb0367fd4ab3f4c66b1.md) | 82 | `result-track:1027bdb0367fd4ab3f4c66b1c6b531f402f358fd615005e3fb6923ec5106024d` |
| 10 | `lemma` | [antivary_iff_exists_antitone_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant63ab2e96bd5d6a31cc56948055a106d5bc7c846736eea9762ea07ffec7ba4eb6.lean/declarations/antivary-iff-exists-antitone-monotone--0b063a2bb3f3d717674738d7.md) | 86 | `result-track:0b063a2bb3f3d717674738d7c95a4b27bccf800acded5de919e137464d1fb235` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
