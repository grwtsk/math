# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Support.Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8bfc85cdbc827177eef3ddf3ed5e7c014770b86",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8bfc85cdbc827177eef3ddf3ed5e7c014770b86`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Embedding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Supported` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [support_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-mul--c622e7ff953e4eb90bc5406d.md) | 25 | `result-track:c622e7ff953e4eb90bc5406d56fc65aa4a6f730d6ac6b2a7658906a20184cc2a` |
| 2 | `theorem` | [support_single_mul_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-single-mul-subset--ec24e8a77a7dbebb62af18bd.md) | 32 | `result-track:ec24e8a77a7dbebb62af18bd24f861c7a3a50981e3a9359d6067bc727be3df8c` |
| 3 | `theorem` | [support_mul_single_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-mul-single-subset--fcf51593efd5b2508571a60a.md) | 37 | `result-track:fcf51593efd5b2508571a60a1841ae5b07a38ae1741509d388c923edcd01789f` |
| 4 | `theorem` | [support_single_mul_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-single-mul-eq-image--b5db1790d10cb028fdafa671.md) | 42 | `result-track:b5db1790d10cb028fdafa67131ebf7872d3d31f4f4caa825fec27caa7e8ecc61` |
| 5 | `theorem` | [support_mul_single_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-mul-single-eq-image--600ab9d4e01f631a1bdd6cd2.md) | 51 | `result-track:600ab9d4e01f631a1bdd6cd2bc77454bc1cfc0e47db4f59d13f977c49f288c82` |
| 6 | `theorem` | [support_mul_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-mul-single--4db431c25c2bd1f8b812bc2d.md) | 60 | `result-track:4db431c25c2bd1f8b812bc2df4863d209ac2d83225bd603e5d45a98a9ba812aa` |
| 7 | `theorem` | [support_single_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-single-mul--fe0cd9b3f420c91ba22d67b9.md) | 68 | `result-track:fe0cd9b3f420c91ba22d67b9f1ad664686ed01adb9670216432d43523a28cb3e` |
| 8 | `lemma` | [support_one_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-one-subset--273fae71a10844061e89696c.md) | 76 | `result-track:273fae71a10844061e89696c41535be4b5488402d33514a68465bc07bc3902cd` |
| 9 | `lemma` | [support_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-one--9fc77b270831bbfae891b891.md) | 80 | `result-track:9fc77b270831bbfae891b891f82178c9648d3310054ef80b6745050ff7199f00` |
| 10 | `theorem` | [mem_span_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/mem-span-support--5d730658b5a027c0a95e7bba.md) | 88 | `result-track:5d730658b5a027c0a95e7bbafcc3b97a612303df3f001d65e48b9c3d70cd5495` |
| 11 | `theorem` | [support_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-mul--8101527aeb33c398555437f4.md) | 102 | `result-track:8101527aeb33c398555437f44112c84f15e917709e8967c8a3c35db059433ae2` |
| 12 | `theorem` | [support_mul_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-mul-single--458ea6a52e525e95725567b6.md) | 106 | `result-track:458ea6a52e525e95725567b66d0a519be0cc7791d87c496ab87b6948c8af1a5a` |
| 13 | `theorem` | [support_single_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-single-mul--0b15198e1d072f850ecbc205.md) | 111 | `result-track:0b15198e1d072f850ecbc2057fc12bd7cdb27e1513509adc3a50befbbe63c2a1` |
| 14 | `lemma` | [support_one_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-one-subset--ac7e8e2b60a883ea610bcb1d.md) | 116 | `result-track:ac7e8e2b60a883ea610bcb1d09217a5a09df2244ffcfc248af8a6e5c54eaa6fa` |
| 15 | `lemma` | [support_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/support-one--fb730cb8474559ed1a9b362a.md) | 119 | `result-track:fb730cb8474559ed1a9b362ae22dc06e2cef157d6d00cccefbb96d18a9f50375` |
| 16 | `theorem` | [mem_span_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/mem-span-support--fdf509902404359b0f9db022.md) | 125 | `result-track:fdf509902404359b0f9db0224773a2cc6453c4a13b2ef8d366e47bc6f018a0d7` |
| 17 | `theorem` | [mem_span_support'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Support/Variantef12c422103ca4b68b183ebce77ba725ff2106e89523cebc30b245ea75c2fe23.lean/declarations/mem-span-support--95db01ad4a955c170e8d1526.md) | 131 | `result-track:95db01ad4a955c170e8d152608f12b7a2b79ba9821ccdcde7c0656f15f1feb19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
