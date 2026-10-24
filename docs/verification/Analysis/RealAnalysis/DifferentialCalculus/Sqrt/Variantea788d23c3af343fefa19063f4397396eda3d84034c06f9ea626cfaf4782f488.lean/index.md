# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sqrt.Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1eb65345f1cf1d1e26cb9d5b186044e43d3d057",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1eb65345f1cf1d1e26cb9d5b186044e43d3d057`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqLocalHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/sqlocalhomeomorph--4111850ded62da48abf0dad9.md) | 31 | `declaration-track:4111850ded62da48abf0dad98e17524ebc9e7e5b0b3a9e8933091bebb914aa5f` |
| 2 | `theorem` | [deriv_sqrt_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/deriv-sqrt-aux--56e59dd95c4d831afcb6746a.md) | 46 | `result-track:56e59dd95c4d831afcb6746aab82c5dc4dd3b86de47af2b1555a342368efa0ac` |
| 3 | `theorem` | [hasStrictDerivAt_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/hasstrictderivat-sqrt--206249b53683f52007930af1.md) | 61 | `result-track:206249b53683f52007930af1dff019b9b351f99a9555a2cf76a9d344d1ef6bd1` |
| 4 | `theorem` | [contDiffAt_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/contdiffat-sqrt--d84ea1cb94369eeb979b7430.md) | 65 | `result-track:d84ea1cb94369eeb979b7430ee842bb62fcfb6589f9f14c40c84aec1cc77755a` |
| 5 | `theorem` | [hasDerivAt_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/hasderivat-sqrt--47fb3aa5be66aada109f2315.md) | 69 | `result-track:47fb3aa5be66aada109f2315ba8672526e57526a58e88c0b23d475deb63c8a2c` |
| 6 | `theorem` | [HasDerivWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/hasderivwithinat-sqrt--90750d5b1c90c51423b103c9.md) | 81 | `result-track:90750d5b1c90c51423b103c9699f6338b2576ad9426cbd6b5d2c4504f457d347` |
| 7 | `theorem` | [HasDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/hasderivat-sqrt--744580185b0ed4e642f166cf.md) | 87 | `result-track:744580185b0ed4e642f166cfec48cbc7bf857988ce6298ca417083a2128f1892` |
| 8 | `theorem` | [HasStrictDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/hasstrictderivat-sqrt--4c457a611ab65445390f7576.md) | 92 | `result-track:4c457a611ab65445390f75761a2ff1d75df34969f270cc6aca288585abb6c1d9` |
| 9 | `theorem` | [derivWithin_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/derivwithin-sqrt--a46717cccc74cfc99b99ce13.md) | 97 | `result-track:a46717cccc74cfc99b99ce137178f10b8f864d13aa81508c68c2bf967b36b225` |
| 10 | `theorem` | [deriv_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/deriv-sqrt--f2f03ce9ad86ceac4ee1060d.md) | 104 | `result-track:f2f03ce9ad86ceac4ee1060d4cf56e8c4dce589a556326aabde8f7df876dba50` |
| 11 | `theorem` | [HasFDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/hasfderivat-sqrt--1fca6acb22c0e253a892fcae.md) | 116 | `result-track:1fca6acb22c0e253a892fcaebc554959cffc417248523abe7fc89138dd057521` |
| 12 | `theorem` | [HasStrictFDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/hasstrictfderivat-sqrt--8966553e3cc2b80a032dfd06.md) | 121 | `result-track:8966553e3cc2b80a032dfd06e107c1dc920bc3ced974b0a88e2189bc78c4fe86` |
| 13 | `theorem` | [HasFDerivWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/hasfderivwithinat-sqrt--1a8e41f331ebe1ca045cfcc0.md) | 126 | `result-track:1a8e41f331ebe1ca045cfcc0ad08029a23ecbc0eb60759487686ede4084a7483` |
| 14 | `theorem` | [DifferentiableWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/differentiablewithinat-sqrt--513579a876b1411a6b603552.md) | 131 | `result-track:513579a876b1411a6b603552213f1336ceafe1de40a46d0b753ccab647574eee` |
| 15 | `theorem` | [DifferentiableAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/differentiableat-sqrt--9b5acb8678f8e9599a0d1d42.md) | 136 | `result-track:9b5acb8678f8e9599a0d1d423ad3ddd4926f99d6804ec71f88854b6d54cc80d9` |
| 16 | `theorem` | [DifferentiableOn.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/differentiableon-sqrt--acd5dba417ad9ad140c79c53.md) | 141 | `result-track:acd5dba417ad9ad140c79c53015679cc22bd156cb720c749b76ce5bd1092720d` |
| 17 | `theorem` | [Differentiable.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/differentiable-sqrt--cb16df2085506e0247651769.md) | 145 | `result-track:cb16df2085506e0247651769c9186fcc887881bc9cbd67998ff00b41804fd09a` |
| 18 | `theorem` | [fderivWithin_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/fderivwithin-sqrt--40b2f4135b9d8b3072f6713f.md) | 149 | `result-track:40b2f4135b9d8b3072f6713f856314a066ffb54358862c363ee03c6bbae70d78` |
| 19 | `theorem` | [fderiv_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/fderiv-sqrt--0cb307bd100ce6d3d0a3c710.md) | 156 | `result-track:0cb307bd100ce6d3d0a3c710062ea68eca714f91d15bdaa2f61fb910d9d4fa52` |
| 20 | `theorem` | [ContDiffAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/contdiffat-sqrt--4baceebdf3370cc6609bfc7d.md) | 161 | `result-track:4baceebdf3370cc6609bfc7d5196f0e9ccff835bbdd66b68614a271c9c074922` |
| 21 | `theorem` | [ContDiffWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/contdiffwithinat-sqrt--4aa812672166d49d810ea606.md) | 166 | `result-track:4aa812672166d49d810ea606b9e7b9b1888e75cb55ee6a5dc3ab75173e8430a1` |
| 22 | `theorem` | [ContDiffOn.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/contdiffon-sqrt--78b1c81e3b57b2cf008ef251.md) | 171 | `result-track:78b1c81e3b57b2cf008ef251df7d38d859aa17ae30ff37c597f2ab200ed9b92d` |
| 23 | `theorem` | [ContDiff.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantea788d23c3af343fefa19063f4397396eda3d84034c06f9ea626cfaf4782f488.lean/declarations/contdiff-sqrt--d03250fa0c84d746a5af5c5f.md) | 175 | `result-track:d03250fa0c84d746a5af5c5f483e196bb8d2a6b7e00940f7fe4c4eb085660c2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
