# Verification target: GRWTSK.Algebra.UniversalAlgebra.Center.Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7390f8ad6704cbee5304fdf9e319d9a7a2585fd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7390f8ad6704cbee5304fdf9e319d9a7a2585fd`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Center` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.star_mem_center](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean/declarations/set-star-mem-center--4182e70da82a2e9da3883cef.md) | 14 | `result-track:4182e70da82a2e9da3883cefe964f2a64783acaeabb9b017059b45ae7b3054e5` |
| 2 | `theorem` | [Set.star_centralizer](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean/declarations/set-star-centralizer--8e1da34efdece98d2911ecfb.md) | 36 | `result-track:8e1da34efdece98d2911ecfbe44ff3181ad26a42e8cd71210a74cc1fee600c4c` |
| 3 | `theorem` | [Set.union_star_self_comm](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean/declarations/set-union-star-self-comm--1e54954204279fb037a67bab.md) | 41 | `result-track:1e54954204279fb037a67bab7cad82a7bf76d4c0c7be0c463eb3dc84661bf206` |
| 4 | `theorem` | [Set.star_mem_centralizer'](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean/declarations/set-star-mem-centralizer--85522bc095e78c7cb4f9a0de.md) | 49 | `result-track:85522bc095e78c7cb4f9a0de3fdde2d19ee09730fe47a459e90bdcef9bf383dc` |
| 5 | `theorem` | [Set.star_mem_centralizer](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant74f4ed863b32cbd166d6f593d745a03c5d3e00258e37a248ae0e0839494e6b01.lean/declarations/set-star-mem-centralizer--d5002c747947b394483bd140.md) | 54 | `result-track:d5002c747947b394483bd140f822ae60892dc01eb89ffabeefd5b90fa630b861` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
