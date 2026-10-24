# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RankLoop.Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecff562bbb247afaa397fd6100b1b58451cefeab",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecff562bbb247afaa397fd6100b1b58451cefeab`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.TopologicalEmbedding` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HomologyGroupH1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d.lean/declarations/homologygrouph1--0d63ae27986784be483f690c.md) | 21 | `declaration-track:0d63ae27986784be483f690c6c888c6c88402fb1de3c1d557ba4d1a88efd2100` |
| 2 | `structure` | [MordellWeilModuloTorsion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d.lean/declarations/mordellweilmodulotorsion--0e4ef65fd416e00fd720d65b.md) | 28 | `declaration-track:0e4ef65fd416e00fd720d65b5ca1ff80a38afaac5f06a469600b75332eeb440e` |
| 3 | `structure` | [RankLoopMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d.lean/declarations/rankloopmap--28e5f1b828ab50498952904d.md) | 35 | `declaration-track:28e5f1b828ab50498952904d02c2bab4815bd9fe686894f19feb607ca2aa5ca0` |
| 4 | `structure` | [RankLoopEquivalenceCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d.lean/declarations/rankloopequivalencecertificate--cbab6115f39230194cc511c5.md) | 47 | `declaration-track:cbab6115f39230194cc511c5941765089cf306487518aa89fe1b45516bd40597` |
| 5 | `def` | [RankLoopConjecture](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d.lean/declarations/rankloopconjecture--ddbd0544ccf38da70c917ec4.md) | 61 | `declaration-track:ddbd0544ccf38da70c917ec4e46e6ee8e5c0bbebebc15e46c6854af5a9c0d75f` |
| 6 | `theorem` | [rank_eq_loop_rank](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d.lean/declarations/rank-eq-loop-rank--9312da5bc7ef7700e79c7b7d.md) | 73 | `result-track:9312da5bc7ef7700e79c7b7d148f33b5354f9c0f1f6dd16cff9f1f9f454b4fe4` |
| 7 | `structure` | [RankZeroConditionalSchema](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d.lean/declarations/rankzeroconditionalschema--6502b5d696a50a1cef477d19.md) | 83 | `declaration-track:6502b5d696a50a1cef477d191e68b9bcc80612a05aaeb937055c02c72d8f5b08` |
| 8 | `structure` | [RankOneConditionalSchema](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RankLoop/Variantaa945c19441060c0688f9c65e55f7a50cd8153d6e69b19df96500cbf29bd953d.lean/declarations/rankoneconditionalschema--c9092ad72cf0a7f9a05018dc.md) | 89 | `declaration-track:c9092ad72cf0a7f9a05018dc0b3d572bcacbea9b47573f72a5e3716d30e1ad7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
