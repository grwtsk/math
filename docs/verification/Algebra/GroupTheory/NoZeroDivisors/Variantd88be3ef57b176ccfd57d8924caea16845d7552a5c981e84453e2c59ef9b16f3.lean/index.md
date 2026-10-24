# Verification target: GRWTSK.Algebra.GroupTheory.NoZeroDivisors.Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2799958949b23edc71e860cbdb351853532f2e24",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2799958949b23edc71e860cbdb351853532f2e24`.

Source path: `GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.UniqueProds.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_apply_mul_eq_mul_of_uniqueMul](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean/declarations/mul-apply-mul-eq-mul-of-uniquemul--52cfc96aa5311d134fbd8e73.md) | 77 | `result-track:52cfc96aa5311d134fbd8e73b5d7030d71eddb84b63c9bb36709f4ec3f70f71d` |
| 2 | `instance` | [instNoZeroDivisorsOfUniqueProds](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean/declarations/instnozerodivisorsofuniqueprods--26d2f53a0d8bd93e51f256af.md) | 90 | `declaration-track:26d2f53a0d8bd93e51f256af193dc80d742573406fd8cc6fd3a13bd971d9fa8b` |
| 3 | `theorem` | [mul_apply_add_eq_mul_of_uniqueAdd](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean/declarations/mul-apply-add-eq-mul-of-uniqueadd--27ad826036ac7f8d729d89dc.md) | 106 | `result-track:27ad826036ac7f8d729d89dce32834ade6920d9d72642778354bf9f3787392dc` |
| 4 | `instance` | [instNoZeroDivisorsOfUniqueSums](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean/declarations/instnozerodivisorsofuniquesums--86ece9ec4603e0da80eff72f.md) | 111 | `declaration-track:86ece9ec4603e0da80eff72fc208a3ca11bb119acfccd36df62623008c04e323` |
| 5 | `instance` | [instIsDomainOfUniqueProds](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean/declarations/instisdomainofuniqueprods--a84a05481ef71a4bd9486057.md) | 122 | `declaration-track:a84a05481ef71a4bd9486057c2022f97171cc8c4a20281bfa08fa7fc9eb4fc16` |
| 6 | `instance` | [instIsDomainOfUniqueSums](../../../../../mathematics/Algebra/GroupTheory/NoZeroDivisors/Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3.lean/declarations/instisdomainofuniquesums--87b35c9625e0e23c37acf6d9.md) | 129 | `declaration-track:87b35c9625e0e23c37acf6d9f8fb0dc098f21e285d78ebdbab4ac1d9a84d93c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
