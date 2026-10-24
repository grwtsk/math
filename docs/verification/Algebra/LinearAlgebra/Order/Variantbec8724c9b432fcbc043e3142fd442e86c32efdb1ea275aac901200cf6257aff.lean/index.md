# Verification target: GRWTSK.Algebra.LinearAlgebra.Order.Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf00f8bb20473d6847dc198ab10d2d18d56c20cb",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Order/Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf00f8bb20473d6847dc198ab10d2d18d56c20cb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Order/Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Order/Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [toIsOrderedAddMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff.lean/declarations/toisorderedaddmonoid--97fb584c39fafafa419894bf.md) | 28 | `declaration-track:97fb584c39fafafa419894bfda2c4d0765071734ab2adc51c39b1133d9683ff8` |
| 2 | `instance` | [toIsOrderedCancelAddMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbec8724c9b432fcbc043e3142fd442e86c32efdb1ea275aac901200cf6257aff.lean/declarations/toisorderedcanceladdmonoid--86e73d8998affcf2cbc8b93f.md) | 35 | `declaration-track:86e73d8998affcf2cbc8b93f8ec2914ca899ae2054dcc95ec951a2acd247da36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
