# Verification target: GRWTSK.Algebra.Basic.Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1740914a27f12e5f513bad7fae5158bba963861d",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1740914a27f12e5f513bad7fae5158bba963861d`.

Source path: `GRWTSK/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Normal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAlgClosed](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/isalgclosed--321043e980cc4e71dc53af3d.md) | 53 | `declaration-track:321043e980cc4e71dc53af3dfc6997a8b2ee9775d56e4be8dcbe132f94bebe6f` |
| 2 | `theorem` | [IsAlgClosed.splits_codomain](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/isalgclosed-splits-codomain--793045ea4eb606e2ed92fa9a.md) | 61 | `result-track:793045ea4eb606e2ed92fa9a6f2d34dd96c4584d05eb93bc645d06d62de69e61` |
| 3 | `theorem` | [IsAlgClosed.splits_domain](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/isalgclosed-splits-domain--f53c5bf1dadcefb4a4b18bf6.md) | 69 | `result-track:f53c5bf1dadcefb4a4b18bf6c3f795f3f71fe871ee6e52c81d59ecb95bebd449` |
| 4 | `theorem` | [exists_root](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/exists-root--29ea6568950c11a0db3ec1c7.md) | 78 | `result-track:29ea6568950c11a0db3ec1c71e68fde679eaee855f566044dc2993e2dc32a014` |
| 5 | `theorem` | [exists_pow_nat_eq](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/exists-pow-nat-eq--71c2ddf89caa269e00e7416a.md) | 82 | `result-track:71c2ddf89caa269e00e7416a9a51ed320ba57055919dc08e696162ee430877d0` |
| 6 | `theorem` | [exists_eq_mul_self](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/exists-eq-mul-self--bb7abe26ce1c90a0d983fbd7.md) | 92 | `result-track:bb7abe26ce1c90a0d983fbd78c199d390be4d8c87d71192e620ff97dd13b1c37` |
| 7 | `theorem` | [roots_eq_zero_iff](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/roots-eq-zero-iff--1fe8901e03562c43f9fc1ef5.md) | 97 | `result-track:1fe8901e03562c43f9fc1ef5a4e8a9fcabd81224787821de2b80a6bf5e936ea6` |
| 8 | `theorem` | [exists_eval₂_eq_zero_of_injective](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/exists-eval-eq-zero-of-injective--734d34937f34fb527999f128.md) | 107 | `result-track:734d34937f34fb527999f128dba95ad05c958b0b341a5fd6aaa25b449df05a4f` |
| 9 | `theorem` | [exists_eval₂_eq_zero](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/exists-eval-eq-zero--16df6872052503d07098e632.md) | 113 | `result-track:16df6872052503d07098e632de147909eee170e486416b1a5160ae88125bd421` |
| 10 | `theorem` | [exists_aeval_eq_zero_of_injective](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/exists-aeval-eq-zero-of-injective--7209848d774803008cdbf0bd.md) | 120 | `result-track:7209848d774803008cdbf0bd3e29be8a0a5f6b9d7ee09aa3584a02207e28849d` |
| 11 | `theorem` | [exists_aeval_eq_zero](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/exists-aeval-eq-zero--7fe1c395783e140b8369a70a.md) | 126 | `result-track:7fe1c395783e140b8369a70a6692d9a5d1eafba0fd61f4e6229f19a9a71447ec` |
| 12 | `theorem` | [of_exists_root](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/of-exists-root--585c2b3a40d799a53ce8a8d2.md) | 131 | `result-track:585c2b3a40d799a53ce8a8d23b3fadeec6e12d4da86ebfb9f7798de41e3a7329` |
| 13 | `theorem` | [degree_eq_one_of_irreducible](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/degree-eq-one-of-irreducible--0c3a140d0b856fd5707a240c.md) | 142 | `result-track:0c3a140d0b856fd5707a240cd9ae7db82c8e6c0e2309bf94cf1c7cc2fff0ac4e` |
| 14 | `theorem` | [algebraMap_surjective_of_isIntegral](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/algebramap-surjective-of-isintegral--a49aaff2a1ec7025458f626e.md) | 147 | `result-track:a49aaff2a1ec7025458f626eb13ab54e74409fb5d4a0ac8281b1260f5c1e13c1` |
| 15 | `theorem` | [algebraMap_surjective_of_isIntegral'](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/algebramap-surjective-of-isintegral--79834abea25854a5ebe35d85.md) | 159 | `result-track:79834abea25854a5ebe35d8567702b3501b988187ee3de7930bb46aac33f54cb` |
| 16 | `theorem` | [algebraMap_surjective_of_isAlgebraic](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/algebramap-surjective-of-isalgebraic--190e248004a525f6523e2a96.md) | 164 | `result-track:190e248004a525f6523e2a96f618e5567a0b49b0a30dbb7deca1268bf2af52ed` |
| 17 | `class` | [IsAlgClosure](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/isalgclosure--82d9e1ab54b09be353d1ea56.md) | 173 | `declaration-track:82d9e1ab54b09be353d1ea56e60ac760728b65c5273d268db08c364fd1f50ab8` |
| 18 | `theorem` | [isAlgClosure_iff](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/isalgclosure-iff--d4381d0eb96d9a44d265e142.md) | 179 | `result-track:d4381d0eb96d9a44d265e14210dda420ddd4b70f72fd71d5194db7eb80f095a4` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/instance--7a7f8264b1919d9bd5820b73.md) | 184 | `declaration-track:7a7f8264b1919d9bd5820b73e710acb488d439bff48a6598a155d197f2bd228f` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/instance--742206d24faae25309022c91.md) | 190 | `declaration-track:742206d24faae25309022c9151a150f0be2094fa33fff18d7e7c8f25926d0910` |
| 21 | `structure` | [SubfieldWithHom](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/subfieldwithhom--b529e422b6f031457383389f.md) | 212 | `declaration-track:b529e422b6f031457383389f1550fcd3abee81d424aa47e8992decc8e5875229` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/instance--e7c91f366d5238a9bc40bf4e.md) | 225 | `declaration-track:e7c91f366d5238a9bc40bf4e69682befe80a6cac4ae26f7ee665cfa7ed155142` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/instance--0abd3997edea0c73db56c753.md) | 228 | `declaration-track:0abd3997edea0c73db56c753e64d4f1e8c90f2342e53d5e21d3d64967ea086c8` |
| 24 | `theorem` | [le_def](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/le-def--09221b70763ed870ec655834.md) | 232 | `result-track:09221b70763ed870ec655834ced46d9653613a4be674030502bc39d4e65ef0cb` |
| 25 | `theorem` | [compat](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/compat--8bae7d6e220f78e440bfa1ba.md) | 236 | `result-track:8bae7d6e220f78e440bfa1bad981674fde05f420980a6a76919c5242a070387d` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/instance--e9d14251af31089326532c04.md) | 240 | `declaration-track:e9d14251af31089326532c04fe993fb11f60ea7a7bcb3daa546df8c5c26ed0ec` |
| 27 | `theorem` | [maximal_subfieldWithHom_chain_bounded](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/maximal-subfieldwithhom-chain-bounded--537c352352d727a9807443e5.md) | 249 | `result-track:537c352352d727a9807443e566f98928ce0f0bc07ab33dc4bfc969fb5e8334d7` |
| 28 | `theorem` | [exists_maximal_subfieldWithHom](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/exists-maximal-subfieldwithhom--64b49f12a8be10eddffca844.md) | 279 | `result-track:64b49f12a8be10eddffca8446467e364ec99ae553c0133607231750dd84a87bb` |
| 29 | `def` | [maximalSubfieldWithHom](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/maximalsubfieldwithhom--74e65abc081806f75858d39c.md) | 284 | `declaration-track:74e65abc081806f75858d39c98529a9d40a3152f9621f721365ff6d08dc6e574` |
| 30 | `theorem` | [maximalSubfieldWithHom_is_maximal](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/maximalsubfieldwithhom-is-maximal--a5ab38af59c24cb0d9d7e4af.md) | 288 | `result-track:a5ab38af59c24cb0d9d7e4af9785a8ad4eb0132ba7e7121f1be7f264b0b94ddd` |
| 31 | `def` | [_root_.Algebra.adjoin.liftSingleton](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/root-algebra-adjoin-liftsingleton--cd189e35b51463d497b83518.md) | 297 | `declaration-track:cd189e35b51463d497b8351880a69d5a7e7a9522e15cf7aaf6821dae8d92256e` |
| 32 | `theorem` | [maximalSubfieldWithHom_eq_top](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/maximalsubfieldwithhom-eq-top--8256e84555c7f6a13918c87f.md) | 308 | `result-track:8256e84555c7f6a13918c87f51a45ea8ad22de2163e8a8c322781b90ed8c8040` |
| 33 | `theorem` | [FractionRing.isAlgebraic](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/fractionring-isalgebraic--43ed9a1cd45124d55f57b92a.md) | 363 | `result-track:43ed9a1cd45124d55f57b92a9ec545d75f53f199f07514b6afba53ad68cefc16` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/instance--f59568c4e41b483f70dd882c.md) | 382 | `declaration-track:f59568c4e41b483f70dd882cd7e7f9374e55645a5adc4b4432d731a84b92e983` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/instance--ea242b1beeb7ef20e0162c7f.md) | 388 | `declaration-track:ea242b1beeb7ef20e0162c7fb2186d9a7304fdd710b9e367db66dbc663447248` |
| 36 | `def` | [equiv](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/equiv--0129cb5099f0e34640376e61.md) | 416 | `declaration-track:0129cb5099f0e34640376e61ab4e27afd54aec4be2001d6ea908a4b8dc119974` |
| 37 | `theorem` | [ofAlgebraic](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/ofalgebraic--7682019cf25a7e5c4150becf.md) | 447 | `result-track:7682019cf25a7e5c4150becfb48454c4872600cdb7cf10c9d73d984ad7c0dc4d` |
| 38 | `def` | [equivOfAlgebraic'](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/equivofalgebraic--0df0c41e91e0822fcd497e4a.md) | 453 | `declaration-track:0df0c41e91e0822fcd497e4ac615097ce7fc1805419c25c301b2321cb7dd3937` |
| 39 | `def` | [equivOfAlgebraic](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/equivofalgebraic--889ddad076bfa6349ccde6c8.md) | 467 | `declaration-track:889ddad076bfa6349ccde6c8c9a11a9dd7ae8a83e32b582ed0790f79cdcda13f` |
| 40 | `def` | [equivOfEquivAux](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/equivofequivaux--9a3d4651ef042acc91ab9ae1.md) | 478 | `declaration-track:9a3d4651ef042acc91ab9ae11d8bdb5e7dae09cd22bb5b457edbb7c2fd41906b` |
| 41 | `def` | [equivOfEquiv](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/equivofequiv--3b6421675794f3f4cdcc69bb.md) | 503 | `declaration-track:3b6421675794f3f4cdcc69bbd71fb776ce6b0f7ffaa4ea3307a63f9b0cfbefbd` |
| 42 | `theorem` | [equivOfEquiv_comp_algebraMap](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/equivofequiv-comp-algebramap--f74ea606ed12853c40432046.md) | 508 | `result-track:f74ea606ed12853c40432046e1c0d111cf6ac22511012f7472e81303d2ac6b7a` |
| 43 | `theorem` | [equivOfEquiv_algebraMap](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/equivofequiv-algebramap--e245e9edd4679b17c3e31b1d.md) | 514 | `result-track:e245e9edd4679b17c3e31b1dd5d7f00ee50ef3cfed4f0d704e06c8665d13bd34` |
| 44 | `theorem` | [equivOfEquiv_symm_algebraMap](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/equivofequiv-symm-algebramap--2c0f6e2430736b3cf9cf45f4.md) | 520 | `result-track:2c0f6e2430736b3cf9cf45f40bd06501fefd41e657ba438ab25aca7f824fda0b` |
| 45 | `theorem` | [equivOfEquiv_symm_comp_algebraMap](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/equivofequiv-symm-comp-algebramap--094917fe965c5e663302c1b4.md) | 526 | `result-track:094917fe965c5e663302c1b4b5daa6224ba7195cb6e0f5ec9a982f86e6cccff0` |
| 46 | `theorem` | [Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly](../../../../mathematics/Algebra/Basic/Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.lean/declarations/algebra-isalgebraic-range-eval-eq-rootset-minpoly--060061c5ecc27d249889a3eb.md) | 539 | `result-track:060061c5ecc27d249889a3ebf6625939f5b45d410834baecd8d509a225cec498` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
