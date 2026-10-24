# Verification target: GRWTSK.Algebra.GroupTheory.Support.Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d19a8537f808fd0970b1ff51f00747fd0a174686",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d19a8537f808fd0970b1ff51f00747fd0a174686`.

Source path: `GRWTSK/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [support_single_mul_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/declarations/support-single-mul-subset--6c3b90cd2a75406467be95cc.md) | 31 | `result-track:6c3b90cd2a75406467be95ccea4d4264b49a208cb5565104a188540eeeb8df52` |
| 2 | `theorem` | [support_mul_single_subset](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/declarations/support-mul-single-subset--f85bb0603e471ed3522d126f.md) | 47 | `result-track:f85bb0603e471ed3522d126f7aeaae49ec337e8463ad4a9f6d1ed1ff051e6e35` |
| 3 | `theorem` | [support_single_mul_eq_image](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/declarations/support-single-mul-eq-image--6da0d7d760dba90995e9bff0.md) | 63 | `result-track:6da0d7d760dba90995e9bff099bbaae34ed9190271a2cbaa4782f5bc35b035f1` |
| 4 | `theorem` | [support_mul_single_eq_image](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/declarations/support-mul-single-eq-image--6e7a9f99a1ddf1af4a949050.md) | 73 | `result-track:6e7a9f99a1ddf1af4a949050edecadddcbad5cbf3e94e21a7bd549a4be1689b7` |
| 5 | `theorem` | [support_mul](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/declarations/support-mul--b72da50de54f73ac6e2c17ad.md) | 83 | `result-track:b72da50de54f73ac6e2c17ad022ea839dd597fa4af89d188942941f996baa326` |
| 6 | `theorem` | [support_mul_single](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/declarations/support-mul-single--c06b762c752657e55bd74976.md) | 90 | `result-track:c06b762c752657e55bd74976e9066da5fdbc7079b46ca60e62dec34f696cdf8a` |
| 7 | `theorem` | [support_single_mul](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/declarations/support-single-mul--75893af610f866a2a565c608.md) | 99 | `result-track:75893af610f866a2a565c60811f7e923d066dd1448d1adc01b258735d139cdfd` |
| 8 | `theorem` | [mem_span_support](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/declarations/mem-span-support--141360e16ba270bc304e5e64.md) | 113 | `result-track:141360e16ba270bc304e5e64118aae66edc93ac9bc0cc1c208b8087c64b86412` |
| 9 | `theorem` | [support_mul](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/declarations/support-mul--97faf6f9955cf9fea25ec0b1.md) | 128 | `result-track:97faf6f9955cf9fea25ec0b14837a72c88f41583982e4a6f987b30b59d24b396` |
| 10 | `theorem` | [support_mul_single](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/declarations/support-mul-single--aa589627442e0d3747b68dab.md) | 133 | `result-track:aa589627442e0d3747b68dabda72aedaf243cb873e2abc08a7b762a5de345237` |
| 11 | `theorem` | [support_single_mul](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/declarations/support-single-mul--b86d7eff823dc0104eee4b81.md) | 139 | `result-track:b86d7eff823dc0104eee4b8126e196c5a2068661d5572dfe1c09dbad349a91c4` |
| 12 | `theorem` | [mem_span_support](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/declarations/mem-span-support--f505a0237060b9e98fa91f37.md) | 148 | `result-track:f505a0237060b9e98fa91f37ce059906e4f8807c6a62e428e0eceb725fb58180` |
| 13 | `theorem` | [mem_span_support'](../../../../../mathematics/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/declarations/mem-span-support--6b69d3ab990a81c607c739c1.md) | 155 | `result-track:6b69d3ab990a81c607c739c11f9c731a6347fc2c075e9c41b1d6435e577c836d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
