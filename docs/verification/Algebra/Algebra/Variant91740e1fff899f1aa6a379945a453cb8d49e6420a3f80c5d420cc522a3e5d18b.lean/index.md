# Verification target: GRWTSK.Algebra.Algebra.Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "630a366189f782862a8a46c889828f52f4b221cf",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `630a366189f782862a8a46c889828f52f4b221cf`.

Source path: `GRWTSK/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [transitionMap_ideal_mk](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/transitionmap-ideal-mk--ffa38d86734af40b80a1371c.md) | 45 | `result-track:ffa38d86734af40b80a1371c762394e9764f95099f6031d31abc2fc7f47cacaf` |
| 2 | `theorem` | [transitionMap_map_one](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/transitionmap-map-one--f75bb11d905341debe6efe14.md) | 51 | `result-track:f75bb11d905341debe6efe14dcbed39f3486e49f0ad176b3b63ba97c25f6883f` |
| 3 | `theorem` | [transitionMap_map_mul](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/transitionmap-map-mul--4db33c89247f2639bf1377c9.md) | 55 | `result-track:4db33c89247f2639bf1377c9d05df83fc514d8f2fb792c2cdf99d5b183f4bccb` |
| 4 | `theorem` | [transitionMap_map_pow](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/transitionmap-map-pow--573bf11be63faf19eaa01d74.md) | 60 | `result-track:573bf11be63faf19eaa01d741782d710cdfe30a9646a199d32c587489f504f0b` |
| 5 | `def` | [transitionMapₐ](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/transitionmap--bd1468a13e243a0ee62acd9c.md) | 65 | `declaration-track:bd1468a13e243a0ee62acd9cc5b3bfb5d377001ebb5ca9236da45a427020eed4` |
| 6 | `def` | [subalgebra](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/subalgebra--9942b3b4c6e13f4f22c6ab2d.md) | 70 | `declaration-track:9942b3b4c6e13f4f22c6ab2d47d03b039627aa181d5de21afdbd231f95906872` |
| 7 | `def` | [subring](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/subring--d214483ccde8cfba74125fe7.md) | 75 | `declaration-track:d214483ccde8cfba74125fe7bb3cea0e1847fff6ed65560c19fb087b6a604cf8` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--92b36ae8cc6e536fe0f1b746.md) | 78 | `declaration-track:92b36ae8cc6e536fe0f1b746e41d390a0ceb20f51df902c699483a6dd9a0114e` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--fd39b439222735514a13106d.md) | 82 | `declaration-track:fd39b439222735514a13106d985adcf2e49cdbaa617c808363cdb125585ec7f2` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--8ffce6c034dbc7f5b1a04f7c.md) | 85 | `declaration-track:8ffce6c034dbc7f5b1a04f7c0b1a3b7ce2ff1dfd682ebc5326ad5279b61d6aa6` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--9598b04d42091c1673c57195.md) | 88 | `declaration-track:9598b04d42091c1673c57195dc79e9b49b1c0e96788069834088eb90ef8d3cb6` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--e2df78ce90d0b69099039bdf.md) | 91 | `declaration-track:e2df78ce90d0b69099039bdfb33604e1759cefa6cc2d5b98c3deb561baebe764` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--9df95c41dbd44b07b649e7e5.md) | 94 | `declaration-track:9df95c41dbd44b07b649e7e5bbd6a57ccd9c63c9c00dc97c09d8aee2d22efdb0` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--768b837304c68d0259d77781.md) | 100 | `declaration-track:768b837304c68d0259d777817dc7f6428017374e1744110bc1e0845022c14b8c` |
| 15 | `theorem` | [val_one](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/val-one--ed40ad6a677efd7af0a621e8.md) | 115 | `result-track:ed40ad6a677efd7af0a621e8fb511c4cd09c1400ee4b110ff258282a39f47714` |
| 16 | `theorem` | [val_mul](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/val-mul--b846fb8a3f16e7e6374aa6fb.md) | 119 | `result-track:b846fb8a3f16e7e6374aa6fb78d8d65931f6acd263f79fef437671e31582cb69` |
| 17 | `def` | [evalₐ](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/eval--30206314e7c3049d428e32c9.md) | 126 | `declaration-track:30206314e7c3049d428e32c99471c26780742d717de189e7d7f8a5938459301a` |
| 18 | `theorem` | [evalₐ_mk](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/eval-mk--dadb96da97927e046bc8cec6.md) | 133 | `result-track:dadb96da97927e046bc8cec64e4453bc8a275c8a2098bab181bf3bf422e94cda` |
| 19 | `def` | [AdicCauchySequence.subalgebra](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/adiccauchysequence-subalgebra--23679841f2edf57aa625e7fd.md) | 138 | `declaration-track:23679841f2edf57aa625e7fd5f39e7da2ca7b23b549646975d329efab056698c` |
| 20 | `def` | [AdicCauchySequence.subring](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/adiccauchysequence-subring--ace3bcf04bbbd9fcd68f8017.md) | 146 | `declaration-track:ace3bcf04bbbd9fcd68f801746f385c63db2803025a06cd378cdcae3c5a2c075` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--59a3c170b734c3ca4ab7b4f0.md) | 149 | `declaration-track:59a3c170b734c3ca4ab7b4f0c2b594ea3c773604d4ad46e43ca0bdf04def88d7` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--7013a485618652dfc0e7e54e.md) | 152 | `declaration-track:7013a485618652dfc0e7e54ea8eb387225e3c3131a350b7daef4f5dcc1eecc16` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--21d6f6fdeed207c4e70be25f.md) | 155 | `declaration-track:21d6f6fdeed207c4e70be25f189f30e94d18c0dbc52fcad3522565224449ae64` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--b263722d8cec4c9e554eb205.md) | 158 | `declaration-track:b263722d8cec4c9e554eb2059a7f2541f7d8de91d274c594d073ca3aa863f5ad` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--cc8df02e03063366e181dca2.md) | 161 | `declaration-track:cc8df02e03063366e181dca2af67c6c44f0e4262d8124166b80b5d2225c0d35b` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--83a4964decbc65ae11b3900c.md) | 164 | `declaration-track:83a4964decbc65ae11b3900c5ae26f82f2fb48d5519b17fc6f1f3d5960489ab1` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--8696673babb4b58629ff0b96.md) | 170 | `declaration-track:8696673babb4b58629ff0b9662514514c8926e4b2f85729c24e1f1d52e5ee5b8` |
| 28 | `theorem` | [one_apply](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/one-apply--6b0dc83168637adc7a9b5c29.md) | 181 | `result-track:6b0dc83168637adc7a9b5c297f6979da5d8bc8f2b14bf37325dedda4e8aa7be4` |
| 29 | `theorem` | [mul_apply](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/mul-apply--80eba05ce4412093cc8740e4.md) | 185 | `result-track:80eba05ce4412093cc8740e49375efd8ee0af7dbce6baf4310ae3ba5da5b221a` |
| 30 | `def` | [mkₐ](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/mk--9ef78688dfd4b4825d11b459.md) | 190 | `declaration-track:9ef78688dfd4b4825d11b4590868fab95e1986d30938e5ce33707f4e9a0e7928` |
| 31 | `theorem` | [evalₐ_mkₐ](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/eval-mk--50759f2ed67467ed990eb940.md) | 194 | `result-track:50759f2ed67467ed990eb94009987f94573e3c605687f79a9470485bf6028177` |
| 32 | `theorem` | [Ideal.mk_eq_mk](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/ideal-mk-eq-mk--3a64a8004875acfe50122e0d.md) | 198 | `result-track:3a64a8004875acfe50122e0d89e3fd12971fc4cbcb390d44d9523b614e6da5cd` |
| 33 | `theorem` | [smul_mk](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/smul-mk--0fa08f1756b82ed38d4b1b44.md) | 204 | `result-track:0fa08f1756b82ed38d4b1b444bfe96ceb86ada496190b6dadc8bdbe1cf521e43` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--a772a37a4fe0b8a6a41aaf5f.md) | 214 | `declaration-track:a772a37a4fe0b8a6a41aaf5f156509b97b8ce176e9a8f6f2ebc4d2348f16d8cf` |
| 35 | `theorem` | [mk_smul_mk](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/mk-smul-mk--f266116f2fb1c319796046e2.md) | 225 | `result-track:f266116f2fb1c319796046e2be08587a797a308f912dfe678c35c0aa246552ef` |
| 36 | `theorem` | [val_smul_eq_evalₐ_smul](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/val-smul-eq-eval-smul--28859e6157115f44481eae15.md) | 230 | `result-track:28859e6157115f44481eae15c807db3fe95403543815c8f5c3cce1a643ac88cc` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--e1688709c124bc7efac324f4.md) | 235 | `declaration-track:e1688709c124bc7efac324f490ea1781bed43e46cec0989698ef78715ec5930e` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--787def5867f6efdbc5db33a6.md) | 239 | `declaration-track:787def5867f6efdbc5db33a6e594c2ad0c808011feaa0249bd3c789176000dfa` |
| 39 | `instance` | [smul](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/smul--a1f66f9b6129c1d8c19fd666.md) | 247 | `declaration-track:a1f66f9b6129c1d8c19fd6668b7c6a6cc6cc424345899395f951b84ccc91f756` |
| 40 | `theorem` | [smul_eval](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/smul-eval--89a11bb713642b8ae0478821.md) | 259 | `result-track:89a11bb713642b8ae047882157d1b91f1816fa2335271d7895f99a5638a0da1d` |
| 41 | `instance` | [module](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/module--37812a9089f0664b8b5fac75.md) | 264 | `declaration-track:37812a9089f0664b8b5fac75b71426031b69da341c8e17061459fab04fbd4f4e` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/instance--a68dc26b2d37d55f7dceb902.md) | 276 | `declaration-track:a68dc26b2d37d55f7dceb9029cafe1eefe422665b44890b2184c7e9b0bb74fa7` |
| 43 | `example` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant91740e1fff899f1aa6a379945a453cb8d49e6420a3f80c5d420cc522a3e5d18b.lean/declarations/example--19e998a2bbadd2168d20a390.md) | 283 | `declaration-track:19e998a2bbadd2168d20a390f559cb412fbcaf8b0e815d05aa31f0b03bd02e18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
