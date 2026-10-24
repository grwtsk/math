# Verification target: GRWTSK.Analysis.MeasureTheory.ENNRealLogExp.Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d49927e7babcfaa3e7f260cd7e60b0b022757c7",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d49927e7babcfaa3e7f260cd7e60b0b022757c7`.

Source path: `GRWTSK/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.ERealExp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.ENNRealLog` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Polish` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [EReal.log_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/ereal-log-exp--33d1e86a846cad9ea0882e2e.md) | 44 | `result-track:33d1e86a846cad9ea0882e2eb673973a1d9ef26646a177cfadc1fddfa1e053cc` |
| 2 | `lemma` | [ENNReal.exp_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/ennreal-exp-log--89a54556ef7de9184a19e650.md) | 50 | `result-track:89a54556ef7de9184a19e650409735a17aa4dd040e034ded27afe4d4ab6ff746` |
| 3 | `lemma` | [exp_nmul](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/exp-nmul--3a925b9d2dad875d034c9ac6.md) | 63 | `result-track:3a925b9d2dad875d034c9ac6cedd4d6e6b7edfa2a2ae612bd49f889e67d4147a` |
| 4 | `lemma` | [exp_mul](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/exp-mul--39a9a1e32809c72338e408c1.md) | 66 | `result-track:39a9a1e32809c72338e408c10be79905f66268794d587a99af8e26314c2e9f38` |
| 5 | `def` | [logOrderIso](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/logorderiso--d19eda4a21a443e9ec881309.md) | 78 | `declaration-track:d19eda4a21a443e9ec881309ea144f4f860b62040444ed09e1a236803504eaa1` |
| 6 | `lemma` | [logOrderIso_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/logorderiso-apply--79fccbeb1d865d0aa5a2fc74.md) | 85 | `result-track:79fccbeb1d865d0aa5a2fc743109a51b1ec86395f97d121deb75d46cfc85f12c` |
| 7 | `def` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.EReal.expOrderIso](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantb4b4a0ac20e8049c83da81--506a1175b511f176b01fe9c5.md) | 90 | `declaration-track:506a1175b511f176b01fe9c510667e0b01c6126f3664cf35853ce67225a537b8` |
| 8 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.EReal.expOrderIso_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantb4b4a0ac20e8049c83da81--a3f541e2d505fcfcfc47347d.md) | 92 | `result-track:a3f541e2d505fcfcfc47347d332f25f6d8177d696afe337e78640f5b02233c2f` |
| 9 | `lemma` | [logOrderIso_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/logorderiso-symm--d06baece05c72b9d0e0fc405.md) | 94 | `result-track:d06baece05c72b9d0e0fc4057037b0bbd94149d73bb2179c708f6aaa39582638` |
| 10 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.EReal.expOrderIso_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantb4b4a0ac20e8049c83da81--d86debdde65d78794b1e3e95.md) | 95 | `result-track:d86debdde65d78794b1e3e95374db74653096d4bd7dcc79991c49a3554384112` |
| 11 | `def` | [logHomeomorph](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/loghomeomorph--3fa478fe269eb371fba84b47.md) | 102 | `declaration-track:3fa478fe269eb371fba84b470d4587f4cc8f791d134e150de0870adbbba80461` |
| 12 | `lemma` | [logHomeomorph_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/loghomeomorph-apply--d60ec552c6f0f0cc2e3f1f17.md) | 104 | `result-track:d60ec552c6f0f0cc2e3f1f171208631a15c7d5eac00ad0a9309043f89aaa7847` |
| 13 | `def` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.EReal.expHomeomorph](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantb4b4a0ac20e8049c83da81--167ecf8fa2aa2508b5b812f3.md) | 107 | `declaration-track:167ecf8fa2aa2508b5b812f3216bffd98390e5fc0928ffe4b8451601813f5ff0` |
| 14 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.EReal.expHomeomorph_apply](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantb4b4a0ac20e8049c83da81--e67b865eefe37c27a076dac0.md) | 109 | `result-track:e67b865eefe37c27a076dac0164e4a61167c68e5ddd1cfbf7728b2ad353ab29f` |
| 15 | `lemma` | [logHomeomorph_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/loghomeomorph-symm--776e4a5ae3735dcee64e9b55.md) | 111 | `result-track:776e4a5ae3735dcee64e9b5568535b46fee612fbc6d9f05337dfb02633e43782` |
| 16 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.EReal.expHomeomorph_symm](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantb4b4a0ac20e8049c83da81--cbfb0856a531092c1de693ff.md) | 113 | `result-track:cbfb0856a531092c1de693ff651d40c8649e7cb4ecf876848290a00836ae42fc` |
| 17 | `lemma` | [continuous_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/continuous-log--41d423c4e1a59de1737d3d3c.md) | 116 | `result-track:41d423c4e1a59de1737d3d3ca7097ade1a457a63a2c564a38c30f84ad900b073` |
| 18 | `lemma` | [continuous_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/continuous-exp--f9a2faf46b13cd0fb4cca55e.md) | 119 | `result-track:f9a2faf46b13cd0fb4cca55e179c49f666790e76a117ec4a34c23d2b37c8f6e4` |
| 19 | `lemma` | [measurable_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/measurable-log--f57b502bf066b636301dfd8d.md) | 126 | `result-track:f57b502bf066b636301dfd8da0a4b40dd5f9a4607d304dcb7fcac2b2757453c4` |
| 20 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.EReal.measurable_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantb4b4a0ac20e8049c83da81--5f33617e507e0611e38db0b8.md) | 129 | `result-track:5f33617e507e0611e38db0b830829ed63cf779e9d57a21e8c0e8405a056d10df` |
| 21 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.Measurable.ennreal_log](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantb4b4a0ac20e8049c83da81--87641c1e79479bc88a776d60.md) | 132 | `result-track:87641c1e79479bc88a776d60995896065206f7c72c125e0a16cb5dc5a88de514` |
| 22 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.ExpNmul.Variantb4b4a0ac20e8049c83da815288a33737d3734d9777ae23d712dfee85599f9e13.Measurable.ereal_exp](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/root-grwtsk-analysis-measuretheory-expnmul-variantb4b4a0ac20e8049c83da81--22f9bc121e608c88c9dff931.md) | 137 | `result-track:22f9bc121e608c88c9dff931525ced8bee2ceb74e87d49a3f47464b4795d8c7d` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ENNRealLogExp/Variantec520544abb88755b706c2b1db2c59bc291f55e74d001f5db7f7c25cd28b3f7b.lean/declarations/instance--6ff9b2e944f9877820c5b82f.md) | 145 | `declaration-track:6ff9b2e944f9877820c5b82f9038edfd5828d7bdbf839cd2a10621111a77259b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
