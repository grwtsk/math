# Verification target: GRWTSK.Algebra.CommutativeAlgebra.RationalRoot.Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ed4370533cd968b7bf8c81a426f47370d35a320",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/RationalRoot/Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ed4370533cd968b7bf8c81a426f47370d35a320`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/RationalRoot/Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/RationalRoot/Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NumDen` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.ScaleRoots` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [scaleRoots_aeval_eq_zero_of_aeval_mk'_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269.lean/declarations/scaleroots-aeval-eq-zero-of-aeval-mk-eq-zero--e9e8cca2cb3d180096b83827.md) | 46 | `result-track:e9e8cca2cb3d180096b83827a2b743746c74935d5b8ede65b633b68d5bd8c4d6` |
| 2 | `theorem` | [num_isRoot_scaleRoots_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269.lean/declarations/num-isroot-scaleroots-of-aeval-eq-zero--dab001cedb5a854b1b02572a.md) | 55 | `result-track:dab001cedb5a854b1b02572a7107a6e60c81a4116143441ab0e02ddb27a5d9c9` |
| 3 | `theorem` | [num_dvd_of_is_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269.lean/declarations/num-dvd-of-is-root--77482b5420d094f8d8d2dd58.md) | 74 | `result-track:77482b5420d094f8d8d2dd581a0f506bcf1ceaa6d832f117f3978c831eeeb19c` |
| 4 | `theorem` | [den_dvd_of_is_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269.lean/declarations/den-dvd-of-is-root--d2a69ca79bd3290e687bec64.md) | 94 | `result-track:d2a69ca79bd3290e687bec64896dbf38bfb9201b4921ec9ac6405c96eef787a9` |
| 5 | `theorem` | [isInteger_of_is_root_of_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269.lean/declarations/isinteger-of-is-root-of-monic--372faa4af5196f68c9e878a0.md) | 120 | `result-track:372faa4af5196f68c9e878a07354f45d4212ad0161298048e265ba9494c08f8a` |
| 6 | `theorem` | [exists_integer_of_is_root_of_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269.lean/declarations/exists-integer-of-is-root-of-monic--1fa9fc1853ec0618b9daaa8d.md) | 124 | `result-track:1fa9fc1853ec0618b9daaa8d8ccce12e7fab9a6ea207cfb8ab2d93e6d4c095ea` |
| 7 | `theorem` | [integer_of_integral](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269.lean/declarations/integer-of-integral--42baf8e187d30866464c7df4.md) | 140 | `result-track:42baf8e187d30866464c7df46500d12ffc3e2fb4623c025c23b014985cf42fe7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/RationalRoot/Varianta7fb2330f69109d6fc451c591855a00776f889417a63ca3a13b82b1eea465269.lean/declarations/instance--44002bc9a41105ce87dcc682.md) | 144 | `declaration-track:44002bc9a41105ce87dcc6823c2e7f316ed1e45cba3a8b57864320229d67adc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
