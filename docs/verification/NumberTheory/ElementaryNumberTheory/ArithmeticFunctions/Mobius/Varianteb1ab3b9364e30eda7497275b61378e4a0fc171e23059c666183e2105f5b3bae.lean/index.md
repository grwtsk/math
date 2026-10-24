# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Mobius.Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d99cfa4922dc381e1a59f1483b135dcca977b44",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d99cfa4922dc381e1a59f1483b135dcca977b44`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.DivisorSum` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mobiusFn](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean/declarations/mobiusfn--99f318e0c197f8701d0cc97f.md) | 18 | `declaration-track:99f318e0c197f8701d0cc97f50a900fac0fe27380f3f0a98fa814dafcd3663e6` |
| 2 | `theorem` | [mobius_sum_divisors_eq_one_or_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean/declarations/mobius-sum-divisors-eq-one-or-zero--847c1efb630d4658d3f806ef.md) | 21 | `result-track:847c1efb630d4658d3f806ef4d593679575e5e968b20af3d36eb829c19d0b0f5` |
| 3 | `theorem` | [mobius_inversion_finite_checked](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean/declarations/mobius-inversion-finite-checked--823997f67b17fb12ee2337e3.md) | 38 | `result-track:823997f67b17fb12ee2337e3d6b3884945aeb31338f299579f7d1a5075fe6afe` |
| 4 | `theorem` | [mobius_inversion](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Mobius/Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae.lean/declarations/mobius-inversion--6f34e0ff803dc153c0cd0090.md) | 61 | `result-track:6f34e0ff803dc153c0cd00904af4e01b254cbc2ca77368a4005fcad26f3dae72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
