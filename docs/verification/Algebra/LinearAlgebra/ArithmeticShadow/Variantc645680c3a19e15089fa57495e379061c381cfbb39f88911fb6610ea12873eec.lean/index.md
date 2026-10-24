# Verification target: GRWTSK.Algebra.LinearAlgebra.ArithmeticShadow.Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7117038622016c664d476c991ee593bca1a7048a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7117038622016c664d476c991ee593bca1a7048a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Tree.TopologyPrime` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArithmeticShadow](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/declarations/arithmeticshadow--d43772bc478ef93ea7cfa1ff.md) | 7 | `declaration-track:d43772bc478ef93ea7cfa1ff761c137c0c91d97a4e124d7bf943d226fe250841` |
| 2 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/declarations/ext--1ea2c2dae7ff720534d03c52.md) | 13 | `result-track:1ea2c2dae7ff720534d03c52fcb440b04e038543d532bb462b863346baadc7f3` |
| 3 | `def` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/declarations/zero--6963b26dd90c9f3e67466c1d.md) | 26 | `declaration-track:6963b26dd90c9f3e67466c1d966fd2ac136c88cc325435f959fc65faf71b8017` |
| 4 | `def` | [singleton](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/declarations/singleton--f6c0395b6704ac01ef91d7e0.md) | 29 | `declaration-track:f6c0395b6704ac01ef91d7e0f82f7de95ce0f1c8cf29a15ca7991e7ca16eb940` |
| 5 | `def` | [add](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/declarations/add--9daf9a618f84f1cc7bcc977d.md) | 33 | `declaration-track:9daf9a618f84f1cc7bcc977d0b47dbe68624e17d625fcfd43cda3f1daa66dce4` |
| 6 | `def` | [arithmeticShadowCore](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/declarations/arithmeticshadowcore--f930804d9b984f3cc305ade5.md) | 38 | `declaration-track:f930804d9b984f3cc305ade5c9ef5b00f46a06ae9fa35bc3051451723e7f2419` |
| 7 | `def` | [arithmeticShadow](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/declarations/arithmeticshadow--998f5c41fc98eca905cc82f1.md) | 44 | `declaration-track:998f5c41fc98eca905cc82f126ee551169231f5d10f2a5ec0a1bc6775038ee7e` |
| 8 | `theorem` | [arithmeticShadow_multiplicative_under_compose](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/declarations/arithmeticshadow-multiplicative-under-compose--d8a37282d5747bca5d93f596.md) | 49 | `result-track:d8a37282d5747bca5d93f596c16c58b31c5cdebaa856db6dcb252d8b34d82896` |
| 9 | `theorem` | [arithmeticShadow_unique_factorization](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/declarations/arithmeticshadow-unique-factorization--3b2c6cb77ae1505040ff5c5c.md) | 55 | `result-track:3b2c6cb77ae1505040ff5c5c72aeb60e222fd9f41a50b4b1f0aa5fafa1fa9bd5` |
| 10 | `theorem` | [arithmeticShadow_forgets_bracketing](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticShadow/Variantc645680c3a19e15089fa57495e379061c381cfbb39f88911fb6610ea12873eec.lean/declarations/arithmeticshadow-forgets-bracketing--04d630179310dc061ec0902c.md) | 68 | `result-track:04d630179310dc061ec0902c37967c51784b584fa04dd80933d07fe43b486876` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
