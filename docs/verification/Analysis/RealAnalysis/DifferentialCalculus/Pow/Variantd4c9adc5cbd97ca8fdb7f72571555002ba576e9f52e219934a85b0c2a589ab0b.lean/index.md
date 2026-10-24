# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pow.Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8be7b639072a275dfda0f977dceb000c4202ef5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8be7b639072a275dfda0f977dceb000c4202ef5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/hasstrictderivat-pow--e164975856965ba35f205843.md) | 31 | `result-track:e164975856965ba35f205843b588fc0f565dc5987c0dd04e66896ad5e151510d` |
| 2 | `theorem` | [hasDerivAt_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/hasderivat-pow--fc0bc9c1a412e935ddcc13aa.md) | 39 | `result-track:fc0bc9c1a412e935ddcc13aa884f61e47ead9cd649ade74bcdba28ad2be9fbff` |
| 3 | `theorem` | [hasDerivWithinAt_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/hasderivwithinat-pow--505c9edff6aca1420d5ce73a.md) | 43 | `result-track:505c9edff6aca1420d5ce73ac34443ee2414d52807509895b2213aec9a319b46` |
| 4 | `theorem` | [differentiableAt_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/differentiableat-pow--07202534a320b0927a72edf1.md) | 47 | `result-track:07202534a320b0927a72edf12add78e33420acf76c0ade47e1d1a1fac093cc7a` |
| 5 | `theorem` | [differentiableWithinAt_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/differentiablewithinat-pow--6ae0c49318080165485bd549.md) | 50 | `result-track:6ae0c49318080165485bd54913285f471d4e1eea68cefe457db11153d005258c` |
| 6 | `theorem` | [differentiable_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/differentiable-pow--3bd4e47ce6ac7354a52ec33b.md) | 54 | `result-track:3bd4e47ce6ac7354a52ec33b64bdf796eca4200ff6a33083db86aadb03ff0522` |
| 7 | `theorem` | [differentiableOn_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/differentiableon-pow--8505670166a11959520df285.md) | 56 | `result-track:8505670166a11959520df2855932a9784e74c78383224b93766048b95e2824dc` |
| 8 | `theorem` | [deriv_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/deriv-pow--57d54235250f07a1193fefa2.md) | 59 | `result-track:57d54235250f07a1193fefa22697b3f98ff7a8a9105f211c85160c880b1eee1b` |
| 9 | `theorem` | [deriv_pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/deriv-pow--941bfcf5b3708ae4a804dbbc.md) | 63 | `result-track:941bfcf5b3708ae4a804dbbcfc0587da29392b8fd0911103842705afb06735b6` |
| 10 | `theorem` | [derivWithin_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/derivwithin-pow--63431e4ffbf7c0f23b42826b.md) | 66 | `result-track:63431e4ffbf7c0f23b42826b6b1ce509cdec6049e599873b45b10097bc5b510d` |
| 11 | `theorem` | [HasDerivWithinAt.pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/hasderivwithinat-pow--fd36c5a032582421db544160.md) | 70 | `result-track:fd36c5a032582421db544160450078bb46cde960bbe1a79f15a5612e48b693c8` |
| 12 | `theorem` | [HasDerivAt.pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/hasderivat-pow--2a0e7fa1435059e1ad207557.md) | 74 | `result-track:2a0e7fa1435059e1ad207557599b1be070ea075916c75ab78ec773fd60c0238d` |
| 13 | `theorem` | [derivWithin_pow'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/derivwithin-pow--3e0e21f6fa612ca8ebb2f734.md) | 79 | `result-track:3e0e21f6fa612ca8ebb2f734b17bfead23331bd340e0e4f03c2b55a5c6437417` |
| 14 | `theorem` | [deriv_pow''](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantd4c9adc5cbd97ca8fdb7f72571555002ba576e9f52e219934a85b0c2a589ab0b.lean/declarations/deriv-pow--34ca442d44a2b56d149f4e01.md) | 86 | `result-track:34ca442d44a2b56d149f4e01c56eb7b9f31370da19261044ad025415ddb8d402` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
