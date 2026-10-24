# Verification target: GRWTSK.Algebra.Algebraic.Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dcf46a9be16b35f1bb3c06e21313e0244d2f58a",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dcf46a9be16b35f1bb3c06e21313e0244d2f58a`.

Source path: `GRWTSK/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.IntegralNormalization` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAlgebraic](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic--5a3f3f5ce5c3ceb182942c4c.md) | 40 | `declaration-track:5a3f3f5ce5c3ceb182942c4c9117d8a92a07fcb72678f1efe5898dfbe8f775a8` |
| 2 | `def` | [Transcendental](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/transcendental--8bd14d3e33de9204488d0964.md) | 45 | `declaration-track:8bd14d3e33de9204488d0964463fce5766370c3050a44b907c9fe54ae0936a76` |
| 3 | `theorem` | [is_transcendental_of_subsingleton](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/is-transcendental-of-subsingleton--9c8d362deb8fa2dca91a1276.md) | 49 | `result-track:9c8d362deb8fa2dca91a127618d4ccfb992409dd4f813ea1c119dcb2a573378d` |
| 4 | `def` | [Subalgebra.IsAlgebraic](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/subalgebra-isalgebraic--dda7e566f9fb54c9dd61d422.md) | 57 | `declaration-track:dda7e566f9fb54c9dd61d42277c00417000107cab9a00913ebe2f3e743535326` |
| 5 | `def` | [Algebra.IsAlgebraic](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/algebra-isalgebraic--178ceec70b71caa6f7c2f730.md) | 65 | `declaration-track:178ceec70b71caa6f7c2f7301b3f1609a6a46870309b0e41ab3d9a8c738da384` |
| 6 | `theorem` | [Subalgebra.isAlgebraic_iff](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/subalgebra-isalgebraic-iff--caeff47be6b336736a6130e0.md) | 72 | `result-track:caeff47be6b336736a6130e09f2f26da42db3cf07b1f95902268d957bc169652` |
| 7 | `theorem` | [Algebra.isAlgebraic_iff](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/algebra-isalgebraic-iff--e73b733befbcd1eb4e78149c.md) | 83 | `result-track:e73b733befbcd1eb4e78149cc18de5cc642237df71d7d54e8300591cd9dab2bb` |
| 8 | `theorem` | [isAlgebraic_iff_not_injective](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-iff-not-injective--fa6e8670cef85350d2f2171b.md) | 88 | `result-track:fa6e8670cef85350d2f2171badb8102ea407a70439d20d5e4828855bc91341e7` |
| 9 | `theorem` | [IsIntegral.isAlgebraic](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isintegral-isalgebraic--2136963699299fe8f9aff5f8.md) | 104 | `result-track:2136963699299fe8f9aff5f80aadfe0b18798eafd03cc825b8d08c5d633e2b9b` |
| 10 | `theorem` | [isAlgebraic_zero](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-zero--ba9575c83f81a8ea7c0e9a8c.md) | 110 | `result-track:ba9575c83f81a8ea7c0e9a8c23155608a08b29da255f5edb8add37bab858e7f1` |
| 11 | `theorem` | [isAlgebraic_algebraMap](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-algebramap--09b541c43bf5a3106f6aafee.md) | 115 | `result-track:09b541c43bf5a3106f6aafee45c71d6bd4b97e01e38d82b4327a353ddb27f3d8` |
| 12 | `theorem` | [isAlgebraic_one](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-one--23eb1b1b19f1c80578c989de.md) | 119 | `result-track:23eb1b1b19f1c80578c989de5e52a4621302b3807e6ec446562d27df26ca9c6d` |
| 13 | `theorem` | [isAlgebraic_nat](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-nat--02d6af4a147dcc3903ba46dc.md) | 124 | `result-track:02d6af4a147dcc3903ba46dc07605d7574a56c162bf2cd6d8163d04807c1b7dc` |
| 14 | `theorem` | [isAlgebraic_int](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-int--7aeb7ae58ec63e98dde09f9b.md) | 129 | `result-track:7aeb7ae58ec63e98dde09f9bcec32885ef9b3160f2b99fababa5139cee9e19d7` |
| 15 | `theorem` | [isAlgebraic_rat](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-rat--c038e4c67b1baa85883bb081.md) | 134 | `result-track:c038e4c67b1baa85883bb081838ff137da1aa6e2f6495b4bb72ee9add2fa1d86` |
| 16 | `theorem` | [isAlgebraic_of_mem_rootSet](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-of-mem-rootset--bf804455867583e439c08975.md) | 140 | `result-track:bf804455867583e439c08975bc10c1116abd1fbe1b34d3b0501ddd5bd96f2b35` |
| 17 | `theorem` | [isAlgebraic_algebraMap_of_isAlgebraic](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-algebramap-of-isalgebraic--770caa758032fd5c8188febd.md) | 147 | `result-track:770caa758032fd5c8188febd1b15714118237e1ade9e447a4b9e0d0c407a8b28` |
| 18 | `theorem` | [isAlgebraic_algHom_of_isAlgebraic](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-alghom-of-isalgebraic--855b1c5d18bdedf4ef085a2f.md) | 154 | `result-track:855b1c5d18bdedf4ef085a2fc8c225ea1e7d85a167760d66e41697650d3a10b6` |
| 19 | `theorem` | [AlgEquiv.isAlgebraic](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/algequiv-isalgebraic--3b1f967df401c5328b6438db.md) | 161 | `result-track:3b1f967df401c5328b6438db9a47c9491cc3174e69b1704736bf692cd70e1a1e` |
| 20 | `theorem` | [AlgEquiv.isAlgebraic_iff](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/algequiv-isalgebraic-iff--76d3781e5e98db4056ad73f9.md) | 166 | `result-track:76d3781e5e98db4056ad73f99328938f3ed1348a2a9109e32aa0af19f8716924` |
| 21 | `theorem` | [isAlgebraic_algebraMap_iff](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-algebramap-iff--f3eea48c27a0d243df52e5fa.md) | 171 | `result-track:f3eea48c27a0d243df52e5fa9653d1d642557fe6f2c1d6603701eb3b67f31637` |
| 22 | `theorem` | [isAlgebraic_of_pow](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-of-pow--163f2d37bf11370b8bd566f3.md) | 177 | `result-track:163f2d37bf11370b8bd566f3a636c0f56cb80248e69d0c751897c45e4032d2e7` |
| 23 | `theorem` | [Transcendental.pow](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/transcendental-pow--2de529fc06da05654451db63.md) | 185 | `result-track:2de529fc06da05654451db6397b83dc27fd75474ef3476c78614ea3646adf012` |
| 24 | `theorem` | [isAlgebraic_iff_isIntegral](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-iff-isintegral--9b1ce62e8c302bc4ffa423a8.md) | 196 | `result-track:9b1ce62e8c302bc4ffa423a8ab6c0bca893078263ff67a21b5df38366ee0e827` |
| 25 | `theorem` | [Algebra.isAlgebraic_iff_isIntegral](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/algebra-isalgebraic-iff-isintegral--0bae54966249981e300e8504.md) | 203 | `result-track:0bae54966249981e300e8504b941bdebde0e62404273e0521b122cd28be610ce` |
| 26 | `theorem` | [isAlgebraic_of_larger_base_of_injective](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-of-larger-base-of-injective--57c5f01671cce94147f13f44.md) | 224 | `result-track:57c5f01671cce94147f13f4438e8acd252d6995d7d45a014c458cc5d14b3da28` |
| 27 | `theorem` | [Algebra.isAlgebraic_of_larger_base_of_injective](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/algebra-isalgebraic-of-larger-base-of-injective--2022e91fde948f5cd418bfbb.md) | 234 | `result-track:2022e91fde948f5cd418bfbb434833da070d2905810264d6310c9fe6997e75ac` |
| 28 | `theorem` | [isAlgebraic_of_larger_base](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-of-larger-base--fd21c6f7a1d7eda7c88c1a89.md) | 250 | `result-track:fd21c6f7a1d7eda7c88c1a89ca8c94cab76148fbf8d460617226f974022f52b8` |
| 29 | `theorem` | [Algebra.isAlgebraic_of_larger_base](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/algebra-isalgebraic-of-larger-base--24fcce500d90dbfb24fc2747.md) | 256 | `result-track:24fcce500d90dbfb24fc2747fc4ab3d1ca354130d755d3c848c768c55c6598ef` |
| 30 | `theorem` | [isAlgebraic_of_finite](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isalgebraic-of-finite--db0fdb45f4cf019f80439904.md) | 262 | `result-track:db0fdb45f4cf019f804399041b27a767b7314b025a70d43c1e3ce6b5f998ffa3` |
| 31 | `theorem` | [Algebra.isAlgebraic_of_finite](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/algebra-isalgebraic-of-finite--a2b837acfb614e6a9725fdd3.md) | 268 | `result-track:a2b837acfb614e6a9725fdd3321ef22b2a52f603b3453f567a1be86518607c5a` |
| 32 | `theorem` | [Algebra.isAlgebraic_trans](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/algebra-isalgebraic-trans--5bba7446d87d061b507fee9b.md) | 284 | `result-track:5bba7446d87d061b507fee9b5b5b2b3f491bd70f3e8252cc1411339b8baa8820` |
| 33 | `theorem` | [Algebra.IsAlgebraic.algHom_bijective](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/algebra-isalgebraic-alghom-bijective--d19b0f77da0cbd372c7c5eba.md) | 298 | `result-track:d19b0f77da0cbd372c7c5ebaed923703d9c1193937b919e997aca812d3ca8b9b` |
| 34 | `theorem` | [AlgHom.bijective](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/alghom-bijective--4b30554cea211ab0f7134bc7.md) | 310 | `result-track:4b30554cea211ab0f7134bc7855e4c82d6cd189ed766ed8970fa38be3c1e10ae` |
| 35 | `def` | [Algebra.IsAlgebraic.algEquivEquivAlgHom](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/algebra-isalgebraic-algequivequivalghom--ef86ae48c9019add673ff219.md) | 318 | `declaration-track:ef86ae48c9019add673ff2194a0a89d4d72e26b55dacbeba0d29e642f7fe1f73` |
| 36 | `def` | [algEquivEquivAlgHom](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/algequivequivalghom--6cd7e0c9b01c5c7df2fa0f77.md) | 333 | `declaration-track:6cd7e0c9b01c5c7df2fa0f773bb4d6d8a5dd2597883aaf1e64d9534130fca01d` |
| 37 | `theorem` | [exists_integral_multiple](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/exists-integral-multiple--43ebe585990a0d712e2267b6.md) | 344 | `result-track:43ebe585990a0d712e2267b62c44d6e447c236c4e05164b8f28dbe7ee8c5d979` |
| 38 | `theorem` | [IsIntegralClosure.exists_smul_eq_mul](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/isintegralclosure-exists-smul-eq-mul--8341a7780d58bbd613adff06.md) | 358 | `result-track:8341a7780d58bbd613adff06ba4a93fa81360d356ce505ebd4a15b5a3df13910` |
| 39 | `theorem` | [inv_eq_of_aeval_divX_ne_zero](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/inv-eq-of-aeval-divx-ne-zero--57a4dcb64a60b250a40e48ef.md) | 377 | `result-track:57a4dcb64a60b250a40e48efe3105c9e4592f5477075e6c814b29c072ad656f6` |
| 40 | `theorem` | [inv_eq_of_root_of_coeff_zero_ne_zero](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/inv-eq-of-root-of-coeff-zero-ne-zero--4f7515c9346dc0f05e337aaa.md) | 386 | `result-track:4f7515c9346dc0f05e337aaa7d585ddb59cf1963b4d16951223d8b7f7a2fb70b` |
| 41 | `theorem` | [Subalgebra.inv_mem_of_root_of_coeff_zero_ne_zero](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/subalgebra-inv-mem-of-root-of-coeff-zero-ne-zero--b46620a84716e74e183cc876.md) | 397 | `result-track:b46620a84716e74e183cc876065d8fbfcb303dbcbad663895ba6e61c26b59639` |
| 42 | `theorem` | [Subalgebra.inv_mem_of_algebraic](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/subalgebra-inv-mem-of-algebraic--32820c76d4169d84475cf62f.md) | 410 | `result-track:32820c76d4169d84475cf62f5d4f39f106a37fa2c943994b29c7cc83ce09ffe5` |
| 43 | `theorem` | [Subalgebra.isField_of_algebraic](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/subalgebra-isfield-of-algebraic--18719e813113c49445a94f8e.md) | 430 | `result-track:18719e813113c49445a94f8e46d51fd49047546a36c67cb564830d191972b36c` |
| 44 | `def` | [Polynomial.hasSMulPi](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/polynomial-hassmulpi--354bbf182ac72cda2993730b.md) | 446 | `declaration-track:354bbf182ac72cda2993730bb5bdf1a9aa1bf609a3b443558c62c1532e2aaea6` |
| 45 | `def` | [Polynomial.hasSMulPi'](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/polynomial-hassmulpi--dbb92252360930fbb2d3c038.md) | 453 | `declaration-track:dbb92252360930fbb2d3c0383b75e5f03f507003a1d856d26b21c090bbc74422` |
| 46 | `theorem` | [polynomial_smul_apply](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/polynomial-smul-apply--c345f89e7c44ec203a29d4ed.md) | 461 | `result-track:c345f89e7c44ec203a29d4ed70bdfe2cab775cca7a40f68de6f88787352f2473` |
| 47 | `theorem` | [polynomial_smul_apply'](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/polynomial-smul-apply--a9b2a1624829bc7a436d6326.md) | 467 | `result-track:a9b2a1624829bc7a436d63264625244a3925937910e2e085e5ff3ffdfa91ad56` |
| 48 | `def` | [Polynomial.algebraPi](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/polynomial-algebrapi--3db6c3d5e23f3ace6d7188d4.md) | 477 | `declaration-track:3db6c3d5e23f3ace6d7188d4f68f5dfaa945e82bc36552bcce0c345be03fd129` |
| 49 | `theorem` | [Polynomial.algebraMap_pi_eq_aeval](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/polynomial-algebramap-pi-eq-aeval--f2bd49e3926f33d0a4e40df9.md) | 504 | `result-track:f2bd49e3926f33d0a4e40df9183cae675135d636793c7af774bbc3e83ad284b6` |
| 50 | `theorem` | [Polynomial.algebraMap_pi_self_eq_eval](../../../../mathematics/Algebra/Algebraic/Variantf16238f56f8e214bd91c71afb238681517ff02e2429becddf81e4701c0713c91.lean/declarations/polynomial-algebramap-pi-self-eq-eval--ec1ccc989d5b21ad7c43987e.md) | 510 | `result-track:ec1ccc989d5b21ad7c43987edf8c2718847f7fefff08040deeaa4ec3e3aee9fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
