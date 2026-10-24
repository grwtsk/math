# Verification target: GRWTSK.Algebra.LinearAlgebra.QuadraticForm.Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d073178a21c1dc9b1edf48b59f769e0598793d13",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d073178a21c1dc9b1edf48b59f769e0598793d13`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [B](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean/declarations/b--77b6a279b1385c41ecb95f17.md) | 28 | `declaration-track:77b6a279b1385c41ecb95f171be5fa2aed0250abbc07cbf8a57d6a65b15b904e` |
| 2 | `theorem` | [B_apply](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean/declarations/b-apply--b36cd9cfa02973ea88ccb2fb.md) | 32 | `result-track:b36cd9cfa02973ea88ccb2fb44dac920de02ed93818946b566851c6bbd341035` |
| 3 | `theorem` | [isSymm_B](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean/declarations/issymm-b--6e14dee2a0e09c22f2b49feb.md) | 35 | `result-track:6e14dee2a0e09c22f2b49feb3c81af2da4287c6f46d7bf32c26bda9cf2f7c035` |
| 4 | `theorem` | [isAlt_B](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean/declarations/isalt-b--419aadc2763fbc8980e740e2.md) | 37 | `result-track:419aadc2763fbc8980e740e25ee70741dda9a005e3819b394dfbc3a8e72bf771` |
| 5 | `theorem` | [B_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean/declarations/b-ne-zero--97163108f6693c57274bbfd5.md) | 40 | `result-track:97163108f6693c57274bbfd547c0905e074feac5de94dffea221b403c4ca8554` |
| 6 | `theorem` | [LinearMap.BilinForm.not_injOn_toQuadraticForm_isSymm.](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean/declarations/linearmap-bilinform-not-injon-toquadraticform-issymm--caf1b1d4022773171a803e3d.md) | 47 | `result-track:caf1b1d4022773171a803e3d1ac4de761180f7f7ca744e2c36d18b4adf213beb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
