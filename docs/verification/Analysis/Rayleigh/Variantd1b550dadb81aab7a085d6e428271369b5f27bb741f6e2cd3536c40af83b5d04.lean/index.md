# Verification target: GRWTSK.Analysis.Rayleigh.Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28878ee9dc0cbb64cc9074fa33beebf04aac60dd",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/index.md) · [Full source](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28878ee9dc0cbb64cc9074fa33beebf04aac60dd`.

Source path: `GRWTSK/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [rayleighQuotient](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/rayleighquotient--cdde632555db90cc3a386270.md) | 56 | `declaration-track:cdde632555db90cc3a38627073482600d414691b9cb909fc04bee05a66656395` |
| 2 | `theorem` | [rayleigh_smul](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/rayleigh-smul--a4fa77342534195e559f0c3b.md) | 58 | `result-track:a4fa77342534195e559f0c3b47ca2dfd00ebf64bdd7d77d8782f16f4f7f1467a` |
| 3 | `theorem` | [rayleighQuotient_add](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/rayleighquotient-add--0cdb4a1a5bad47d937678e4f.md) | 64 | `result-track:0cdb4a1a5bad47d937678e4f284f77bcdd136ec76c9d5de54a82f91f8ef606df` |
| 4 | `theorem` | [rayleighQuotient_zero_apply](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/rayleighquotient-zero-apply--b1912b2d262a867aae0599b8.md) | 69 | `result-track:b1912b2d262a867aae0599b81d0399c3acb5ee6f38d878aab4c153c32321e460` |
| 5 | `theorem` | [rayleighQuotient_apply_zero](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/rayleighquotient-apply-zero--2603eabaf9b9756ade1a0a87.md) | 73 | `result-track:2603eabaf9b9756ade1a0a8762e2ce1e764f6824ae17f57b245db0f7372385e2` |
| 6 | `theorem` | [rayleighQuotient_neg_apply](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/rayleighquotient-neg-apply--7edd1b1460733aad5fa14e86.md) | 77 | `result-track:7edd1b1460733aad5fa14e86aa3f3af7ad048e567a7b304596f3107456eb980e` |
| 7 | `theorem` | [rayleighQuotient_apply_neg](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/rayleighquotient-apply-neg--d8c88f0e72b5e318823d3c77.md) | 81 | `result-track:d8c88f0e72b5e318823d3c77b31e87871a1c307a2634454b0c011262515241b1` |
| 8 | `theorem` | [image_rayleigh_eq_image_rayleigh_sphere](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/image-rayleigh-eq-image-rayleigh-sphere--4c060da6407eb1b009e19549.md) | 84 | `result-track:4c060da6407eb1b009e195496c781c824607ad8b84c77121e3060138c44a207c` |
| 9 | `theorem` | [iSup_rayleigh_eq_iSup_rayleigh_sphere](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/isup-rayleigh-eq-isup-rayleigh-sphere--9ebf603af4b65c732749020b.md) | 98 | `result-track:9ebf603af4b65c732749020bf5d4ddebefc4d36e8ca2e6d585cf254bc645674a` |
| 10 | `theorem` | [iInf_rayleigh_eq_iInf_rayleigh_sphere](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/iinf-rayleigh-eq-iinf-rayleigh-sphere--aea8821d89b477e1a836b015.md) | 105 | `result-track:aea8821d89b477e1a836b015797b4dfad8f37ba358f8888ed4f3f331ccb12f1a` |
| 11 | `theorem` | [rayleighQuotient_le_norm](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/rayleighquotient-le-norm--42f0ef69766f6e531d108f25.md) | 112 | `result-track:42f0ef69766f6e531d108f25e81dde0d400df737c9251fa145d09ea1da0b60b3` |
| 12 | `theorem` | [bddAbove_rayleighQuotient](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/bddabove-rayleighquotient--fc1f8778f099553187cf02b5.md) | 117 | `result-track:fc1f8778f099553187cf02b567b2dc66bc5ebda5624c2a2d2668de9d1defff3b` |
| 13 | `theorem` | [norm_eq_iSup_rayleighQuotient](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/norm-eq-isup-rayleighquotient--3c3cd7de4a16c743f8865ae6.md) | 120 | `result-track:3c3cd7de4a16c743f8865ae6b6ddadbc2dfe5b8fc3cf04dedc812972f4756a21` |
| 14 | `theorem` | [rayleighQuotient_le_of_mem_resolventSet](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/rayleighquotient-le-of-mem-resolventset--0d1cf455e1e20cfc8358c05a.md) | 138 | `result-track:0d1cf455e1e20cfc8358c05a0ebbbe95c98ad289097dad5e2de0757c180f7d37` |
| 15 | `theorem` | [rayleighQuotient_le_of_norm_mem_resolventSet](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/rayleighquotient-le-of-norm-mem-resolventset--57ec6d31d2e99db904f263ef.md) | 160 | `result-track:57ec6d31d2e99db904f263ef2bf0f26a4b0efd9f8fcd96514d8b2ab993ce608c` |
| 16 | `theorem` | [abs_rayleighQuotient_le_of_norm_mem_resolventSet](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/abs-rayleighquotient-le-of-norm-mem-resolventset--e74901c81f33924d2026729b.md) | 172 | `result-track:e74901c81f33924d2026729be59f626690e1033fc14b91f9ddd8df33f7faa6b0` |
| 17 | `theorem` | [spectralRadius_eq_nnnorm](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/spectralradius-eq-nnnorm--7bd87ff41ab39a4882bfe7a8.md) | 182 | `result-track:7bd87ff41ab39a4882bfe7a823f0b7cfd26f23f87aeb11acd2b6197027099e82` |
| 18 | `theorem` | [_root_.LinearMap.IsSymmetric.hasStrictFDerivAt_reApplyInnerSelf](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/root-linearmap-issymmetric-hasstrictfderivat-reapplyinnerself--c653d512ebdd7e51adf6a69f.md) | 202 | `result-track:c653d512ebdd7e51adf6a69f28c818475dbf3df8238a8f510184044dac746e92` |
| 19 | `theorem` | [linearly_dependent_of_isLocalExtrOn](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/linearly-dependent-of-islocalextron--e503341c768ce2383733334b.md) | 213 | `result-track:e503341c768ce2383733334be86ee3154cd08d57c3eb3f45ebd6bd5a2fb34400` |
| 20 | `theorem` | [eq_smul_self_of_isLocalExtrOn_real](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/eq-smul-self-of-islocalextron-real--facec6b04faae25d3547392a.md) | 235 | `result-track:facec6b04faae25d3547392a1532a49830296ab7a21f8cd99d375f24b902da75` |
| 21 | `theorem` | [eq_smul_self_of_isLocalExtrOn](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/eq-smul-self-of-islocalextron--a8e0a087197569d6782bb6a7.md) | 258 | `result-track:a8e0a087197569d6782bb6a7959f887cce424a814563826726a0eaf280398fdc` |
| 22 | `theorem` | [hasEigenvector_of_isLocalExtrOn](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/haseigenvector-of-islocalextron--cdc731c0b341f08fe1e94edf.md) | 267 | `result-track:cdc731c0b341f08fe1e94edf2e623cbe42e459ec6aca410f842c95100959df97` |
| 23 | `theorem` | [hasEigenvector_of_isMaxOn](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/haseigenvector-of-ismaxon--61388b18b8891d4180f89700.md) | 277 | `result-track:61388b18b8891d4180f89700cc6e80b42817f5ff1b95c10065b1a01d239a3be1` |
| 24 | `theorem` | [hasEigenvector_of_isMinOn](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/haseigenvector-of-isminon--7f98171c8284e39da76e1342.md) | 296 | `result-track:7f98171c8284e39da76e1342a8e5d95b1b03c45df0e5cd4844c35af57669671e` |
| 25 | `theorem` | [hasEigenvalue_iSup_of_finiteDimensional](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/haseigenvalue-isup-of-finitedimensional--7943a20b748eb5671ad20375.md) | 326 | `result-track:7943a20b748eb5671ad20375b48c5879dca1b37c3917ea07a02e717b61012c84` |
| 26 | `theorem` | [hasEigenvalue_iInf_of_finiteDimensional](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/haseigenvalue-iinf-of-finitedimensional--a5bd165814571fbcdb17acf1.md) | 345 | `result-track:a5bd165814571fbcdb17acf1710753c684816c6ce8a108892a23cb1e65047d5b` |
| 27 | `theorem` | [subsingleton_of_no_eigenvalue_finiteDimensional](../../../../mathematics/Analysis/Rayleigh/Variantd1b550dadb81aab7a085d6e428271369b5f27bb741f6e2cd3536c40af83b5d04.lean/declarations/subsingleton-of-no-eigenvalue-finitedimensional--a0da08debf89a10cf9627016.md) | 362 | `result-track:a0da08debf89a10cf9627016fb3722bb867153f0e5a191ded7da00aee195f3ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
