# Verification target: GRWTSK.Algebra.LinearAlgebra.EqLocus.Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9380f6a7b148ce6b4ac7050a59f2d50e9f1671f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9380f6a7b148ce6b4ac7050a59f2d50e9f1671f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Ker` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eqLocus](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean/declarations/eqlocus--4aff0c40fe7540bc78794b0d.md) | 51 | `declaration-track:4aff0c40fe7540bc78794b0d1f334733f50d48c3d31bc8c86739a210ff4c53a6` |
| 2 | `theorem` | [mem_eqLocus](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean/declarations/mem-eqlocus--3ee0623f99805aad12420225.md) | 59 | `result-track:3ee0623f99805aad124202257a17e9c788938bebbc67aa3f58f78fe0152e6d2d` |
| 3 | `theorem` | [eqLocus_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean/declarations/eqlocus-toaddsubmonoid--fb8020807182e0602458b1b2.md) | 62 | `result-track:fb8020807182e0602458b1b279474171ebbe7d7217a9351f476fb7c7612fd62c` |
| 4 | `theorem` | [eqLocus_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean/declarations/eqlocus-eq-top--95b9e7284465a4109a2cd301.md) | 67 | `result-track:95b9e7284465a4109a2cd301ef99a4c1f5571cef7480360ce9a54ab3af6d8513` |
| 5 | `theorem` | [eqLocus_same](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean/declarations/eqlocus-same--7bedccae29972b853a569a02.md) | 71 | `result-track:7bedccae29972b853a569a02149b9ad0584c486d2d5586db610cbe40c591a646` |
| 6 | `theorem` | [le_eqLocus](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean/declarations/le-eqlocus--4e78671c332a83ce39351677.md) | 73 | `result-track:4e78671c332a83ce39351677c0e6d15853ef106a665afbb7fab435a5d8251f62` |
| 7 | `theorem` | [eqOn_sup](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean/declarations/eqon-sup--250f1649d69e515725d421f7.md) | 76 | `result-track:250f1649d69e515725d421f7f6c3f73388677724345fba4aa709635c22746eae` |
| 8 | `theorem` | [ext_on_codisjoint](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean/declarations/ext-on-codisjoint--7044b756aa631e81443dd5d7.md) | 82 | `result-track:7044b756aa631e81443dd5d7af9c13c5f74602ba4c97ceb0a52e4a0315679ef7` |
| 9 | `theorem` | [eqLocus_eq_ker_sub](../../../../../mathematics/Algebra/LinearAlgebra/EqLocus/Variantce58182c3bfdca3ff12d10f944aebff12394064d7b9cfdad489ff782edd26f25.lean/declarations/eqlocus-eq-ker-sub--13caef3b34ff4b6c2f149a2d.md) | 99 | `result-track:13caef3b34ff4b6c2f149a2d5856edd06c83cfbf40da9f67ea1206865750e5ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
