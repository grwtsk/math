# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Fin.Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b901066b27571680fecf497573be5e55669d630",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b901066b27571680fecf497573be5e55669d630`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/tail--0817a98d374e82d0db1451d7.md) | 33 | `declaration-track:0817a98d374e82d0db1451d7fac8f03345ce657374cf67cc24c1eb82fd507b89` |
| 2 | `def` | [cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons--deea57f87d61580f87f23880.md) | 37 | `declaration-track:deea57f87d61580f87f23880473a6f49824eff5e9bbd90e2a1613011a4dfff67` |
| 3 | `theorem` | [tail_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/tail-apply--99e13a7e1ed2f64f299ac54d.md) | 40 | `result-track:99e13a7e1ed2f64f299ac54d767eff114cea77cca1459e17b5f02305c0207650` |
| 4 | `theorem` | [cons_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-zero--df8d5523b293ebd21e133ae1.md) | 44 | `result-track:df8d5523b293ebd21e133ae1cb8a0106a08c5ff6be1f24f6342676e120d96fc1` |
| 5 | `theorem` | [cons_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-succ--a6be1c188fa620d4d58967f8.md) | 48 | `result-track:a6be1c188fa620d4d58967f8375472c3d01cd307a7ad1793a2566c8e4e8541f4` |
| 6 | `theorem` | [tail_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/tail-cons--44708950f590d06316863616.md) | 52 | `result-track:44708950f590d06316863616aaad46b665050fb5d132ea18ac6a94d029d76679` |
| 7 | `theorem` | [tail_update_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/tail-update-zero--a08a0608a410b405bdee4280.md) | 56 | `result-track:a08a0608a410b405bdee4280aa4ed506c93095c802e7dcc14975ea9ead7f4607` |
| 8 | `theorem` | [tail_update_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/tail-update-succ--eb1eea94de9946ef5e47e51c.md) | 59 | `result-track:eb1eea94de9946ef5e47e51cae64e755d1b314a30f63d6ab0247329a0f9acf5d` |
| 9 | `theorem` | [cons_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-tail--053d79f33e9ba691accad4b4.md) | 62 | `result-track:053d79f33e9ba691accad4b4ca5a0ce3ddb5b791f73657720193e36cf54784f4` |
| 10 | `lemma` | [cons_zero_eq_single_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-zero-eq-single-zero--8b141cbcf4f76739cd658311.md) | 68 | `result-track:8b141cbcf4f76739cd6583115976fa56e0acc11c78486bb9ee53042d62900bea` |
| 11 | `lemma` | [cons_zero_single_eq_single_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-zero-single-eq-single-succ--5cef5690985afa0e138bd017.md) | 72 | `result-track:5cef5690985afa0e138bd01728ffd37c5deb2e9a9a2eddd7bd15e4992ce357a9` |
| 12 | `theorem` | [cons_zero_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-zero-zero--1d4b6c0fa379449a57cfc37f.md) | 77 | `result-track:1d4b6c0fa379449a57cfc37f252198b741dc2082d044a6883a967efbfd6fcc70` |
| 13 | `theorem` | [cons_ne_zero_of_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-ne-zero-of-left--5431d9e28c1b10b1ba542000.md) | 81 | `result-track:5431d9e28c1b10b1ba5420005cfa830f21f9c3491a41dd2cdf5e2a2403e4de3e` |
| 14 | `theorem` | [cons_ne_zero_of_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-ne-zero-of-right--7024e10db378c91406c155e2.md) | 85 | `result-track:7024e10db378c91406c155e284ff976a4bf0c6a8df460c34bcc912f485253490` |
| 15 | `theorem` | [cons_ne_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-ne-zero-iff--7ec009ba6dafcacded80b523.md) | 90 | `result-track:7ec009ba6dafcacded80b523b53e1f2c18f1643aad307173cd63cc475f377cff` |
| 16 | `lemma` | [cons_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-support--083b8cc0a88ed027f24bde0f.md) | 95 | `result-track:083b8cc0a88ed027f24bde0f3d4ffdb0bad61fe3225123f8a0c1af9fa02c5d19` |
| 17 | `lemma` | [cons_right_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-right-injective--ddc5b21e075d79221634cf62.md) | 103 | `result-track:ddc5b21e075d79221634cf62259df06e9c9f6727aba44481a6382018f72c243d` |
| 18 | `theorem` | [cons_injective2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-injective2--4e7712bc5590337d7a6a03f8.md) | 107 | `result-track:4e7712bc5590337d7a6a03f8a0ef39bfe5657dff41b372c879b9c45eee7c6b52` |
| 19 | `lemma` | [cons_eq_single_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-eq-single-zero-iff--79d859934d7887c4f0f0e373.md) | 113 | `result-track:79d859934d7887c4f0f0e373d38b3c743f30fe03e4f59350421dfc72d28db6c4` |
| 20 | `lemma` | [cons_eq_single_succ_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fin/Variant38bff2487c6d0060672328532f2282b15cb0eea905615b4da2fd9e0579b0cf5d.lean/declarations/cons-eq-single-succ-iff--e5e110ee327eca2eabedb119.md) | 116 | `result-track:e5e110ee327eca2eabedb119b872a1cdb32681c3a87d7bf2ce3f3947c0fc3987` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
