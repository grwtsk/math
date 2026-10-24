# Verification target: GRWTSK.Algebra.UniversalAlgebra.DirectSum.Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a3d5d265eec9c3c06f2b9c2765bb2ca526833d7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a3d5d265eec9c3c06f2b9c2765bb2ca526833d7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Submodule` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/instance--89a5a14a15df6bfb5c7a4b3e.md) | 56 | `declaration-track:89a5a14a15df6bfb5c7a4b3ea2d85206f76992292b4d17ced4e6b7758bc7bcfd` |
| 2 | `theorem` | [lie_module_bracket_apply](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/lie-module-bracket-apply--a3d02a0d34aa351d54c0b407.md) | 69 | `result-track:a3d02a0d34aa351d54c0b4076d53e7de57ccf8df4928bd05816a80c0878c2b5b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/instance--725c74c145a1b9135227e39b.md) | 73 | `declaration-track:725c74c145a1b9135227e39b0fff10ed6fbeb09583f9c758dac7af63cd4b4893` |
| 4 | `def` | [lieModuleOf](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/liemoduleof--36b89547241de06ed4834e9e.md) | 84 | `declaration-track:36b89547241de06ed4834e9e9d66017848589d07cc460e97df96a59699047481` |
| 5 | `def` | [lieModuleComponent](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/liemodulecomponent--bf7b528629507ad49041c9b7.md) | 94 | `declaration-track:bf7b528629507ad49041c9b7890e291ebe0ddc06fb08f111b6f0f18d784e6113` |
| 6 | `instance` | [lieRing](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/liering--a337a729831412d220cf49f5.md) | 110 | `declaration-track:a337a729831412d220cf49f524ddaf28a48e9179e1ed8c9681519f716b9b358c` |
| 7 | `theorem` | [bracket_apply](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/bracket-apply--9e6fb96e447bce4943ddf536.md) | 129 | `result-track:9e6fb96e447bce4943ddf5368062d2a9f48864f388945946f4b1bbffbe3903ee` |
| 8 | `instance` | [lieAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/liealgebra--c0eb7621c8d1b0e16767880b.md) | 133 | `declaration-track:c0eb7621c8d1b0e16767880b770be9de8ed985b41b39bf9328aa0b00954e292b` |
| 9 | `def` | [lieAlgebraOf](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/liealgebraof--79766c31d99432408032eee6.md) | 144 | `declaration-track:79766c31d99432408032eee62a94185dd1576f18b38d2617e19b8e8e2b3f03e8` |
| 10 | `def` | [lieAlgebraComponent](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/liealgebracomponent--c05fd0247d8d6df419ab7b8c.md) | 156 | `declaration-track:c05fd0247d8d6df419ab7b8c2881db5c36c0014155d28b36aaa1ea7f99c1fe7c` |
| 11 | `theorem` | [lieAlgebra_ext](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/liealgebra-ext--9b34c56bc0c991c33681a928.md) | 163 | `result-track:9b34c56bc0c991c33681a92846062995965b6893443cce14b65fb15de3a47597` |
| 12 | `theorem` | [lie_of_of_ne](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/lie-of-of-ne--9d7f619ae83ba7283671a7ec.md) | 168 | `result-track:9d7f619ae83ba7283671a7ecbc8958e7030d123b9be44ecbc3a9055b35284ca1` |
| 13 | `theorem` | [lie_of_of_eq](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/lie-of-of-eq--8932d499d837452d3fca0cb4.md) | 179 | `result-track:8932d499d837452d3fca0cb48876bcfa64cb2d4fdd833c6cd95fff8f5e2fe15e` |
| 14 | `theorem` | [lie_of](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/lie-of--76beffbab24fdfb6bd7416c0.md) | 187 | `result-track:76beffbab24fdfb6bd7416c02e0fba1142028b25ad26357d408fbc4411760888` |
| 15 | `def` | [toLieAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/toliealgebra--64ed181af51cdeef7d981a17.md) | 201 | `declaration-track:64ed181af51cdeef7d981a17383406d8ccf5e85dd4c00dcce5512786863e68e1` |
| 16 | `instance` | [lieRingOfIdeals](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/lieringofideals--d201f08d33a86a88e4a48829.md) | 246 | `declaration-track:d201f08d33a86a88e4a4882965da4c4cc0b409d05dc26555b1372ff839ca92ab` |
| 17 | `instance` | [lieAlgebraOfIdeals](../../../../../mathematics/Algebra/UniversalAlgebra/DirectSum/Variantb9bf62e2c7d71153b9d26db88f62fcd394f9bdac059bef756b87e70813c48c7a.lean/declarations/liealgebraofideals--6f1aba970c407676241f90d3.md) | 251 | `declaration-track:6f1aba970c407676241f90d3a623ce3fbb466e3f19877c0d07b6a6a0a3c31de6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
