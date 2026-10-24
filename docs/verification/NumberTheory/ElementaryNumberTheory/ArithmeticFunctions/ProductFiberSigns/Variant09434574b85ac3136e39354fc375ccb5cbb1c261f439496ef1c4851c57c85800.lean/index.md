# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ProductFiberSigns.Variant09434574b85ac3136e39354fc375ccb5cbb1c261f439496ef1c4851c57c85800

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0230e4bdcaecef4abd6856a5cf2d99ef54bf8998",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variant09434574b85ac3136e39354fc375ccb5cbb1c261f439496ef1c4851c57c85800.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variant09434574b85ac3136e39354fc375ccb5cbb1c261f439496ef1c4851c57c85800.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variant09434574b85ac3136e39354fc375ccb5cbb1c261f439496ef1c4851c57c85800.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0230e4bdcaecef4abd6856a5cf2d99ef54bf8998`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variant09434574b85ac3136e39354fc375ccb5cbb1c261f439496ef1c4851c57c85800.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variant09434574b85ac3136e39354fc375ccb5cbb1c261f439496ef1c4851c57c85800.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [moebius_product_sign](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variant09434574b85ac3136e39354fc375ccb5cbb1c261f439496ef1c4851c57c85800.lean/declarations/moebius-product-sign--b7df495f14d545f385338c51.md) | 12 | `result-track:b7df495f14d545f385338c519c48b41187067d397e15ba2f2b3c2395700ab269` |
| 2 | `theorem` | [fixed_product_fiber_sign](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variant09434574b85ac3136e39354fc375ccb5cbb1c261f439496ef1c4851c57c85800.lean/declarations/fixed-product-fiber-sign--f5a58272b96b243d5dc91fb5.md) | 33 | `result-track:f5a58272b96b243d5dc91fb54426a2557bb489652a802af5b1707844c298ba20` |
| 3 | `theorem` | [fixed_product_fiber_sign_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variant09434574b85ac3136e39354fc375ccb5cbb1c261f439496ef1c4851c57c85800.lean/declarations/fixed-product-fiber-sign-nonneg--edf36c87a18dd68552555c32.md) | 50 | `result-track:edf36c87a18dd68552555c32c4b960ae7474e947dcede283c693ee70d5daf462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
