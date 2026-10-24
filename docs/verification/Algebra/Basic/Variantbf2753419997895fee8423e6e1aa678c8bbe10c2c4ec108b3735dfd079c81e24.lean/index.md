# Verification target: GRWTSK.Algebra.Basic.Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b85886b995e0f15b698dce50e196d71f5d6d507",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b85886b995e0f15b698dce50e196d71f5d6d507`.

Source path: `GRWTSK/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient.Nilpotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FormallyEtale](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/formallyetale--d331f8a43046c5e48e5a33f9.md) | 43 | `declaration-track:d331f8a43046c5e48e5a33f9584957ae097243477dbf7e892b4f31cd1195c189` |
| 2 | `theorem` | [iff_unramified_and_smooth](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/iff-unramified-and-smooth--6071d8f2e440ace1d47374d1.md) | 58 | `result-track:6071d8f2e440ace1d47374d1e9ed83b71a2a54fdf8e34f7c9ca618b9e9261020` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/instance--212024b8ad2fa2024e9bda74.md) | 63 | `declaration-track:212024b8ad2fa2024e9bda74d4c985314973ca7a2e9175cc987c94cea7b6facc` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/instance--ebfbadac99be9e659b008065.md) | 67 | `declaration-track:ebfbadac99be9e659b0080654364b2d0c82ce58fdca161087361c4fc7d2d69f0` |
| 5 | `theorem` | [of_unramified_and_smooth](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/of-unramified-and-smooth--46a7c8b42b0b2d466afcd2c3.md) | 70 | `result-track:46a7c8b42b0b2d466afcd2c34bdd10f300ed589766efa71d138c9fc092693eb1` |
| 6 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/of-equiv--6f431cb1783b5aee3740e9d2.md) | 81 | `result-track:6f431cb1783b5aee3740e9d2f4306c3d6ba52164ff21f058f86b9c5bf846fbc6` |
| 7 | `theorem` | [iff_of_equiv](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/iff-of-equiv--cade7e2e2e1348927ccd350b.md) | 85 | `result-track:cade7e2e2e1348927ccd350bcec9c7ed6457ad56ba9800f0c60c69f7a90e4ebc` |
| 8 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/comp--dfebad9da8e55519bee346a1.md) | 96 | `result-track:dfebad9da8e55519bee346a1dea9282093b56909dea0130186afff3629f6dc89` |
| 9 | `instance` | [base_change](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/base-change--5a6d8e264147998583f5d238.md) | 110 | `declaration-track:5a6d8e264147998583f5d238729422353196653d19252a1602b90c048cda0aa6` |
| 10 | `theorem` | [of_isLocalization](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/of-islocalization--c707939d05d0ddc1f6faacf2.md) | 147 | `result-track:c707939d05d0ddc1f6faacf27308721e9d8542fb6688dfd58c171b74e25f9c00` |
| 11 | `theorem` | [localization_base](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/localization-base--f85cbf563db0b562389d0c0c.md) | 151 | `result-track:f85cbf563db0b562389d0c0c9faec333b5f0a0be292bc85f5cbce84a3045daed` |
| 12 | `theorem` | [localization_map](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/localization-map--6f7a1090009e471b160ecd1f.md) | 156 | `result-track:6f7a1090009e471b160ecd1fc84ce18190950228c5614dbbd8bab272cc3c58cb` |
| 13 | `class` | [Etale](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/etale--f557ee83f880b8090caad772.md) | 173 | `declaration-track:f557ee83f880b8090caad7725c8f15c6a7519b87a67946a92063185c358ace82` |
| 14 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/of-equiv--b3d9a987a0403ae470994c18.md) | 187 | `result-track:b3d9a987a0403ae470994c18b710b07efe8c389823263d24c9a39e98d559051e` |
| 15 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/comp--405e82d1178eda7a6d2e0567.md) | 196 | `result-track:405e82d1178eda7a6d2e0567b510cb90ca85930f78b4110bfe466a2c0460eb59` |
| 16 | `instance` | [baseChange](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/basechange--48d99f3ac0932b3bc75bab56.md) | 201 | `declaration-track:48d99f3ac0932b3bc75bab564a93ec23ef95bad6e24592bdc4f63c01eb869d96` |
| 17 | `theorem` | [of_isLocalization_Away](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/of-islocalization-away--b7f70f0783ad0fab1bd0aa98.md) | 206 | `result-track:b7f70f0783ad0fab1bd0aa98c777c63ac22e1b9f935c54f710b283a095f9eea7` |
| 18 | `def` | [FormallyEtale](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/formallyetale--330c2dcd89147ce65a3863f9.md) | 223 | `declaration-track:330c2dcd89147ce65a3863f9526fd74e6efaf321ac2bd329cfb32d4a25cf1835` |
| 19 | `lemma` | [formallyEtale_algebraMap](../../../../mathematics/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/declarations/formallyetale-algebramap--eaf78c0625b2dacc083006d2.md) | 227 | `result-track:eaf78c0625b2dacc083006d24e0a327f0f61d12f2c16adbea07bb304010241fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
