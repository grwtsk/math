# Verification target: GRWTSK.Analysis.MeasureTheory.Count.Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab759f665b50b7f21553fce25fd6f8c19eaafd78",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab759f665b50b7f21553fce25fd6f8c19eaafd78`.

Source path: `GRWTSK/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.ENNReal` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [count](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count--cc46169e98d95f68e3a52497.md) | 40 | `declaration-track:cc46169e98d95f68e3a5249714e50c06388cec63c53a99b321b938c1b19d2293` |
| 2 | `lemma` | [count_ne_zero''](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-ne-zero--efeaba466a34e3c3d131827a.md) | 43 | `result-track:efeaba466a34e3c3d131827af78627b7f0c9aa7134b081a37090a98eca1f5d7a` |
| 3 | `theorem` | [le_count_apply](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/le-count-apply--74c023dd9dfa8bfe074d91ef.md) | 45 | `result-track:74c023dd9dfa8bfe074d91efc4fea82fd7748faf6b80535281f9186b672864ce` |
| 4 | `theorem` | [count_apply](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-apply--3c55721d796d6717b0faf914.md) | 51 | `result-track:3c55721d796d6717b0faf91441091eedc9130d67877c504c432a5be3158c30a8` |
| 5 | `theorem` | [count_apply_finset'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-apply-finset--79653845962c10af2505ae7a.md) | 55 | `result-track:79653845962c10af2505ae7ae0a59222e3f4df023005853fcf16f9759cb5d390` |
| 6 | `theorem` | [count_apply_finset](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-apply-finset--c21dfdee275cb14679ff5bbd.md) | 59 | `result-track:c21dfdee275cb14679ff5bbd78e204740ce7dc8de6a697aaafed02824a80fe69` |
| 7 | `theorem` | [count_apply_finite'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-apply-finite--4dec4debce54643755ebe9e3.md) | 63 | `result-track:4dec4debce54643755ebe9e3d8c0476cb8a01f68ca78a63461798b59b071bc68` |
| 8 | `theorem` | [count_apply_finite](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-apply-finite--171216ea2e9fafee347a532e.md) | 68 | `result-track:171216ea2e9fafee347a532e8cf4d1106331c6cdf0b081653b03dab130ec3ef4` |
| 9 | `theorem` | [count_apply_infinite](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-apply-infinite--dd4542131f0d46700478b681.md) | 72 | `result-track:dd4542131f0d46700478b681e732df023a09903bdd5a7c3e35fd8b14f7ca7058` |
| 10 | `theorem` | [count_apply_eq_top'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-apply-eq-top--06544ec8186ec5caa5c057a7.md) | 82 | `result-track:06544ec8186ec5caa5c057a72d17945ea6ffd339329003173661b36f388d0800` |
| 11 | `theorem` | [count_apply_eq_top](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-apply-eq-top--e31d46db212d2da1a1f4a064.md) | 89 | `result-track:e31d46db212d2da1a1f4a0642215ed681a426a61c7d14b7fe0bcdf11665797fc` |
| 12 | `theorem` | [count_apply_lt_top'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-apply-lt-top--2934e408e9e7d1bea48d66b1.md) | 96 | `result-track:2934e408e9e7d1bea48d66b1e189a33c9753ffdeca47f9135f9f6ee3d871ab7c` |
| 13 | `theorem` | [count_apply_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-apply-lt-top--7541eceb64a1a8f2d92f6c02.md) | 103 | `result-track:7541eceb64a1a8f2d92f6c0242b8222a298da34801ae11911f59a40ab6b23261` |
| 14 | `theorem` | [count_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-eq-zero-iff--9a1e4977ed387e5e3fd2a260.md) | 110 | `result-track:9a1e4977ed387e5e3fd2a2601bf99886182084eba4358652af04afa47b0cddb5` |
| 15 | `lemma` | [count_ne_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-ne-zero-iff--5df120f19c301a1ef560c182.md) | 115 | `result-track:5df120f19c301a1ef560c1826bd603331b87f6e898fee6400bf20466a8849766` |
| 16 | `lemma` | [ae_count_iff](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/ae-count-iff--1f7295ab5a571798b8948078.md) | 121 | `result-track:1f7295ab5a571798b89480784e1dc52ad107fc608add24a168d1ba1b571676c3` |
| 17 | `theorem` | [count_singleton'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-singleton--5265a2ab14e5d2c42e33e020.md) | 128 | `result-track:5265a2ab14e5d2c42e33e020ba7060eae84996b7cf7f851a4438bf1cae3e922d` |
| 18 | `theorem` | [count_singleton](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-singleton--cc32397fecd155f5d96dc713.md) | 132 | `result-track:cc32397fecd155f5d96dc7135f96eed505b914ffc3162c70d0cccaf82f7cd20f` |
| 19 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Count.Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.MeasureTheory.count_real_singleton'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/root-grwtsk-analysis-measuretheory-count-variant0c6f199937be999f20c22e93--917f1229388e3f4e759d981f.md) | 136 | `result-track:917f1229388e3f4e759d981f236cd2188ec168f448551d71dd61b89367612a68` |
| 20 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Count.Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.MeasureTheory.count_real_singleton](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/root-grwtsk-analysis-measuretheory-count-variant0c6f199937be999f20c22e93--10aba59aba0775115b40ff57.md) | 141 | `result-track:10aba59aba0775115b40ff57f4db2180aa0e2decc34a9053df564580e35bb432` |
| 21 | `theorem` | [count_injective_image'](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-injective-image--d7d0079e80e6f1bd8853c750.md) | 145 | `result-track:d7d0079e80e6f1bd8853c7501b4508813022f0fb961afb716315a8015e98720a` |
| 22 | `theorem` | [count_injective_image](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-injective-image--e254a9d184849036ad9240c5.md) | 157 | `result-track:e254a9d184849036ad9240c5fba04880e667e1dc9761afc5d33ff5510eb9f7e2` |
| 23 | `instance` | [count.instSigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-instsigmafinite--66f3c95c33318c7f30fb354d.md) | 165 | `declaration-track:66f3c95c33318c7f30fb354d9ea3fa2c7990e2a08c13e5d5d07665ec238b843e` |
| 24 | `instance` | [count.isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-isfinitemeasure--23229ee96036e4eb431d26c4.md) | 168 | `declaration-track:23229ee96036e4eb431d26c4758260c8d92f53f1d1e8d27f75d8b011afdda7eb` |
| 25 | `lemma` | [count_univ](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-univ--88601a33f501e9d0933c49b8.md) | 173 | `result-track:88601a33f501e9d0933c49b85330d72fe42e3ce80225a039b39051f58c750994` |
| 26 | `lemma` | [count_real_univ](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/count-real-univ--7b670a7a96eaa570589c8852.md) | 175 | `result-track:7b670a7a96eaa570589c885264645021d82c30ac7163b74202e936fa2ca43369` |
| 27 | `instance` | [neZero_count](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/nezero-count--1785e3bd6fd5aa62a5b8ded4.md) | 177 | `declaration-track:1785e3bd6fd5aa62a5b8ded4971b77095fe663cfb3e483ba0de63f79e0806d07` |
| 28 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.Count.Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.Subsingleton.count_eq_dirac](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/root-grwtsk-analysis-measuretheory-count-variant0c6f199937be999f20c22e93--21962160eab98fdada10a0d4.md) | 180 | `result-track:21962160eab98fdada10a0d4556dceaa72477d5e2cf9c24dab08bec2c8a8fa1d` |
| 29 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.Count.Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.Unique.count_eq_dirac](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/root-grwtsk-analysis-measuretheory-count-variant0c6f199937be999f20c22e93--44f2b2a81398c777e36a3db2.md) | 187 | `result-track:44f2b2a81398c777e36a3db203cf06ddf81282f972e65ff2390ca060ff1c97cf` |
| 30 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.Count.Variant0c6f199937be999f20c22e939e1aaeb3321f508783929f5ac013c8e22b88c5f6.Function.Injective.map_count_le](../../../../../mathematics/Analysis/MeasureTheory/Count/Variant4a5daed20b58f47e12115a03aa796d2d1331179e3cbf1c52fc5ac7f11b07a48b.lean/declarations/root-grwtsk-analysis-measuretheory-count-variant0c6f199937be999f20c22e93--8524e98484a468bf0009169d.md) | 190 | `result-track:8524e98484a468bf0009169d3e61ac5fc41d9a45a54aea4cee6e06a408101d8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
