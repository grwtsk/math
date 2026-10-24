# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "911ee38e5e3b4d0d2668b868d80dc667debd9938",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `911ee38e5e3b4d0d2668b868d80dc667debd9938`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sigma/Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sigma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.OfMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Set.biUnion_finsetSigma_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700.lean/declarations/set-biunion-finsetsigma-univ--e150da65ab426f85da763980.md) | 24 | `result-track:e150da65ab426f85da763980da7982254e26c88f788d0f3071bf7c15cba74f75` |
| 2 | `lemma` | [Set.biUnion_finsetSigma_univ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700.lean/declarations/set-biunion-finsetsigma-univ--ffa3411ff95c1986310d7194.md) | 27 | `result-track:ffa3411ff95c1986310d71944d34740a4f02123d4aef5291b951133ba31c824f` |
| 3 | `lemma` | [Set.biInter_finsetSigma_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700.lean/declarations/set-biinter-finsetsigma-univ--ea8fb01b85a2f10f739b4fb4.md) | 30 | `result-track:ea8fb01b85a2f10f739b4fb4b4f49794adc7a3a01d2266470ee1f0038386e08a` |
| 4 | `lemma` | [Set.biInter_finsetSigma_univ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700.lean/declarations/set-biinter-finsetsigma-univ--2727e8220905109bcf900620.md) | 34 | `result-track:2727e8220905109bcf9006202df5556c81e73d7a9c0f83733e5aef0a0481f42f` |
| 5 | `instance` | [Sigma.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700.lean/declarations/sigma-instfintype--85e9b53a37d665e18bcd7ed4.md) | 39 | `declaration-track:85e9b53a37d665e18bcd7ed4307b723ccb4eeb65b05353bd1ec3c6bdf6ffb952` |
| 6 | `instance` | [PSigma.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700.lean/declarations/psigma-instfintype--0f47fdd831a04ec16baa46a9.md) | 40 | `declaration-track:0f47fdd831a04ec16baa46a97dfd54c95fb86fabdfb1acb772571020ee154e71` |
| 7 | `lemma` | [Finset.univ_sigma_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700.lean/declarations/finset-univ-sigma-univ--7213943b06f57c4c71c7d676.md) | 42 | `result-track:7213943b06f57c4c71c7d6766844424f29038e91165005860c85d072c44f1b10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
