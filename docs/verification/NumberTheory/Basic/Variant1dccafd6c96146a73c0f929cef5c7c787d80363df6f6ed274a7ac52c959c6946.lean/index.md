# Verification target: GRWTSK.NumberTheory.Basic.Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b2c5a59f4c30ec3302b7391a511ca2b0aa1255e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b2c5a59f4c30ec3302b7391a511ca2b0aa1255e`.

Source path: `GRWTSK/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.GaussSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.MulChar.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiSum](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/jacobisum--e049e2a251bf0c65f1644ecc.md) | 43 | `declaration-track:e049e2a251bf0c65f1644ecc0797cef2f95196e70d84aa35d974c83ec972ed04` |
| 2 | `lemma` | [jacobiSum_comm](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/jacobisum-comm--f1fad14ec79ab347f3eafb2e.md) | 46 | `result-track:f1fad14ec79ab347f3eafb2e9d45d9452a964b1ccaf668ae78ed31e0d5f16607` |
| 3 | `lemma` | [jacobiSum_ringHomComp](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/jacobisum-ringhomcomp--aea8447e553ae7f0096fdccb.md) | 52 | `result-track:aea8447e553ae7f0096fdccbf42958e54804d53c998083c5bb5583bf77f6beda` |
| 4 | `lemma` | [jacobiSum_eq_sum_sdiff](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/jacobisum-eq-sum-sdiff--5765f5dac3ffa0cdcd7b024c.md) | 69 | `result-track:5765f5dac3ffa0cdcd7b024c033597962296b71a95f48c66e7df36f0721082f1` |
| 5 | `lemma` | [jacobiSum_eq_aux](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/jacobisum-eq-aux--e28b99c9d82f8773e10c1efb.md) | 77 | `result-track:e28b99c9d82f8773e10c1efb029659fa3238bbf3659ead1bca6d05226949fcdc` |
| 6 | `theorem` | [jacobiSum_trivial_trivial](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/jacobisum-trivial-trivial--ec0f99f96bb4e69c3c6d4bdb.md) | 99 | `result-track:ec0f99f96bb4e69c3c6d4bdbcaf5b2bc56396d9bcfe6e8f6c1eac15ff5f97092` |
| 7 | `theorem` | [jacobiSum_one_one](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/jacobisum-one-one--2e7063a497bd5ea433bf9c31.md) | 116 | `result-track:2e7063a497bd5ea433bf9c3140edfa4e1c5bda618ff9fa66245670d7a2dea8c2` |
| 8 | `theorem` | [jacobiSum_one_nontrivial](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/jacobisum-one-nontrivial--90fc7c521cd2721bbb424e22.md) | 122 | `result-track:90fc7c521cd2721bbb424e2242ea8c30010c96bc7758d4e77d35dea223930bcc` |
| 9 | `theorem` | [jacobiSum_nontrivial_inv](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/jacobisum-nontrivial-inv--5793136f5c0ac479226c7d02.md) | 135 | `result-track:5793136f5c0ac479226c7d02b3fd5b27949c43a1f7ae49bd9af71c64d2164bec` |
| 10 | `theorem` | [jacobiSum_mul_nontrivial](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/jacobisum-mul-nontrivial--14d7ff7618577703373fbab4.md) | 161 | `result-track:14d7ff7618577703373fbab4a8a98186f3185458ddf95b6d85f8106f179c355b` |
| 11 | `theorem` | [jacobiSum_eq_gaussSum_mul_gaussSum_div_gaussSum](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/jacobisum-eq-gausssum-mul-gausssum-div-gausssum--7a98df636792ca03642d9966.md) | 189 | `result-track:7a98df636792ca03642d996688029f2627387f68cfa75715b6312e187f91d6af` |
| 12 | `lemma` | [jacobiSum_mul_jacobiSum_inv](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/jacobisum-mul-jacobisum-inv--0bcd24c97c0a61ae5f3e67c2.md) | 199 | `result-track:0bcd24c97c0a61ae5f3e67c23b8c3d6e8493a53db1c9a5814d992057401cfc27` |
| 13 | `lemma` | [jacobiSum_mem_algebraAdjoin_of_pow_eq_one](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/jacobisum-mem-algebraadjoin-of-pow-eq-one--e00eb040cfc78d60819c4371.md) | 239 | `result-track:e00eb040cfc78d60819c437174da3f66beba5e24bd845612a78ce6af718bc15e` |
| 14 | `lemma` | [MulChar.exists_apply_sub_one_eq_mul_sub_one](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/mulchar-exists-apply-sub-one-eq-mul-sub-one--de44c69b4e6ded5a15dee826.md) | 248 | `result-track:de44c69b4e6ded5a15dee826ad3cf2c2b411973fa61bac4c793ef7870a2d5133` |
| 15 | `lemma` | [MulChar.exists_apply_sub_one_mul_apply_sub_one](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/mulchar-exists-apply-sub-one-mul-apply-sub-one--fa43b4150f2c3f5cac0d50a3.md) | 256 | `result-track:fa43b4150f2c3f5cac0d50a32f731eb3652b1865b36bea5bb8a439a9ad90c1dc` |
| 16 | `lemma` | [exists_jacobiSum_eq_neg_one_add](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/exists-jacobisum-eq-neg-one-add--936ed335800bba93d44f8178.md) | 273 | `result-track:936ed335800bba93d44f81786a8513aa7521e21e2067b745125732d07bfc61c2` |
| 17 | `lemma` | [gaussSum_pow_eq_prod_jacobiSum_aux](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/gausssum-pow-eq-prod-jacobisum-aux--cba676055e97641b58a07b91.md) | 308 | `result-track:cba676055e97641b58a07b911a97c55e68661643a8cedc90ba68ac650ba355bf` |
| 18 | `theorem` | [gaussSum_pow_eq_prod_jacobiSum](../../../../mathematics/NumberTheory/Basic/Variant1dccafd6c96146a73c0f929cef5c7c787d80363df6f6ed274a7ac52c959c6946.lean/declarations/gausssum-pow-eq-prod-jacobisum--f9fb196adce80f92fbe99e60.md) | 326 | `result-track:f9fb196adce80f92fbe99e6072c24417de5810d4f516b8ef8dd5314848a5487d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
