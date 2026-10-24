# Verification target: GRWTSK.Analysis.Feature.Variant934a8610aad036861ad056a9b58f81473e596b6d77f6d29e3d42ec890bcb86f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "625d5b3e2a7d448a734c8fe2845ca150d7617f03",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Feature/Variant934a8610aad036861ad056a9b58f81473e596b6d77f6d29e3d42ec890bcb86f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Feature/Variant934a8610aad036861ad056a9b58f81473e596b6d77f6d29e3d42ec890bcb86f1.lean/index.md) · [Full source](../../../../mathematics/Analysis/Feature/Variant934a8610aad036861ad056a9b58f81473e596b6d77f6d29e3d42ec890bcb86f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `625d5b3e2a7d448a734c8fe2845ca150d7617f03`.

Source path: `GRWTSK/Analysis/Feature/Variant934a8610aad036861ad056a9b58f81473e596b6d77f6d29e3d42ec890bcb86f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Feature/Variant934a8610aad036861ad056a9b58f81473e596b6d77f6d29e3d42ec890bcb86f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Kernel.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scalarFeatureKernel](../../../../mathematics/Analysis/Feature/Variant934a8610aad036861ad056a9b58f81473e596b6d77f6d29e3d42ec890bcb86f1.lean/declarations/scalarfeaturekernel--6db88e8f0d1b7fa28413cbfb.md) | 32 | `declaration-track:6db88e8f0d1b7fa28413cbfb701c2e1549de353b36d54520e5d646f905676bf8` |
| 2 | `theorem` | [scalarFeatureKernel_apply](../../../../mathematics/Analysis/Feature/Variant934a8610aad036861ad056a9b58f81473e596b6d77f6d29e3d42ec890bcb86f1.lean/declarations/scalarfeaturekernel-apply--5cf17827ab358e7cded75f7e.md) | 67 | `result-track:5cf17827ab358e7cded75f7e61d8ef10a141b0d17c0cd04881867e3a41ee2331` |
| 3 | `def` | [finiteFeatureKernel](../../../../mathematics/Analysis/Feature/Variant934a8610aad036861ad056a9b58f81473e596b6d77f6d29e3d42ec890bcb86f1.lean/declarations/finitefeaturekernel--0b1ada2b94ccef397300bc88.md) | 73 | `declaration-track:0b1ada2b94ccef397300bc8867a6ea279f52f64eb519a43d376b96baa5b0eb89` |
| 4 | `theorem` | [finiteFeatureKernel_apply](../../../../mathematics/Analysis/Feature/Variant934a8610aad036861ad056a9b58f81473e596b6d77f6d29e3d42ec890bcb86f1.lean/declarations/finitefeaturekernel-apply--1d5fe8af0a01fe405fa7b3fd.md) | 83 | `result-track:1d5fe8af0a01fe405fa7b3fd027fe60cb569d2c6e500bed77bb7298902da842e` |
| 5 | `structure` | [FiniteFeatureFamily](../../../../mathematics/Analysis/Feature/Variant934a8610aad036861ad056a9b58f81473e596b6d77f6d29e3d42ec890bcb86f1.lean/declarations/finitefeaturefamily--f5c2266b424884fa224e3783.md) | 95 | `declaration-track:f5c2266b424884fa224e3783d60fe3558b0b62b20b861d425ff66d4e4b1e743c` |
| 6 | `def` | [FiniteFeatureFamily.kernel](../../../../mathematics/Analysis/Feature/Variant934a8610aad036861ad056a9b58f81473e596b6d77f6d29e3d42ec890bcb86f1.lean/declarations/finitefeaturefamily-kernel--58505295df08059c61853cfc.md) | 100 | `declaration-track:58505295df08059c61853cfc72f17d1ae48147fc546df1c5fbb1875f967bd350` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
