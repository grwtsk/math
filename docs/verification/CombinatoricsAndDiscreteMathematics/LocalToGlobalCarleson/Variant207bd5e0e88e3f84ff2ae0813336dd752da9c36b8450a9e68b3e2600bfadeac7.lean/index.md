# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LocalToGlobalCarleson.Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95315e45cd8a537d7e08773d252f82381da88187",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95315e45cd8a537d7e08773d252f82381da88187`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalToGlobalCarlesonData](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/declarations/localtoglobalcarlesondata--944441587788528eee40a80b.md) | 31 | `declaration-track:944441587788528eee40a80bec26023680a12427d625214ccdf39bc799bb6652` |
| 2 | `def` | [LocalToGlobalCarlesonData.levelContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/declarations/localtoglobalcarlesondata-levelcontribution--e4beb47054b5a926868d6a14.md) | 52 | `declaration-track:e4beb47054b5a926868d6a140bfc45e352727a7383c99704c42adba25c080eec` |
| 3 | `def` | [LocalToGlobalCarlesonData.totalContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/declarations/localtoglobalcarlesondata-totalcontribution--e481b8432dd326ad0cc6f0bd.md) | 60 | `declaration-track:e481b8432dd326ad0cc6f0bd0a47de08e136307a741b6b99c575ba14d5d4456f` |
| 4 | `def` | [LocalToGlobalCarlesonData.levelMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/declarations/localtoglobalcarlesondata-levelmass--5154c442ca10c4833a0935c2.md) | 66 | `declaration-track:5154c442ca10c4833a0935c24a595f98ffeb12d5f73e35d93934e172fd99e49a` |
| 5 | `theorem` | [LocalToGlobalCarlesonData.sum_levelContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/declarations/localtoglobalcarlesondata-sum-levelcontribution--e53fe9149942ba60e980d08f.md) | 73 | `result-track:e53fe9149942ba60e980d08f51f8b02ef2bac2dc011789d2a5efe5d1a6b21b5a` |
| 6 | `def` | [LocalCrossSquareEstimate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/declarations/localcrosssquareestimate--95482c4440e13571f3fcb079.md) | 92 | `declaration-track:95482c4440e13571f3fcb07969457791638e03f1d19585533c887be40b4c7b95` |
| 7 | `def` | [LevelwiseMassPacking](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/declarations/levelwisemasspacking--b3084aa863b24bc971c0d885.md) | 98 | `declaration-track:b3084aa863b24bc971c0d88545295ebd4c3d0071799a8b10171d3198fc7cdd3b` |
| 8 | `theorem` | [LocalToGlobalCarlesonData.levelContribution_norm_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/declarations/localtoglobalcarlesondata-levelcontribution-norm-le--90fe555dbe5d22b4306d14ba.md) | 104 | `result-track:90fe555dbe5d22b4306d14ba9b57fba4308594b765acd88ce957e9b609f27cc3` |
| 9 | `theorem` | [treeCrossCarleson_of_localSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/declarations/treecrosscarleson-of-localsquare--b4604362669a4a78b0c70282.md) | 142 | `result-track:b4604362669a4a78b0c702822b9f6c35ae4f94f2ed1d10246a82fd67ce372344` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
