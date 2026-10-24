# Verification target: GRWTSK.Algebra.Symmetrized.Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "312f14eb1352c9ecc2408d7202a5e22184861028",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `312f14eb1352c9ecc2408d7202a5e22184861028`.

Source path: `GRWTSK/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Jordan.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SymAlg](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/symalg--f5b0dc62ade90f6343b86851.md) | 45 | `declaration-track:f5b0dc62ade90f6343b8685197e7a03fc2ded73c4e48b8146470a96a557619c8` |
| 2 | `def` | [sym](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym--fcf21c69d21ac50d8cff57ce.md) | 59 | `declaration-track:fcf21c69d21ac50d8cff57ceb5be169af632bb2284fc57283f7ba7c67ca3c9a7` |
| 3 | `def` | [unsym](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym--c3e5dd81d32a6da956bbf2b8.md) | 65 | `declaration-track:c3e5dd81d32a6da956bbf2b8a58c60313d2b07ab8d6c495f328b4628b178c7a7` |
| 4 | `theorem` | [unsym_sym](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-sym--c7db736d18c2bfba7345195f.md) | 70 | `result-track:c7db736d18c2bfba7345195f61c9bed1f758c6e9dc5719f137f6c9572e0fb685` |
| 5 | `theorem` | [sym_unsym](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-unsym--7439c9bc6971068cd6ce7277.md) | 75 | `result-track:7439c9bc6971068cd6ce7277746504d417b5ac4785889d5508bb86798085fd25` |
| 6 | `theorem` | [sym_comp_unsym](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-comp-unsym--13cf5c152be59b30d1bb3629.md) | 80 | `result-track:13cf5c152be59b30d1bb3629cdcd8ee3727165fbae32b516bb5aafd520762c5f` |
| 7 | `theorem` | [unsym_comp_sym](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-comp-sym--6102bb08898476b98633243d.md) | 85 | `result-track:6102bb08898476b98633243da9862ebb832ec7c9c737578c5e3a8ea4326171e9` |
| 8 | `theorem` | [sym_symm](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-symm--eb3c4d556ce3dc90c5b93af7.md) | 90 | `result-track:eb3c4d556ce3dc90c5b93af7b72d99b0cdcdb884c8d25241e35b1e0142276c62` |
| 9 | `theorem` | [unsym_symm](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-symm--2455cde33dcfc84869f0f7f5.md) | 95 | `result-track:2455cde33dcfc84869f0f7f5635334eabd6a7cbe5e13c34fd836b8e4e303aaeb` |
| 10 | `theorem` | [sym_bijective](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-bijective--6f5866623cf823061d2f651f.md) | 99 | `result-track:6f5866623cf823061d2f651fa6687e18749361a8b9af62d145fa321904c3b8a8` |
| 11 | `theorem` | [unsym_bijective](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-bijective--885c6cb057c41c682315d0ff.md) | 103 | `result-track:885c6cb057c41c682315d0ff386d62884da62d920b31671045630f37de0aee85` |
| 12 | `theorem` | [sym_injective](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-injective--cc99ecf8ded5a05e5fc1cbf5.md) | 107 | `result-track:cc99ecf8ded5a05e5fc1cbf5007da3fd3f6c8b59f1f1b7d98314ab240e6046c0` |
| 13 | `theorem` | [sym_surjective](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-surjective--e1e813ad75e65f1859d2af29.md) | 111 | `result-track:e1e813ad75e65f1859d2af294456fc7c43df61adb38643a57e9ce4c14f959fa3` |
| 14 | `theorem` | [unsym_injective](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-injective--674f1972e64c3c32cf8a6312.md) | 115 | `result-track:674f1972e64c3c32cf8a631287ebb7952f1c3e36c069d9f775b76d855f5b4daf` |
| 15 | `theorem` | [unsym_surjective](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-surjective--264a196e5ea825d81e45e839.md) | 119 | `result-track:264a196e5ea825d81e45e839a6cab26d1d3422d0d808aff1ad54aebf981a5cab` |
| 16 | `theorem` | [sym_inj](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-inj--2e8180e884ac6ecae16ffb63.md) | 124 | `result-track:2e8180e884ac6ecae16ffb638f3a280e58fc9226f8c28241d2677f2593e66e56` |
| 17 | `theorem` | [unsym_inj](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-inj--f1e8092f7a6017fbc0972364.md) | 129 | `result-track:f1e8092f7a6017fbc0972364efa92777ce78ca5a0f07fbc0d5aa0f3b70a831d0` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--6913b0efee8a1aa5235e41b5.md) | 133 | `declaration-track:6913b0efee8a1aa5235e41b54aae7201e2383b582ff7bd96b84b112638467fbf` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--daae7f6bfa9bd059d5c3bc58.md) | 136 | `declaration-track:daae7f6bfa9bd059d5c3bc5877d9d73fb3d25da9cae379236eb6634191d4d00a` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--5ceee5d85248a6fc56319180.md) | 139 | `declaration-track:5ceee5d85248a6fc5631918093dce4a8088354a968b538b1c5d268ce4c19ffd9` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--fafd0fefcdfcc3e2b6d08bb9.md) | 142 | `declaration-track:fafd0fefcdfcc3e2b6d08bb9ba8a10f4bf5fb0d8f820b18574afc5deb35d42ea` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--bfdf02dc05810e0f343c669c.md) | 145 | `declaration-track:bfdf02dc05810e0f343c669c222487a253393cdbb2d97b05ca6971b21da4d70b` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--319349d7748a5dbd25598b6c.md) | 149 | `declaration-track:319349d7748a5dbd25598b6c84ca8c99a5353874f89f529573044f85d84545ba` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--e0675fbe5007f45a52aaddab.md) | 151 | `declaration-track:e0675fbe5007f45a52aaddab363d38bab3bc47b589c69291527d7ab90327634f` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--e6a6982fc40e1695b3f98117.md) | 153 | `declaration-track:e6a6982fc40e1695b3f98117a60efff1d536142f411f484b59a8246161d520ef` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--80463c7f4f4a68a0ab46338c.md) | 155 | `declaration-track:80463c7f4f4a68a0ab46338c43a0e75783bcf65d583a701a482268450932f8c2` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--7718f964336be0e277061a3a.md) | 158 | `declaration-track:7718f964336be0e277061a3a23265eaad5921d65ec73a71b1c09685027bfdd6d` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--78840cc2ce14b9987ce97b79.md) | 162 | `declaration-track:78840cc2ce14b9987ce97b7931ca6dde524b0ae234521c90c99b5fb8e2b78ab8` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--5340cd557cc82d2c66ecf464.md) | 164 | `declaration-track:5340cd557cc82d2c66ecf464fd25fa19674c41d4f8732c24d8dd431838cd003b` |
| 30 | `theorem` | [sym_one](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-one--56ba641f86d81f0dc6ede7a3.md) | 167 | `result-track:56ba641f86d81f0dc6ede7a313fea13b3157e02bac1d4133bf57f0f073cc90f3` |
| 31 | `theorem` | [unsym_one](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-one--b933d79570d0bc3943070e1f.md) | 173 | `result-track:b933d79570d0bc3943070e1fe78caf4ae787688d34a747c8ad07e9829c333569` |
| 32 | `theorem` | [sym_add](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-add--dcdf3f3fad7879ce1537c359.md) | 179 | `result-track:dcdf3f3fad7879ce1537c3596214839fb904ae2254e48ea46e80423d1d474291` |
| 33 | `theorem` | [unsym_add](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-add--7d646477fd024d29be0088e1.md) | 184 | `result-track:7d646477fd024d29be0088e18b6dd3736c3098a2473df002dbfe7aac1b0052ce` |
| 34 | `theorem` | [sym_sub](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-sub--b33869819f0406266d6fa869.md) | 189 | `result-track:b33869819f0406266d6fa8697ecb91fc3fd78fccfb289c01d7817e02806cb713` |
| 35 | `theorem` | [unsym_sub](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-sub--f0b7e79f7a1752761553b9e5.md) | 194 | `result-track:f0b7e79f7a1752761553b9e582cb9dc6cb6d6ecaeb7aab8993a4cc0651f780c7` |
| 36 | `theorem` | [sym_neg](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-neg--cd1643ddd042ceb0f48356cd.md) | 199 | `result-track:cd1643ddd042ceb0f48356cd70a8ef9c88267ebf2439a05e5ba2a480121213d8` |
| 37 | `theorem` | [unsym_neg](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-neg--e7f29287a67ff3c60cbe63ab.md) | 204 | `result-track:e7f29287a67ff3c60cbe63ab0cece3918e7163e63717ec6277b667edcd62bca6` |
| 38 | `theorem` | [mul_def](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/mul-def--9ef15d3029be408adef0ffbd.md) | 208 | `result-track:9ef15d3029be408adef0ffbda9c16e5fc7c0379ff2645288fe5594aab62e1426` |
| 39 | `theorem` | [unsym_mul](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-mul--158bfd6ffae23b903a129ce4.md) | 212 | `result-track:158bfd6ffae23b903a129ce41bfa73cc65e0044292808f91fb89e61fa0155900` |
| 40 | `theorem` | [sym_mul_sym](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-mul-sym--dc944d617ef8429e32cfb1f1.md) | 216 | `result-track:dc944d617ef8429e32cfb1f14646d22bc20f789e49e94d56f2067878d10675a6` |
| 41 | `theorem` | [sym_inv](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-inv--56763a546a216cee259a1068.md) | 223 | `result-track:56763a546a216cee259a10688deee1ff7e36fc75a4e4f3c1fbb95d924f933f4f` |
| 42 | `theorem` | [unsym_inv](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-inv--430c4eeceb695fe6d6b5a70d.md) | 229 | `result-track:430c4eeceb695fe6d6b5a70d3a6dfbe742fa5a5d935f6a3c9c337537e14f230d` |
| 43 | `theorem` | [sym_smul](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-smul--a6aa084516912129f1a1a7b0.md) | 234 | `result-track:a6aa084516912129f1a1a7b0ade19e05c33fac66c788ec8893d28b613d46c496` |
| 44 | `theorem` | [unsym_smul](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-smul--584232efcac4c3b96ceee982.md) | 239 | `result-track:584232efcac4c3b96ceee982173ffa4ffcd33fbef31d3570be8b6147f43189c8` |
| 45 | `theorem` | [unsym_eq_one_iff](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-eq-one-iff--1218b42a7d068483fe2ab8c9.md) | 244 | `result-track:1218b42a7d068483fe2ab8c9042df43f90029b62c6c5c86d7682941f2849ca7f` |
| 46 | `theorem` | [sym_eq_one_iff](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-eq-one-iff--46e4dcb9d58b0e5fe1f92e88.md) | 250 | `result-track:46e4dcb9d58b0e5fe1f92e88336a3428f81a1a434bc0a84908674b69cf59f1ad` |
| 47 | `theorem` | [unsym_ne_one_iff](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-ne-one-iff--08720fefaf92700f2d04e8f7.md) | 256 | `result-track:08720fefaf92700f2d04e8f7b1bbec3c050fa15138ea5c798eee55bf8e5d7feb` |
| 48 | `theorem` | [sym_ne_one_iff](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-ne-one-iff--f9cfaaf09c4abb81daa88527.md) | 262 | `result-track:f9cfaaf09c4abb81daa88527f8ca5fd9ee773a8986a86db05548869911f76c28` |
| 49 | `instance` | [addCommSemigroup](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/addcommsemigroup--6fa1ed746361873ee4ccec92.md) | 267 | `declaration-track:6fa1ed746361873ee4ccec92f5108c49c63f57a1b020c7598478376f2f254873` |
| 50 | `instance` | [addMonoid](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/addmonoid--dcc3ad491b35815747ea01e2.md) | 270 | `declaration-track:dcc3ad491b35815747ea01e2ed575e03aa53485975e868ab5b698268623c1fd6` |
| 51 | `instance` | [addGroup](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/addgroup--da0ac2311197e8946a3d601c.md) | 273 | `declaration-track:da0ac2311197e8946a3d601c65b1439fc2d7209e26c729503384ff0b9f2bf953` |
| 52 | `instance` | [addCommMonoid](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/addcommmonoid--22509e2fe31e4f047544547c.md) | 277 | `declaration-track:22509e2fe31e4f047544547c628332b78caea8b0bee3ca0f17e9709888b77f01` |
| 53 | `instance` | [addCommGroup](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/addcommgroup--ea3c21e340ed61de262f0cc0.md) | 280 | `declaration-track:ea3c21e340ed61de262f0cc0a54db53671df536c9e609b244932d67ad7c03a2d` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--dca5295be76d213d8c72c614.md) | 283 | `declaration-track:dca5295be76d213d8c72c614437ddbe06d92e27bf9f7d429e413b45a07e78f3b` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--625579eab21aaa0e1d62185a.md) | 286 | `declaration-track:625579eab21aaa0e1d62185a702875477cd01aae98710e53618b9284e170a572` |
| 56 | `theorem` | [invOf_sym](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/invof-sym--ae52a7d848084b84707b10f8.md) | 295 | `result-track:ae52a7d848084b84707b10f8ed5d09d433b0445a410ba3ccd179e0a832109a91` |
| 57 | `instance` | [nonAssocSemiring](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/nonassocsemiring--b166f489a2a91cda0df13b8e.md) | 300 | `declaration-track:b166f489a2a91cda0df13b8e12df64215fd14677ce2c6cafd084ab0884c409f0` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--df42874bbdabeed7cca17553.md) | 329 | `declaration-track:df42874bbdabeed7cca1755371c554b38b737b19dae2a36ab195f828830a2c21` |
| 59 | `theorem` | [unsym_mul_self](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/unsym-mul-self--837197b409739ed98e279b7d.md) | 335 | `result-track:837197b409739ed98e279b7dd5095d94ef62ba94c3ffcb5f7a3f3e95bf0ebe1d` |
| 60 | `theorem` | [sym_mul_self](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/sym-mul-self--629aa107fba914d41431cdf0.md) | 339 | `result-track:629aa107fba914d41431cdf01bb955be806e86be22bea994f3be1b5bde32aba6` |
| 61 | `theorem` | [mul_comm](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/mul-comm--4455916c7d79d70573eb5395.md) | 343 | `result-track:4455916c7d79d70573eb539510a3ab5e6f99bd89620ba297e942e41a68235119` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variantb58ababece69ec4a7772f578dfb1f09fb4d5d6af508c271d9307a25f62b4d72e.lean/declarations/instance--2f7a535ff3084a190b35d776.md) | 348 | `declaration-track:2f7a535ff3084a190b35d776ce7e55c35674ec23f511e226626b4716f8b411d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
