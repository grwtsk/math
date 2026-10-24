# Verification target: GRWTSK.Algebra.UniversalAlgebra.IndicatorFunction.Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14d6a047a3629879a40140c1979d7109e42b5aad",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14d6a047a3629879a40140c1979d7109e42b5aad`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [enorm_indicator_eq_indicator_enorm](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean/declarations/enorm-indicator-eq-indicator-enorm--38327122e3082dcebdf29ab8.md) | 25 | `result-track:38327122e3082dcebdf29ab8682438313b20f12df4d16da32d2f28391073f80e` |
| 2 | `theorem` | [enorm_indicator_le_of_subset](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean/declarations/enorm-indicator-le-of-subset--a1de54e3665b6a2279ee3eeb.md) | 29 | `result-track:a1de54e3665b6a2279ee3eeb2c0d45ef448ad6fc285b119e3a4e62f774041680` |
| 3 | `theorem` | [indicator_enorm_le_enorm_self](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean/declarations/indicator-enorm-le-enorm-self--a3d32823510579b83f6cf6e7.md) | 34 | `result-track:a3d32823510579b83f6cf6e739a93842fd8f97b06d2649ee9be7adf413707f56` |
| 4 | `theorem` | [enorm_indicator_le_enorm_self](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean/declarations/enorm-indicator-le-enorm-self--44564d1b5fcbd3f665748b36.md) | 37 | `result-track:44564d1b5fcbd3f665748b3663517694f07c63a9db08978af73b8d7e6affbe9c` |
| 5 | `theorem` | [norm_indicator_eq_indicator_norm](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean/declarations/norm-indicator-eq-indicator-norm--9907fcf1d588970f741808b8.md) | 47 | `result-track:9907fcf1d588970f741808b8844713b4fd37fcbfab285e9dd0e657ff509f9e65` |
| 6 | `theorem` | [nnnorm_indicator_eq_indicator_nnnorm](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean/declarations/nnnorm-indicator-eq-indicator-nnnorm--5b6205469cbd3e93c57c1520.md) | 50 | `result-track:5b6205469cbd3e93c57c15206d5b564c02ee6fd8c6518c4676ebd8937f966d3d` |
| 7 | `theorem` | [norm_indicator_le_of_subset](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean/declarations/norm-indicator-le-of-subset--2db08c4751b95bd44d9df932.md) | 54 | `result-track:2db08c4751b95bd44d9df93247ac6839cdd2945d535db239ca804586b1d43f93` |
| 8 | `theorem` | [indicator_norm_le_norm_self](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean/declarations/indicator-norm-le-norm-self--c6a7e0d8069f29bf28ff576e.md) | 59 | `result-track:c6a7e0d8069f29bf28ff576e8cbc25c9dc9266043f57c38ce762df5ece55741d` |
| 9 | `theorem` | [norm_indicator_le_norm_self](../../../../../mathematics/Algebra/UniversalAlgebra/IndicatorFunction/Variant00d214447848a364d7b2ef321563f73b7d0a3791fba4794250cfeb948a5aefee.lean/declarations/norm-indicator-le-norm-self--ef62d6eb847eac410b5c9db0.md) | 62 | `result-track:ef62d6eb847eac410b5c9db06461784e4ee0ee9936f5436f77b7cf8b6fd107e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
