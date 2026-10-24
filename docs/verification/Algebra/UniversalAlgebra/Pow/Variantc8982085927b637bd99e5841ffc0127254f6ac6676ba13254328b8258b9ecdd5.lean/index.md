# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pow.Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf0badb02a23a1a5e55b720fbd933e1b29b5a2e7",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf0badb02a23a1a5e55b720fbd933e1b29b5a2e7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/instance--259bd2b796c42ff274c48c22.md) | 43 | `declaration-track:259bd2b796c42ff274c48c22d87326dada8b1b0f346b6aa7b249fc083fa6e7cc` |
| 2 | `lemma` | [epow_def](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/epow-def--1533d28c93d02780e40a3cf2.md) | 48 | `result-track:1533d28c93d02780e40a3cf245c910ea9edd1ec78ce81e7579456b74c0a347bf` |
| 3 | `lemma` | [epow_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/epow-natcast--03ac07d7f3e7aaaa2ca1fea9.md) | 55 | `result-track:03ac07d7f3e7aaaa2ca1fea95cf4bf3a021e5ae16e451711ab8c5782101e4736` |
| 4 | `lemma` | [zero_epow_top](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/zero-epow-top--80522eed6b485c060bb99241.md) | 58 | `result-track:80522eed6b485c060bb992416a042c3ef9bc7cfe10c9acbfd0eb745feb94bfc2` |
| 5 | `lemma` | [zero_epow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/zero-epow--9c385de7c90244fa5fac6bf9.md) | 60 | `result-track:9c385de7c90244fa5fac6bf9d60037e1931ed8e728e6586f386224139ef6151a` |
| 6 | `lemma` | [one_epow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/one-epow--2b40e4b660c487084ee6b9f3.md) | 66 | `result-track:2b40e4b660c487084ee6b9f3cec53a635fe242a400e164cb0e3de6247704ddbc` |
| 7 | `lemma` | [top_epow_top](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/top-epow-top--def8d8b4ebee09d8126c8d36.md) | 72 | `result-track:def8d8b4ebee09d8126c8d36278156483df4fe29be3599abfe83db05d91165b3` |
| 8 | `lemma` | [top_epow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/top-epow--a544c406bc2464b66a03ed06.md) | 74 | `result-track:a544c406bc2464b66a03ed06e0fecf750b4eaf88128e818f704a04cd260b7c7d` |
| 9 | `lemma` | [epow_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/epow-zero--51c3d7a41971aa9c6a100b54.md) | 80 | `result-track:51c3d7a41971aa9c6a100b54beab9038796c3de6167ccdddc83896fd665c7463` |
| 10 | `lemma` | [epow_one](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/epow-one--a34a06f1b108ec3238c8ee87.md) | 84 | `result-track:a34a06f1b108ec3238c8ee876f1528b7d25155460bd0504cea4fc60fcaf1c575` |
| 11 | `lemma` | [epow_top](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/epow-top--4d649f5b0c2d87e0c3d0638a.md) | 87 | `result-track:4d649f5b0c2d87e0c3d0638ae3edf4c6d318d300025c86cef0e9066b97a868d7` |
| 12 | `lemma` | [epow_right_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/epow-right-mono--b5b003f8bfc6196f86c08b06.md) | 91 | `result-track:b5b003f8bfc6196f86c08b069d8908a42ecb609a125563502ad0118ffa01b117` |
| 13 | `lemma` | [one_le_epow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/one-le-epow--4cc3aa872d6f7ce391808aa9.md) | 102 | `result-track:4cc3aa872d6f7ce391808aa954d6931be56917ebeee42526c3e241e4fc9c5f74` |
| 14 | `lemma` | [epow_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/epow-pos--7a5fa4f45bbeaec4b2f01af6.md) | 105 | `result-track:7a5fa4f45bbeaec4b2f01af673a27a191aa5d0c0c6b084080ffe36299f517c5c` |
| 15 | `lemma` | [epow_left_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/epow-left-mono--6a98ab9b74949282497b858d.md) | 108 | `result-track:6a98ab9b74949282497b858d233a69611d53108d5185d86f6b17944959271456` |
| 16 | `lemma` | [epow_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/epow-eq-zero-iff--13bc7fd61c4c02df1c5bb7bc.md) | 118 | `result-track:13bc7fd61c4c02df1c5bb7bc6efd4ae66fddd6f84b79f8f689ece55d464b5b2f` |
| 17 | `lemma` | [epow_eq_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/epow-eq-one-iff--d58ef65d75adb056290d0783.md) | 124 | `result-track:d58ef65d75adb056290d0783f343041193366bbe4c02a307ad12eca6a97072c1` |
| 18 | `lemma` | [epow_add](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/epow-add--00df50c3aba449a6e2135df5.md) | 133 | `result-track:00df50c3aba449a6e2135df50c38aeff976fe681e889dfec67fbdcb7be872c10` |
| 19 | `lemma` | [mul_epow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/mul-epow--d898916df5a2c1eb4e99335f.md) | 149 | `result-track:d898916df5a2c1eb4e99335f4c8faf43653ccc5d65f6fb65d36ff4fda30c195b` |
| 20 | `lemma` | [epow_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/declarations/epow-mul--36e9b755a511095a7fdb73b5.md) | 161 | `result-track:36e9b755a511095a7fdb73b517c9814611a7685886fcd329343557be756c04f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
