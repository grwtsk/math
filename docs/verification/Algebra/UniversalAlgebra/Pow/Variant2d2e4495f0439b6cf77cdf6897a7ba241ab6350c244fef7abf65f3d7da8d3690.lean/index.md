# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pow.Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14a8f650836f81aa6d2fefc2f40498c31bce7715",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14a8f650836f81aa6d2fefc2f40498c31bce7715`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Iterate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLeftRegular.pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean/declarations/isleftregular-pow--f1e8380c465d6d4333f5c974.md) | 39 | `result-track:f1e8380c465d6d4333f5c97403d9e8e231e04d05c6d12090364c55304252f332` |
| 2 | `theorem` | [IsRightRegular.pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean/declarations/isrightregular-pow--0ec6c7c598a86c5f8d4e81bb.md) | 44 | `result-track:0ec6c7c598a86c5f8d4e81bb40ac0358f56ea422b7a43af52319302bae35e7c7` |
| 3 | `theorem` | [IsRegular.pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean/declarations/isregular-pow--145c2714b87d7dd83e14a031.md) | 50 | `result-track:145c2714b87d7dd83e14a031822b5c80d60993e7b9162a2bb1ba521f16b71224` |
| 4 | `theorem` | [IsLeftRegular.pow_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean/declarations/isleftregular-pow-iff--7d09391876b0032d2e8f8840.md) | 55 | `result-track:7d09391876b0032d2e8f88406f76169f0589b334c94e4597eba4b232473e297d` |
| 5 | `theorem` | [IsRightRegular.pow_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean/declarations/isrightregular-pow-iff--96087ba62f7bf89bf26c6308.md) | 62 | `result-track:96087ba62f7bf89bf26c6308fb6652d3584256717e4dfe5a9131e36dd6109838` |
| 6 | `theorem` | [IsRegular.pow_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean/declarations/isregular-pow-iff--2336031d83939b114c3852f5.md) | 70 | `result-track:2336031d83939b114c3852f5265b2218203f61e4055eb9a46ec6d1c0fb545fa9` |
| 7 | `lemma` | [IsLeftRegular.prod](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean/declarations/isleftregular-prod--a122e82177d8843b7d9fa8b2.md) | 83 | `result-track:a122e82177d8843b7d9fa8b28ea02af6c56e4632664361d35b9b1349555022e8` |
| 8 | `lemma` | [IsRightRegular.prod](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean/declarations/isrightregular-prod--df0c70e34fee1186024c570a.md) | 87 | `result-track:df0c70e34fee1186024c570aee5939efff1645dbdcf47fc659959c1d18cfe636` |
| 9 | `lemma` | [IsRegular.prod](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean/declarations/isregular-prod--a942698560c1d2cbee0fee03.md) | 91 | `result-track:a942698560c1d2cbee0fee0389c1f18f5624172e84289cb7743607ea57ba7b46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
