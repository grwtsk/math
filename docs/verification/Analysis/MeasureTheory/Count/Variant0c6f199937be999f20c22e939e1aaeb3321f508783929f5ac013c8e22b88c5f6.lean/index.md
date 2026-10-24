# Verification target: GRWTSK.Analysis.MeasureTheory.Count.Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc54be9d2d5c97ec310ce2108864b2dab38bf19a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc54be9d2d5c97ec310ce2108864b2dab38bf19a`.

Source path: `GRWTSK/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.ENNReal` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [count](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count--fb709cb415fb491b8897d8af.md) | 32 | `declaration-track:fb709cb415fb491b8897d8afd9872e355ba9d79946195c9b380e457aa9b54602` |
| 2 | `lemma` | [count_ne_zero''](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-ne-zero--e9e0e9eab5e88446e15dba07.md) | 35 | `result-track:e9e0e9eab5e88446e15dba070cd8a19d5f373fa5606efc4e2cb9c0fafc9f5305` |
| 3 | `theorem` | [le_count_apply](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/le-count-apply--5e40c3bb50a1f01006dfd51f.md) | 37 | `result-track:5e40c3bb50a1f01006dfd51f28f489eb9058ba4b88975ca7e0a946d7426f6826` |
| 4 | `theorem` | [count_apply](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-apply--edcdc286eb71b49ebd173f46.md) | 43 | `result-track:edcdc286eb71b49ebd173f46d9e61b499093010eb2b3ef7380f6c4b24b12b9c2` |
| 5 | `theorem` | [count_apply_finset'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-apply-finset--77bf3c5fa674af61f4653f82.md) | 47 | `result-track:77bf3c5fa674af61f4653f822667af342ad649e31baf18e6ba56efec74b5c4ea` |
| 6 | `theorem` | [count_apply_finset](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-apply-finset--97999dd9294241bf0f951726.md) | 51 | `result-track:97999dd9294241bf0f95172660145cae572a00ca0155ebdc1c66cf7e33b93464` |
| 7 | `theorem` | [count_apply_finite'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-apply-finite--df31fc325fdd9d9b4beffffb.md) | 55 | `result-track:df31fc325fdd9d9b4beffffb4b0f6e27611c09ff654a21587e17cf64c8ee3cdf` |
| 8 | `theorem` | [count_apply_finite](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-apply-finite--190781d03b48c5ab88e91e1e.md) | 60 | `result-track:190781d03b48c5ab88e91e1e955101e8e3f7b0d56177c728691ea726fe2bac0c` |
| 9 | `theorem` | [count_apply_infinite](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-apply-infinite--7716274d090e725e136e0b11.md) | 64 | `result-track:7716274d090e725e136e0b116a7c344a94120e8607404c8ee845e2030abf4772` |
| 10 | `theorem` | [count_apply_eq_top'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-apply-eq-top--26686c29bbc15d5b11bbca7a.md) | 74 | `result-track:26686c29bbc15d5b11bbca7adda594bbe8e85f236e549aee460f3a89ac2d8604` |
| 11 | `theorem` | [count_apply_eq_top](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-apply-eq-top--fd6d00fc610d1779931404a8.md) | 81 | `result-track:fd6d00fc610d1779931404a8de45e0aecfea398322fbce4187536db084b8a2f6` |
| 12 | `theorem` | [count_apply_lt_top'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-apply-lt-top--e91b06fd9b5f90b39de31e3b.md) | 88 | `result-track:e91b06fd9b5f90b39de31e3b6ce846d65d2647b98e406a0161ea58b95d9798f5` |
| 13 | `theorem` | [count_apply_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-apply-lt-top--ced91c1e55ef9b87302bff8e.md) | 95 | `result-track:ced91c1e55ef9b87302bff8ec5a1642b1eea4f63aa193c7d8d2a909432e02696` |
| 14 | `theorem` | [count_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-eq-zero-iff--b96fcbe6c0495cbed24a9612.md) | 102 | `result-track:b96fcbe6c0495cbed24a9612da5bbaf6be8d888cf9eff51c7998a44bc30c4df4` |
| 15 | `lemma` | [count_ne_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-ne-zero-iff--1fceecf70ed6b214309305f0.md) | 107 | `result-track:1fceecf70ed6b214309305f03301440e17a15bbaffeede3a3e5abaa8d19ed712` |
| 16 | `lemma` | [ae_count_iff](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/ae-count-iff--4e66089fd8b9668065716a76.md) | 113 | `result-track:4e66089fd8b9668065716a7683a248046fb820c195ef74735d959b893ca6ac5a` |
| 17 | `theorem` | [count_singleton'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-singleton--0fc6458133f2ef0c147c95aa.md) | 120 | `result-track:0fc6458133f2ef0c147c95aab5a27648bf86c585fd9c62c27bc26bb9d30de990` |
| 18 | `theorem` | [count_singleton](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-singleton--b4743b56d9675cd3f068a26e.md) | 124 | `result-track:b4743b56d9675cd3f068a26e42adea1896a61a8264ddd2bc92aa8369d1f47007` |
| 19 | `theorem` | [_root_.MeasureTheory.count_real_singleton'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/root-measuretheory-count-real-singleton--4292fac4710da8e15feca48b.md) | 128 | `result-track:4292fac4710da8e15feca48b7cdda260466d7cd38cf3ff42b616e049254b3516` |
| 20 | `theorem` | [_root_.MeasureTheory.count_real_singleton](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/root-measuretheory-count-real-singleton--ce8b565d0632f2c8cd32aa68.md) | 133 | `result-track:ce8b565d0632f2c8cd32aa68d0f6459e443248b432431ab45ceae01dd17c7fab` |
| 21 | `theorem` | [count_injective_image'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-injective-image--04f89d88682b9a540d699757.md) | 137 | `result-track:04f89d88682b9a540d6997576fe2f571fd009dd02c0b8b8a06c838874190c9cf` |
| 22 | `theorem` | [count_injective_image](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-injective-image--f81ae632095dad87aaed1e94.md) | 149 | `result-track:f81ae632095dad87aaed1e94584791639ca17124194ab1f7fb3cd9a44c85444a` |
| 23 | `instance` | [count.instSigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-instsigmafinite--139711fa3644926455f624c8.md) | 157 | `declaration-track:139711fa3644926455f624c8784f3dcac4afa102c9ba6282f2655d074b9018dc` |
| 24 | `instance` | [count.isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-isfinitemeasure--8ea55750eb2bb904522c1ae2.md) | 160 | `declaration-track:8ea55750eb2bb904522c1ae27c1b1840802921d41e63383858bc8ba4c4ed14f6` |
| 25 | `lemma` | [count_univ](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-univ--5a6554eb959c6e097f35f0c2.md) | 165 | `result-track:5a6554eb959c6e097f35f0c200d081b89f6f3a15d1bcc25f4bcb1491609f26ad` |
| 26 | `lemma` | [count_real_univ](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/count-real-univ--f2ed7da66f48b6d0a323ea36.md) | 167 | `result-track:f2ed7da66f48b6d0a323ea361ee00f787278ce1fcbb0942e12e6076fc709da88` |
| 27 | `instance` | [neZero_count](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/nezero-count--c9e8ed9a78e2b03879e63645.md) | 169 | `declaration-track:c9e8ed9a78e2b03879e63645b28572eabed174eacf407ad4bcdfaa795ec63507` |
| 28 | `lemma` | [_root_.Subsingleton.count_eq_dirac](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/root-subsingleton-count-eq-dirac--bf407c10d3ad20fbf35b0fe8.md) | 172 | `result-track:bf407c10d3ad20fbf35b0fe8ab9428eced13115fda43897f3e770602ee4e0d32` |
| 29 | `lemma` | [_root_.Unique.count_eq_dirac](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/root-unique-count-eq-dirac--39fc78d8bdf1335855a02c58.md) | 179 | `result-track:39fc78d8bdf1335855a02c580927a3aad1825e0d2b50e05036d61be6a373e360` |
| 30 | `lemma` | [_root_.Function.Injective.map_count_le](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.lean/declarations/root-function-injective-map-count-le--babe8bbb203a508791c58564.md) | 182 | `result-track:babe8bbb203a508791c58564c3403e06ac5a797f207c4dcc7c00749beee6c841` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
