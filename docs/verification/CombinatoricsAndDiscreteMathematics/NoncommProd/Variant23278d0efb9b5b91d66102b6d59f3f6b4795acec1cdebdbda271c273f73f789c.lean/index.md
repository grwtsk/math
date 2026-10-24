# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NoncommProd.Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f04d5a35fc941e8c2530c248032a9199e3d1789a",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f04d5a35fc941e8c2530c248032a9199e3d1789a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Commute` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [noncommFoldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommfoldr--367a6bee9cda8cc5ada44a23.md) | 50 | `declaration-track:367a6bee9cda8cc5ada44a23430caa7a0bc1d5d78e4ba833d1acf10ce0f3fef8` |
| 2 | `theorem` | [noncommFoldr_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommfoldr-coe--13b231ba461e4bf7374d7964.md) | 60 | `result-track:13b231ba461e4bf7374d79640f7665ae39d1c33733b01bb4f8e3cbc97c2ee711` |
| 3 | `theorem` | [noncommFoldr_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommfoldr-empty--5dfb4e424af88e3e343c8439.md) | 68 | `result-track:5dfb4e424af88e3e343c8439e660a22e49fa077aec7c9909d152ae73936f0691` |
| 4 | `theorem` | [noncommFoldr_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommfoldr-cons--4de76d2fcdea17cf2c32d973.md) | 72 | `result-track:4de76d2fcdea17cf2c32d97334b45a62c49953264f3f177d32d4182f213ad915` |
| 5 | `theorem` | [noncommFoldr_eq_foldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommfoldr-eq-foldr--349ba527001ba8f704b8259b.md) | 78 | `result-track:349ba527001ba8f704b8259b96b4e43f42a8a0d3b19b45d21b157852b4352768` |
| 6 | `def` | [noncommFold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommfold--6c4848d63afc4742fe0e4e9c.md) | 90 | `declaration-track:6c4848d63afc4742fe0e4e9c5a6e395e09b8f078a69b0761a91179b1ad2cf64d` |
| 7 | `theorem` | [noncommFold_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommfold-coe--5e5e153baa6fabb4032eab8b.md) | 96 | `result-track:5e5e153baa6fabb4032eab8bb8c789141b87cbf7c933f85ad54b02ef7ce40582` |
| 8 | `theorem` | [noncommFold_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommfold-empty--a2a0bdde25dafef608133d5f.md) | 101 | `result-track:a2a0bdde25dafef608133d5fa0100b27e3642649456e7417dd100bbb04ae9618` |
| 9 | `theorem` | [noncommFold_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommfold-cons--f1ae93d2267a45df2978e08d.md) | 105 | `result-track:f1ae93d2267a45df2978e08dcdeb23b07225018fd0839d40e6764ddf228cf547` |
| 10 | `theorem` | [noncommFold_eq_fold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommfold-eq-fold--47a5f3056a9d0b625df93e94.md) | 111 | `result-track:47a5f3056a9d0b625df93e94f150f878f0b904aa87a5a3380dc59e5a9a980f24` |
| 11 | `def` | [noncommProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod--b9f96f31da8617df9b1ac7c4.md) | 126 | `declaration-track:b9f96f31da8617df9b1ac7c4542ce2c4fb7b32140aad47adc5f0aa1b86c2c07b` |
| 12 | `theorem` | [noncommProd_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-coe--76c12c0c4b61ff78c8feb91f.md) | 132 | `result-track:76c12c0c4b61ff78c8feb91fd912c388237c37ca4a1ff8cc3243a9b3fe3439ff` |
| 13 | `theorem` | [noncommProd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-empty--6564355a89cf3955721738e4.md) | 144 | `result-track:6564355a89cf3955721738e416de1d0e0a99c326b4b5b57c24ef5f1da29cad43` |
| 14 | `theorem` | [noncommProd_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-cons--450c72caa5be1ef88ebb74f0.md) | 150 | `result-track:450c72caa5be1ef88ebb74f06bf857dd66e0b251d537b1b9c1d97d6f14045603` |
| 15 | `theorem` | [noncommProd_cons'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-cons--de0b0f7da8d45234ccb8beb7.md) | 158 | `result-track:de0b0f7da8d45234ccb8beb77d4b0a374e0d34bc4d822f6af9026180398498bb` |
| 16 | `theorem` | [noncommProd_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-add--ff20bae931f19b85bd1c9175.md) | 176 | `result-track:ff20bae931f19b85bd1c9175f5152c0724c885f8ccc44c466d40e0503aba34d2` |
| 17 | `theorem` | [noncommProd_map_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-map-aux--d86ae32bcbb85c87ebd113dc.md) | 187 | `result-track:d86ae32bcbb85c87ebd113dcc23068d041a1e51f08f676576f7d48339e55dc31` |
| 18 | `theorem` | [noncommProd_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-map--2bd3ee88b220df2cefa6d260.md) | 196 | `result-track:2bd3ee88b220df2cefa6d260df135fc7b4ec866f51900317e8097de78793d037` |
| 19 | `theorem` | [noncommProd_eq_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-eq-pow-card--4b25f3d83cda3a15752a78f8.md) | 204 | `result-track:4b25f3d83cda3a15752a78f85c909d37ee740f75822f9c63acbd6e89058d5a47` |
| 20 | `theorem` | [noncommProd_eq_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-eq-prod--aa269f9cdad4c1debcc9b509.md) | 213 | `result-track:aa269f9cdad4c1debcc9b5091c61343c7b000fbb76a406b47fd53e4771f022e5` |
| 21 | `theorem` | [noncommProd_commute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-commute--56b0d53e0cc5b78d9af2c13e.md) | 221 | `result-track:56b0d53e0cc5b78d9af2c13e98b9feebb52a4fb971e1e3db2c3dba767caf87f9` |
| 22 | `theorem` | [noncommProd_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-lemma--4604555090198ccc2c55a773.md) | 238 | `result-track:4604555090198ccc2c55a773eafefad6dea2aa24c562bf34e481b9fc61842a5d` |
| 23 | `def` | [noncommProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod--d7f61ad2d841d3389495efda.md) | 250 | `declaration-track:d7f61ad2d841d3389495efdaa6ea960ea46dca0d22f4db0ed2855b0867502030` |
| 24 | `theorem` | [noncommProd_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-congr--dcb0148fdbe850130802644b.md) | 257 | `result-track:dcb0148fdbe850130802644b03f9962f178906ddf4ac3b3518329222033b1c73` |
| 25 | `theorem` | [noncommProd_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-tofinset--db10aaa650ad0081fa0a0a54.md) | 270 | `result-track:db10aaa650ad0081fa0a0a54a882904d439779909e04271740773b72ee228073` |
| 26 | `theorem` | [noncommProd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-empty--d930e34ef7ed8927a3ba8091.md) | 278 | `result-track:d930e34ef7ed8927a3ba80915d0d34f1d6becde97a6b5e0eb87ad8afc29c3f6e` |
| 27 | `theorem` | [noncommProd_insert_of_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-insert-of-not-mem--37e1c194ba110d0093b0f9ee.md) | 284 | `result-track:37e1c194ba110d0093b0f9eef64e621f2d936d52470875370eeea8518da1e757` |
| 28 | `theorem` | [noncommProd_insert_of_not_mem'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-insert-of-not-mem--84a74e77e08eca47eb0e3d0d.md) | 300 | `result-track:84a74e77e08eca47eb0e3d0dce9cb36e25e1c263f1f0ccac733cd32a5185417a` |
| 29 | `theorem` | [noncommProd_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-singleton--a2fd07a62f70b2387b60b099.md) | 316 | `result-track:a2fd07a62f70b2387b60b099b7c2657b1fb6cc01d6ddee45d15810a88b7492ae` |
| 30 | `theorem` | [noncommProd_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-map--aa863701606bf72120c5d80d.md) | 326 | `result-track:aa863701606bf72120c5d80d76ac33d5765ce1d4b6fd17b5a668ec06d9b09b71` |
| 31 | `theorem` | [noncommProd_eq_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-eq-pow-card--9b335e8d7b66b38ed8f2d60e.md) | 334 | `result-track:9b335e8d7b66b38ed8f2d60e7628a0768ca0017962044a0fde749385f7744d4a` |
| 32 | `theorem` | [noncommProd_commute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-commute--8599d43f5eefb56cb0e2cc90.md) | 343 | `result-track:8599d43f5eefb56cb0e2cc90bc2ccee9bb522d9bb674092a6c9ce7019c8bcd07` |
| 33 | `theorem` | [noncommProd_eq_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-eq-prod--d096f4af92b72692f92387d9.md) | 354 | `result-track:d096f4af92b72692f92387d9924e996240e6b5446100570549fa2cce0901d717` |
| 34 | `theorem` | [noncommProd_union_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-union-of-disjoint--e2fb9b389e9a87e8199d6352.md) | 365 | `result-track:e2fb9b389e9a87e8199d635232df30a462fcbfbb0bfcc64d2e3da0512aa1d224` |
| 35 | `theorem` | [noncommProd_mul_distrib_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-mul-distrib-aux--1db2967e36756bf9776930b0.md) | 383 | `result-track:1db2967e36756bf9776930b063725141b72364a3c4c80ac0af80fac538eae321` |
| 36 | `theorem` | [noncommProd_mul_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-mul-distrib--7a319f8f4b5b64170a83fa7f.md) | 399 | `result-track:7a319f8f4b5b64170a83fa7fa3dc5e90f3bc0717ee54089107a6f0f0513e9cab` |
| 37 | `theorem` | [noncommProd_mul_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/noncommprod-mul-single--27cefc938348902dfd40cf7d.md) | 424 | `result-track:27cefc938348902dfd40cf7db860e3794b0af2efe75d557fa473da130de03eab` |
| 38 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.NoncommFoldr.Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.MonoidHom.pi_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-noncommfoldr-variant551e--53f72916c12fc18d98c83903.md) | 447 | `result-track:53f72916c12fc18d98c83903756a3df523ee135469e13be132b8c6a82c8246ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
