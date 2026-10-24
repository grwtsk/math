# Verification target: GRWTSK.Algebra.Filtration.Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcfc942d730acae86287609e2b5364f57751fe34",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcfc942d730acae86287609e2b5364f57751fe34`.

Source path: `GRWTSK/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean.json)

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
| 1 | `structure` | [Ideal.Filtration](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/ideal-filtration--91b8c6c57e18189201ee302f.md) | 52 | `declaration-track:91b8c6c57e18189201ee302f4776f7e65dc579d36b86c82ffad1602d578f8874` |
| 2 | `theorem` | [pow_smul_le](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/pow-smul-le--b870598d022761282ea1e1f7.md) | 61 | `result-track:b870598d022761282ea1e1f7c9a7fec23e40f4385f657a59caad36e7ecc6c8f0` |
| 3 | `theorem` | [pow_smul_le_pow_smul](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/pow-smul-le-pow-smul--507fcb0c97a74ef95568924b.md) | 68 | `result-track:507fcb0c97a74ef95568924b46292e3d590f3564047636dbf45d66ed4dad8c68` |
| 4 | `theorem` | [antitone](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/antitone--b9102decdf88bcb9bf60de4d.md) | 72 | `result-track:b9102decdf88bcb9bf60de4d7e9975a87ecd51916cbebab4d1c2e2fafdcd6188` |
| 5 | `def` | [_root_.Ideal.trivialFiltration](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/root-ideal-trivialfiltration--5d3f84088bebdb10993d336f.md) | 77 | `declaration-track:5d3f84088bebdb10993d336f2d505485ced208c8cd38d0104b2e902ceb2eec05` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/instance--013609916aa30ea32f499ac0.md) | 83 | `declaration-track:013609916aa30ea32f499ac05c0cdb6f2cc63cd8461fa90fba7e0244179d1f88` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/instance--94617882378e3b9534e3cec4.md) | 89 | `declaration-track:94617882378e3b9534e3cec4d194f8e1dc8147b887e7472b553af5b51204e2e3` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/instance--f3c39b937b96af5f51472f86.md) | 103 | `declaration-track:f3c39b937b96af5f51472f867d6ef38f566d86e7249d5595313b766c79c6d5ec` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/instance--c901e9fb6c33e726e151db43.md) | 109 | `declaration-track:c901e9fb6c33e726e151db43c41f3778e890ba3d93cebb855dcd4360a45d12f2` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/instance--20d61c1052febae159033ccb.md) | 123 | `declaration-track:20d61c1052febae159033ccb5aad12a07f9bd4cb6714a26841444a1ad3f498de` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/instance--fbb4aa8bf3c8dbf96794baae.md) | 126 | `declaration-track:fbb4aa8bf3c8dbf96794baae39bfc29eddd60777ffea2eef2befb57bfed9b5a5` |
| 12 | `theorem` | [sup_N](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/sup-n--c451a1b5700699ed8eacde3b.md) | 130 | `result-track:c451a1b5700699ed8eacde3b6db26b2af2c3c4cf1c42da8a73a3ad1a66799fe3` |
| 13 | `theorem` | [sSup_N](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/ssup-n--b51d2620b29af6197aca5030.md) | 134 | `result-track:b51d2620b29af6197aca503068e1b173d5972ce3ba1df96474f69ebab3f18d09` |
| 14 | `theorem` | [inf_N](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/inf-n--d63aa0bf93d648883a2d6774.md) | 138 | `result-track:d63aa0bf93d648883a2d6774ccbbb235d9712c822be35b3dca5ed1f5e145049c` |
| 15 | `theorem` | [sInf_N](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/sinf-n--45fbb7471ab6cb3d90ed51ab.md) | 142 | `result-track:45fbb7471ab6cb3d90ed51ab97c54c2fb55892cc390096b7a0b5b7a957123eb3` |
| 16 | `theorem` | [top_N](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/top-n--defeac3900a757509b0fa38a.md) | 146 | `result-track:defeac3900a757509b0fa38a8a693017f1d317edc21ba5a8af143470f1389c44` |
| 17 | `theorem` | [bot_N](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/bot-n--acd5551101c5094b1704dbfb.md) | 150 | `result-track:acd5551101c5094b1704dbfb234820b58b2697e94874cc2e1bfb5358920dc434` |
| 18 | `theorem` | [iSup_N](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/isup-n--06da4462adfc86b5c590b578.md) | 154 | `result-track:06da4462adfc86b5c590b578420b13631a8ec4f222a47d09d760e7af624193b4` |
| 19 | `theorem` | [iInf_N](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/iinf-n--17cc04ca710d92243369f68d.md) | 158 | `result-track:17cc04ca710d92243369f68dd20632a6e2c1f18389235ffb5b18832bd4f940ab` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/instance--88af9712e2032137839fa924.md) | 161 | `declaration-track:88af9712e2032137839fa924475404654661214b9b39be398faae0e8107fdf38` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/instance--b23471906958d036591d86d2.md) | 164 | `declaration-track:b23471906958d036591d86d2012d9423f823c12b0c3952097db5b3d3917f4229` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/instance--31178aefe7d6a71014ce1491.md) | 169 | `declaration-track:31178aefe7d6a71014ce14913df423a96ed0237eec5a70da11c446952bb651f7` |
| 23 | `def` | [Stable](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/stable--eee4011c83ae53938fe6a934.md) | 173 | `declaration-track:eee4011c83ae53938fe6a934f8689384e090531ce3baebbdd77aa436e50c594d` |
| 24 | `def` | [_root_.Ideal.stableFiltration](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/root-ideal-stablefiltration--89302518ece872fec13151c6.md) | 178 | `declaration-track:89302518ece872fec13151c690fc55a5c7ca21b9b9633e1686aeb417742f9b6d` |
| 25 | `theorem` | [_root_.Ideal.stableFiltration_stable](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/root-ideal-stablefiltration-stable--2ad84410b2472c1e21bec9b2.md) | 184 | `result-track:2ad84410b2472c1e21bec9b2366c67e8b880810a61b9f62c8b5d672769216819` |
| 26 | `theorem` | [Stable.exists_pow_smul_eq](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/stable-exists-pow-smul-eq--e4084c49aba8d488dc92fa19.md) | 193 | `result-track:e4084c49aba8d488dc92fa194ee29424632f840d5f308d922b8267875c6f40a8` |
| 27 | `theorem` | [Stable.exists_pow_smul_eq_of_ge](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/stable-exists-pow-smul-eq-of-ge--3abdae7b8f325899d1d00b7d.md) | 201 | `result-track:3abdae7b8f325899d1d00b7d2bda79871c77a2c3a89ca52f46a4f828672c6d3a` |
| 28 | `theorem` | [stable_iff_exists_pow_smul_eq_of_ge](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/stable-iff-exists-pow-smul-eq-of-ge--3a120e53843672fdee56b1a3.md) | 209 | `result-track:3a120e53843672fdee56b1a3db765c7009deee13766b7317f2fcf1a5d6354e7f` |
| 29 | `theorem` | [Stable.exists_forall_le](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/stable-exists-forall-le--6892f9710cd82945b9e3dca5.md) | 215 | `result-track:6892f9710cd82945b9e3dca5e18883ec79e5eb1fe97a3ac3b166f505b9bbfc38` |
| 30 | `theorem` | [Stable.bounded_difference](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/stable-bounded-difference--21aa38f76776e4869034ab7e.md) | 227 | `result-track:21aa38f76776e4869034ab7e564164235c4b551e668a05806d2c53fa1843e1e8` |
| 31 | `def` | [submodule](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/submodule--0c56d78bea3f86e09048e3a2.md) | 240 | `declaration-track:0c56d78bea3f86e09048e3a2f321faa241b9afaa5132b0fce87c1c2ffe3ecb59` |
| 32 | `theorem` | [mem_submodule](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/mem-submodule--3d208775570b14cb53e0113b.md) | 253 | `result-track:3d208775570b14cb53e0113b91b4d6fae5476eeb0a190e960da53f3263c5188f` |
| 33 | `theorem` | [inf_submodule](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/inf-submodule--a1097de9e7e0082052f21481.md) | 256 | `result-track:a1097de9e7e0082052f214810efa4dd7b242732919b84d1191e82116d26cc556` |
| 34 | `def` | [submoduleInfHom](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/submoduleinfhom--942c990466e615e363af6a20.md) | 263 | `declaration-track:942c990466e615e363af6a205416182f57337834c61c0085ebcb85e314a9cb07` |
| 35 | `theorem` | [submodule_closure_single](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/submodule-closure-single--a924ac1ffdf48d22fd9d137f.md) | 270 | `result-track:a924ac1ffdf48d22fd9d137f81dde7023911a33e4279088bbdc40d191d434cd7` |
| 36 | `theorem` | [submodule_span_single](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/submodule-span-single--fd2c06257cafb135f408f1c0.md) | 285 | `result-track:fd2c06257cafb135f408f1c01508c91fc684a7072944d2699e3ccfbb9a3dc105` |
| 37 | `theorem` | [submodule_eq_span_le_iff_stable_ge](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/submodule-eq-span-le-iff-stable-ge--22a4c5931f69388c75bf14b5.md) | 290 | `result-track:22a4c5931f69388c75bf14b54deef8f099b4c567d1687e61a00ba31c10a7df95` |
| 38 | `theorem` | [submodule_fg_iff_stable](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/submodule-fg-iff-stable--8044a0e425c52f02b2dbe740.md) | 336 | `result-track:8044a0e425c52f02b2dbe740ad6f46471dbc41c1991c56f46ea924b1f0c072a1` |
| 39 | `theorem` | [Stable.of_le](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/stable-of-le--d80275092bdf38019b74423a.md) | 367 | `result-track:d80275092bdf38019b74423a53fc0ebd0b72c4687d7c9e1708eef63cea68492f` |
| 40 | `theorem` | [Stable.inter_right](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/stable-inter-right--2804ebe49ba0ca1f6c11e1b5.md) | 375 | `result-track:2804ebe49ba0ca1f6c11e1b5ee6efef0eb6c2cf912e7aea54374a08a509629ab` |
| 41 | `theorem` | [Stable.inter_left](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/stable-inter-left--8187cef800d7ad42bbba54bc.md) | 379 | `result-track:8187cef800d7ad42bbba54bc86a0bb5b63ea56277e5b4cee6a4137096bedb67a` |
| 42 | `theorem` | [Ideal.exists_pow_inf_eq_pow_smul](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/ideal-exists-pow-inf-eq-pow-smul--dc7589b44901a9fcd16a7d6e.md) | 388 | `result-track:dc7589b44901a9fcd16a7d6eaa94224c2b53ff995af831c4a7371c75f3e49f3b` |
| 43 | `theorem` | [Ideal.mem_iInf_smul_pow_eq_bot_iff](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/ideal-mem-iinf-smul-pow-eq-bot-iff--66575450a6fb58b9bbb3f328.md) | 392 | `result-track:66575450a6fb58b9bbb3f328e1958f19c7c652cab44f030ced2150b3f0ab8736` |
| 44 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_le_jacobson](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-le-jacobson--f949ffcf82178bf4840c41c5.md) | 415 | `result-track:f949ffcf82178bf4840c41c59e219edaaa937e63159ad9002e4cb175d8be8914` |
| 45 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_isLocalRing](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-islocalring--2c04caaa75f598ad67ac4615.md) | 425 | `result-track:2c04caaa75f598ad67ac46154d0e7ee202e470cd50d4d52f885ca36bbee19d0f` |
| 46 | `theorem` | [Ideal.iInf_pow_eq_bot_of_isLocalRing](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/ideal-iinf-pow-eq-bot-of-islocalring--db1f91ef57b7ab4b80c091a0.md) | 431 | `result-track:db1f91ef57b7ab4b80c091a013e34f2ea7242ca8eef61f30e16a5f78c9aa68b5` |
| 47 | `theorem` | [Ideal.isIdempotentElem_iff_eq_bot_or_top_of_isLocalRing](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/ideal-isidempotentelem-iff-eq-bot-or-top-of-islocalring--cfed1cc429a5c78c3d3ab5ac.md) | 438 | `result-track:cfed1cc429a5c78c3d3ab5acacef8fca62c5346fdd5052576bc546822bfbce67` |
| 48 | `theorem` | [Ideal.iInf_pow_smul_eq_bot_of_isTorsionFree](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/ideal-iinf-pow-smul-eq-bot-of-istorsionfree--3838bfb1d39f41a7c1aee39d.md) | 451 | `result-track:3838bfb1d39f41a7c1aee39d2235b136e87758ea13e169d0b10147bf3a5f83ff` |
| 49 | `theorem` | [Ideal.iInf_pow_eq_bot_of_isDomain](../../../../mathematics/Algebra/Filtration/Variant71deb91fd7ebc34fdea852bc27ae07fda2b170c28d7bf85e1f13d7b1d9e41de8.lean/declarations/ideal-iinf-pow-eq-bot-of-isdomain--bec784cf2902494809b2ffec.md) | 463 | `result-track:bec784cf2902494809b2ffec87daaeb6301540d2f1434de5ac4d7d42a08cd7db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
