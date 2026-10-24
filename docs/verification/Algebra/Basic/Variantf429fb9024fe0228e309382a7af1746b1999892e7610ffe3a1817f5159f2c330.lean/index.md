# Verification target: GRWTSK.Algebra.Basic.Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99397430c4ea7f16acde07d261420060dc76840d",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99397430c4ea7f16acde07d261420060dc76840d`.

Source path: `GRWTSK/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Extension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAlgClosed](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/isalgclosed--6c17614d585e2284442fb6f6.md) | 67 | `declaration-track:6c17614d585e2284442fb6f6d925fbf28a56e06cb3428d4a8bb9689afb6f940b` |
| 2 | `theorem` | [IsAlgClosed.splits_codomain](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/isalgclosed-splits-codomain--b6d791698e41ad8a5d1d8b50.md) | 74 | `result-track:b6d791698e41ad8a5d1d8b506a939b494ec793352db3f9be68c24e81fa7e9445` |
| 3 | `theorem` | [IsAlgClosed.splits_domain](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/isalgclosed-splits-domain--fb61f8f29582b31b2841a11d.md) | 82 | `result-track:fb61f8f29582b31b2841a11db5cc84a03d7e8fd51639c7a11cce78d6a650c2d6` |
| 4 | `theorem` | [exists_root](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/exists-root--720161a5bef485d7730211c4.md) | 94 | `result-track:720161a5bef485d7730211c4e2107aba226956e1fb001a28085a9f561c4d9df8` |
| 5 | `theorem` | [exists_pow_nat_eq](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/exists-pow-nat-eq--6cb0a916bd660437cc433fd3.md) | 97 | `result-track:6cb0a916bd660437cc433fd3919e38f04796539c3f834980abbbfdeffd55029a` |
| 6 | `theorem` | [exists_eq_mul_self](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/exists-eq-mul-self--32ee67f9a163fd5360043312.md) | 106 | `result-track:32ee67f9a163fd5360043312f3b3ee6be8f7bfd2b660c4e2208de67f570747f9` |
| 7 | `theorem` | [roots_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/roots-eq-zero-iff--f1b50abde0c5bfafabc49061.md) | 110 | `result-track:f1b50abde0c5bfafabc49061f41b563fed58c7fc5e092eaf7d2f5d21dc19356f` |
| 8 | `theorem` | [exists_eval₂_eq_zero_of_injective](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/exists-eval-eq-zero-of-injective--61e1bca7f4645e8e9ab73f54.md) | 119 | `result-track:61e1bca7f4645e8e9ab73f54b71c3725228c42286513344eb1f49a2dd2ec6626` |
| 9 | `theorem` | [exists_eval₂_eq_zero](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/exists-eval-eq-zero--92d70df43b1a604f91e38fa4.md) | 124 | `result-track:92d70df43b1a604f91e38fa46e6e4f6a9666ec00b822f075277bc888fbb6b46b` |
| 10 | `theorem` | [exists_aeval_eq_zero_of_injective](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/exists-aeval-eq-zero-of-injective--82859f3e6e75590a589f29b7.md) | 130 | `result-track:82859f3e6e75590a589f29b737e66586782c13f2c4c72e54b6ddeab210014dba` |
| 11 | `theorem` | [exists_aeval_eq_zero](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/exists-aeval-eq-zero--1c19547791832ac2b77f2777.md) | 135 | `result-track:1c19547791832ac2b77f2777c60061c0c07710eefc224b7f0375957064faa390` |
| 12 | `theorem` | [of_exists_root](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/of-exists-root--d8e638a0f0fd2beec045515f.md) | 144 | `result-track:d8e638a0f0fd2beec045515f9790004ea398c01b083c6533af2290c130b25804` |
| 13 | `theorem` | [of_ringEquiv](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/of-ringequiv--4ade7714de9cf1c0ef3f465e.md) | 155 | `result-track:4ade7714de9cf1c0ef3f465e8811f13e7d11dc2a8ef8c8991f8d02ac6c01d9ac` |
| 14 | `theorem` | [degree_eq_one_of_irreducible](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/degree-eq-one-of-irreducible--7cd422289b1fccff75262a38.md) | 174 | `result-track:7cd422289b1fccff75262a38274a5a9861651939384116a5a96473414651be05` |
| 15 | `theorem` | [algebraMap_bijective_of_isIntegral](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/algebramap-bijective-of-isintegral--3cf16b06b02301a2d30f3b50.md) | 178 | `result-track:3cf16b06b02301a2d30f3b505031efeb8e31ed8bcd1c9d003a84c66a9a219bde` |
| 16 | `theorem` | [ringHom_bijective_of_isIntegral](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/ringhom-bijective-of-isintegral--5a213d91bde1726f0951b6af.md) | 190 | `result-track:5a213d91bde1726f0951b6af5de57db53e4a267bcb5b7fc867746f57febfa46b` |
| 17 | `theorem` | [algebraMap_surjective_of_isIntegral'](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/algebramap-surjective-of-isintegral--e3aa2837842869c82874babe.md) | 197 | `result-track:e3aa2837842869c82874babe3460659ae79af831cab3ba17d861e9db83275b70` |
| 18 | `theorem` | [IntermediateField.eq_bot_of_isAlgClosed_of_isAlgebraic](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/intermediatefield-eq-bot-of-isalgclosed-of-isalgebraic--1e045158a31928c50f4738df.md) | 208 | `result-track:1e045158a31928c50f4738dfd1e5ddb2f19313c5b7a348363f360ee57f2f0edc` |
| 19 | `lemma` | [Polynomial.isCoprime_iff_aeval_ne_zero_of_isAlgClosed](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/polynomial-iscoprime-iff-aeval-ne-zero-of-isalgclosed--473563226d556cc87f4b87e3.md) | 214 | `result-track:473563226d556cc87f4b87e34027bbbecacc0700b7629331dfab14d183f1f473` |
| 20 | `class` | [IsAlgClosure](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/isalgclosure--19c4567ffaa16a2fed4c7dbf.md) | 227 | `declaration-track:19c4567ffaa16a2fed4c7dbff575f3255296095712643b6864ae721b43633cde` |
| 21 | `theorem` | [isAlgClosure_iff](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/isalgclosure-iff--7c9eb7c7bd5154ed3808abbc.md) | 234 | `result-track:7c9eb7c7bd5154ed3808abbc48a5ac6146d5aa4bbf2f0fef74b93b2122c66a10` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/instance--8e3dddb6dadd898861499397.md) | 238 | `declaration-track:8e3dddb6dadd89886149939786b1409ebbc2d20ce591ea7c3cde4bbae6ea5c62` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/instance--349e3f81f63b807cb134a236.md) | 243 | `declaration-track:349e3f81f63b807cb134a236a34cc818c2c067efd5097e9f5a8a8706d690d4bd` |
| 24 | `instance` | [IsAlgClosed.instIsAlgClosure](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/isalgclosed-instisalgclosure--7bac3fb85960cc56f3e0ccd4.md) | 247 | `declaration-track:7bac3fb85960cc56f3e0ccd4a0cc4612993e55ad22259e6fee9cc931068ac2a7` |
| 25 | `theorem` | [IsAlgClosure.of_splits](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/isalgclosure-of-splits--a2432cbae6ebd3bbe6cdad98.md) | 251 | `result-track:a2432cbae6ebd3bbe6cdad9884ceb857e913d8b313350350145004d69f791b97` |
| 26 | `theorem` | [surjective_restrictDomain_of_isAlgebraic](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/surjective-restrictdomain-of-isalgebraic--46fa50bd1d840371a3bd36dd.md) | 269 | `result-track:46fa50bd1d840371a3bd36ddee5240bb3495b37896b2290cc6630b2a90d2a3a3` |
| 27 | `instance` | [FractionRing.isAlgebraic](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/fractionring-isalgebraic--76c63bfb749a54208ad57a2d.md) | 292 | `declaration-track:76c63bfb749a54208ad57a2d1b595b0bd99237129b0effd8a55d0c4bc24d4dbd` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/instance--de67f8d7fc13ee5510042c0f.md) | 317 | `declaration-track:de67f8d7fc13ee5510042c0f4b557a99d716763b975033d3b1ee9d9b8a0ac301` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/instance--8ecdd03c2a3dd1677de75ee9.md) | 321 | `declaration-track:8ecdd03c2a3dd1677de75ee99acc2eb08020988e38409f86cac5dec118db5e7a` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/instance--fb5974fd22e5a90a8efaa3e8.md) | 326 | `declaration-track:fb5974fd22e5a90a8efaa3e89440a4e4e276c613cc58715729243a3457f31c25` |
| 31 | `def` | [equiv](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/equiv--3e10cd756ac3ea39793204e6.md) | 353 | `declaration-track:3e10cd756ac3ea39793204e650af94f0cfe9800efc8ab6f5f3c516b0c9064cea` |
| 32 | `theorem` | [ofAlgebraic](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/ofalgebraic--31a126f8ae4629dd9e45f16b.md) | 372 | `result-track:31a126f8ae4629dd9e45f16b02ce76aac19088a1ced4ed4521e80388034dcad3` |
| 33 | `def` | [equivOfAlgebraic'](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/equivofalgebraic--b5cfc1fb43e0a9fe665b57df.md) | 377 | `declaration-track:b5cfc1fb43e0a9fe665b57dfa78fc91bd1d37600cb3e6badcb09e94537750366` |
| 34 | `def` | [equivOfAlgebraic](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/equivofalgebraic--a466b44dc8be7aa65a232ca7.md) | 387 | `declaration-track:a466b44dc8be7aa65a232ca7de9369d8d68851fe0972659c9e31ad2eb29b7a0f` |
| 35 | `def` | [equivOfEquivAux](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/equivofequivaux--d9c671db69f9eeeeacefcf32.md) | 398 | `declaration-track:d9c671db69f9eeeeacefcf32fe96dd06c1d3a0afae62f915aea16e3db2b88781` |
| 36 | `def` | [equivOfEquiv](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/equivofequiv--06f3fef0bf253a1cfb78d2f4.md) | 418 | `declaration-track:06f3fef0bf253a1cfb78d2f4f5d0f8668cb98a5ded1e35aa06c781ddca953b30` |
| 37 | `theorem` | [equivOfEquiv_comp_algebraMap](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/equivofequiv-comp-algebramap--803107e65072d96d06e25052.md) | 422 | `result-track:803107e65072d96d06e2505237d7c12753fdc1bd4fb2ae7722966615f9e368d6` |
| 38 | `theorem` | [equivOfEquiv_algebraMap](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/equivofequiv-algebramap--38a5860f3813f3478bad601c.md) | 427 | `result-track:38a5860f3813f3478bad601c0e0bcfab7c938d15f10adfdb9a6596c70a1263a4` |
| 39 | `theorem` | [equivOfEquiv_symm_algebraMap](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/equivofequiv-symm-algebramap--c0c687d850733d2d3dcd47ae.md) | 432 | `result-track:c0c687d850733d2d3dcd47aef626cd0da0950c9186f15cdb4a270717fbd17c4c` |
| 40 | `theorem` | [equivOfEquiv_symm_comp_algebraMap](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/equivofequiv-symm-comp-algebramap--e79d609b799edd6799219f7b.md) | 437 | `result-track:e79d609b799edd6799219f7bb960c45d289d6181fcc64600704958d1432f5267` |
| 41 | `theorem` | [Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/algebra-isalgebraic-range-eval-eq-rootset-minpoly--0858c6a4d8f5bfedcd7cd38f.md) | 454 | `result-track:0858c6a4d8f5bfedcd7cd38f46a751484545298d0731e8d998d00bea2a033a43` |
| 42 | `def` | [IntermediateField.algHomEquivAlgHomOfSplits](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/intermediatefield-alghomequivalghomofsplits--bd89934e1e44f1ee1ef4ad18.md) | 461 | `declaration-track:bd89934e1e44f1ee1ef4ad180b59eeacff864e36d00df2cda7b5ca426aeb5316` |
| 43 | `theorem` | [IntermediateField.algHomEquivAlgHomOfSplits_apply_apply](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/intermediatefield-alghomequivalghomofsplits-apply-apply--e2c973d6c1edcbe7a8b3ea85.md) | 471 | `result-track:e2c973d6c1edcbe7a8b3ea857eda99bd823b39063f53e8b988028bfef5805345` |
| 44 | `def` | [Algebra.IsAlgebraic.algHomEquivAlgHomOfSplits](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/algebra-isalgebraic-alghomequivalghomofsplits--9318850907ef1b635462b239.md) | 477 | `declaration-track:9318850907ef1b635462b23991bee8cf15e31e4168c064c1b119efe6f3a7f11b` |
| 45 | `theorem` | [Algebra.IsAlgebraic.algHomEquivAlgHomOfSplits_apply_apply](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/algebra-isalgebraic-alghomequivalghomofsplits-apply-apply--01286bb0b88001889ffd985d.md) | 485 | `result-track:01286bb0b88001889ffd985d16950e727485364b4d52aab7d881acb90f4e882d` |
| 46 | `theorem` | [Polynomial.isRoot_of_isRoot_iff_dvd_derivative_mul](../../../../mathematics/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/declarations/polynomial-isroot-of-isroot-iff-dvd-derivative-mul--9268ec0bd3736ac2eb2e713a.md) | 496 | `result-track:9268ec0bd3736ac2eb2e713aca8dec8d49a661c0de037f742e747f35387f0346` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
