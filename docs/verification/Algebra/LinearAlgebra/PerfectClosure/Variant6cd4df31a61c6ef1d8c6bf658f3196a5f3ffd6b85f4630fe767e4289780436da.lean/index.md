# Verification target: GRWTSK.Algebra.LinearAlgebra.PerfectClosure.Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aac32de89983bd66c6ef5b7bafef52ea89825224",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aac32de89983bd66c6ef5b7bafef52ea89825224`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.IntermediateField` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PurelyInseparable.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [perfectClosure](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/perfectclosure--4e420d665422a393f7be6a4b.md) | 65 | `declaration-track:4e420d665422a393f7be6a4bb4671099583d77db0f157b1d9033ba685df1fd1b` |
| 2 | `theorem` | [mem_perfectClosure_iff](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/mem-perfectclosure-iff--64a957aa7a94311eca433727.md) | 75 | `result-track:64a957aa7a94311eca433727a820fb48c3982e1069f3d139bb7a632e6f753e78` |
| 3 | `theorem` | [mem_perfectClosure_iff_pow_mem](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/mem-perfectclosure-iff-pow-mem--b9cb678e0d708ba7def5d88f.md) | 78 | `result-track:b9cb678e0d708ba7def5d88f67f12141f4e089f145d13247b74ebafd55fc8b25` |
| 4 | `theorem` | [mem_perfectClosure_iff_natSepDegree_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/mem-perfectclosure-iff-natsepdegree-eq-one--e3256a11361d1d5fc75a1f03.md) | 84 | `result-track:e3256a11361d1d5fc75a1f03b626b254815416f7103433bb3b3d45038cdc0b3c` |
| 5 | `theorem` | [isPurelyInseparable_iff_perfectClosure_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/ispurelyinseparable-iff-perfectclosure-eq-top--fd1e2d6c00c47f528d8e2818.md) | 90 | `result-track:fd1e2d6c00c47f528d8e2818b45a1622b8719a5f1eec307abca4f823e2473d5e` |
| 6 | `instance` | [perfectClosure.isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/perfectclosure-ispurelyinseparable--aeb110d1a93d335757584fa8.md) | 98 | `declaration-track:aeb110d1a93d335757584fa8c5adf7220593a6813297da18640ccee04667dbf1` |
| 7 | `instance` | [perfectClosure.isAlgebraic](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/perfectclosure-isalgebraic--6eb1f0c2852364e14d55cfca.md) | 103 | `declaration-track:6eb1f0c2852364e14d55cfca8149d007c44ed371299fd5d4d54fa0077153088a` |
| 8 | `theorem` | [perfectClosure.eq_bot_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/perfectclosure-eq-bot-of-isseparable--1f7435e7f8ac376922117355.md) | 109 | `result-track:1f7435e7f8ac3769221173552c6eaa375cdecde2893a71ed8edfb515576ef21a` |
| 9 | `theorem` | [le_perfectClosure](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/le-perfectclosure--83e221ccad9513ab942ab83a.md) | 115 | `result-track:83e221ccad9513ab942ab83a9657c39bf08e2020c4fb016164b4b49fbb1a264a` |
| 10 | `theorem` | [le_perfectClosure_iff](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/le-perfectclosure-iff--46cca096f94c27e68dca01a2.md) | 124 | `result-track:46cca096f94c27e68dca01a2e46db772445e666bdc4d966e1a6a76bb567d9837` |
| 11 | `theorem` | [separableClosure_inf_perfectClosure](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/separableclosure-inf-perfectclosure--12aca9c703213f70464adebf.md) | 131 | `result-track:12aca9c703213f70464adebf98341a5a8917d0cc2e6696601297f499701ddd1d` |
| 12 | `theorem` | [map_mem_perfectClosure_iff](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/map-mem-perfectclosure-iff--fccb75489585d65f3b07aa83.md) | 142 | `result-track:fccb75489585d65f3b07aa83069cea5d1fb5fe779426e79821da5e3f177c6ce3` |
| 13 | `theorem` | [perfectClosure.comap_eq_of_algHom](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/perfectclosure-comap-eq-of-alghom--7c36cf71add61fef37214955.md) | 152 | `result-track:7c36cf71add61fef372149551c93fdcbcc6ddb9e5998fff9d862ada4c046898a` |
| 14 | `theorem` | [perfectClosure.map_le_of_algHom](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/perfectclosure-map-le-of-alghom--33be7737788d345633630fbe.md) | 159 | `result-track:33be7737788d345633630fbe02344cf2bddbb52011e754eb57f7bb117585ead0` |
| 15 | `theorem` | [perfectClosure.map_eq_of_algEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/perfectclosure-map-eq-of-algequiv--155f3f1e4ba7a3d5936b23fb.md) | 165 | `result-track:155f3f1e4ba7a3d5936b23fbc8ba296d448ead0572ac6a9cbc73b01787e7f6e0` |
| 16 | `def` | [perfectClosure.algEquivOfAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/perfectclosure-algequivofalgequiv--8a924e3e737abf3912048e99.md) | 172 | `declaration-track:8a924e3e737abf3912048e991f8868f29a66583a8b8da50fa0fbeb6cbefdfe56` |
| 17 | `instance` | [perfectClosure.perfectRing](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/perfectclosure-perfectring--cc09eb1b94f4882125499398.md) | 183 | `declaration-track:cc09eb1b94f488212549939822fd2c368abefb9aa0003623c583e30bc07a0a4f` |
| 18 | `instance` | [perfectClosure.perfectField](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/perfectclosure-perfectfield--aaf7422a12cf13db61cd6b30.md) | 195 | `declaration-track:aaf7422a12cf13db61cd6b3091afe6c1c890fb212ee7d69732b2b2a4485095cf` |
| 19 | `theorem` | [isPurelyInseparable_adjoin_simple_iff_natSepDegree_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/ispurelyinseparable-adjoin-simple-iff-natsepdegree-eq-one--307fd753a29f58b6a7e76d3e.md) | 204 | `result-track:307fd753a29f58b6a7e76d3e8ae7128169e0ac243bbafcbc0991b2529bea4ef7` |
| 20 | `theorem` | [isPurelyInseparable_adjoin_simple_iff_pow_mem](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/ispurelyinseparable-adjoin-simple-iff-pow-mem--cae4586195718c9a08dae015.md) | 210 | `result-track:cae4586195718c9a08dae015fb88b0d204903af818598d8c23ce641f3e8627e2` |
| 21 | `theorem` | [isPurelyInseparable_adjoin_iff_pow_mem](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/ispurelyinseparable-adjoin-iff-pow-mem--ff4d445c79faa3f34d02a9ab.md) | 216 | `result-track:ff4d445c79faa3f34d02a9abefeb175f1a5393c07e2c0f691d678a7f84985481` |
| 22 | `instance` | [isPurelyInseparable_sup](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/ispurelyinseparable-sup--968eb8a1881969d8596067e9.md) | 222 | `declaration-track:968eb8a1881969d8596067e92eb9652d368406cc701593dea50fd5966f1de286` |
| 23 | `instance` | [isPurelyInseparable_iSup](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/ispurelyinseparable-isup--13e46800d0e4dc9163d182c3.md) | 229 | `declaration-track:13e46800d0e4dc9163d182c3aa28f80217056ccc6bdb0b4914309d360f42832c` |
| 24 | `theorem` | [adjoin_eq_adjoin_pow_expChar_pow_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/adjoin-eq-adjoin-pow-expchar-pow-of-isseparable--9a46e45dca01c02c7158f822.md) | 237 | `result-track:9a46e45dca01c02c7158f82265827c8c0f4eb0f3c27e65947ca98023bc2d267a` |
| 25 | `theorem` | [adjoin_eq_adjoin_pow_expChar_pow_of_isSeparable'](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/adjoin-eq-adjoin-pow-expchar-pow-of-isseparable--121621002383e068463a13ce.md) | 258 | `result-track:121621002383e068463a13ced3d45283899cac2cab1e8881860db054fe0ab80d` |
| 26 | `theorem` | [adjoin_eq_adjoin_pow_expChar_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/adjoin-eq-adjoin-pow-expchar-of-isseparable--d0454a8d81c390b230fed559.md) | 266 | `result-track:d0454a8d81c390b230fed5590875eb5c90cb4117dcf791e55b08e6345fb2da18` |
| 27 | `theorem` | [adjoin_eq_adjoin_pow_expChar_of_isSeparable'](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/adjoin-eq-adjoin-pow-expchar-of-isseparable--27900b99bcd7b76d893d3ffe.md) | 272 | `result-track:27900b99bcd7b76d893d3ffee8872e260598f94830a4f02c642a8a0644b981a3` |
| 28 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_pow_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/adjoin-simple-eq-adjoin-pow-expchar-pow-of-isseparable--e1bb3567e1bb5ef9acaeec4e.md) | 280 | `result-track:e1bb3567e1bb5ef9acaeec4e3a01606a43007c694bd2af29780454531195ea05` |
| 29 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_pow_of_isSeparable'](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/adjoin-simple-eq-adjoin-pow-expchar-pow-of-isseparable--a227a222551c051fabdc8ed0.md) | 287 | `result-track:a227a222551c051fabdc8ed0557ee90748e0858add3736aac69a63e44881cf25` |
| 30 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/adjoin-simple-eq-adjoin-pow-expchar-of-isseparable--355405549f7e5de8d35438e4.md) | 294 | `result-track:355405549f7e5de8d35438e4eeb9004bdf9eceaaf2da158bc5332d7a0f11de17` |
| 31 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_of_isSeparable'](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/adjoin-simple-eq-adjoin-pow-expchar-of-isseparable--7a8acc21b2f5a9570003857a.md) | 300 | `result-track:7a8acc21b2f5a9570003857ab9bef7759e38128978c7c666ee58947cf48e8617` |
| 32 | `theorem` | [Field.span_map_pow_expChar_pow_eq_top_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/field-span-map-pow-expchar-pow-eq-top-of-isseparable--1800ce030676566b12be681a.md) | 313 | `result-track:1800ce030676566b12be681af4e542ac802500786d9349b98307b5f293c192cc` |
| 33 | `theorem` | [LinearIndependent.map_pow_expChar_pow_of_fd_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/linearindependent-map-pow-expchar-pow-of-fd-isseparable--338eb32955beec470dbbed0f.md) | 334 | `result-track:338eb32955beec470dbbed0f2467e0bf8e06daef31d66576b8c33278b448d89f` |
| 34 | `theorem` | [LinearIndependent.map_pow_expChar_pow_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/linearindependent-map-pow-expchar-pow-of-isseparable--df0fd71a8b4e483c9e15bf3c.md) | 352 | `result-track:df0fd71a8b4e483c9e15bf3cf7c4b30483cb56ed88fa3f215ae2cb6bdc8bd92a` |
| 35 | `theorem` | [LinearIndependent.map_pow_expChar_pow_of_isSeparable'](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/linearindependent-map-pow-expchar-pow-of-isseparable--6e70202f84f3ce7b3811c62c.md) | 370 | `result-track:6e70202f84f3ce7b3811c62cd80f6c1711fa82f017d42a66023b4755b7dfc42c` |
| 36 | `def` | [Basis.mapPowExpCharPowOfIsSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/basis-mappowexpcharpowofisseparable--18fdd6b3420ebcac4540e8eb.md) | 384 | `declaration-track:18fdd6b3420ebcac4540e8ebe830437a9e215ad87b21cbd76ebcbe2675c7baf8` |
| 37 | `theorem` | [minpoly.iterateFrobenius_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/minpoly-iteratefrobenius-of-isseparable--07131b8e9c0e852645495c13.md) | 391 | `result-track:07131b8e9c0e852645495c131c8898d74f6a5685bf052b8441c06b170f2e7d05` |
| 38 | `theorem` | [minpoly.frobenius_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/minpoly-frobenius-of-isseparable--f5983f04426a8f730f100ac5.md) | 411 | `result-track:f5983f04426a8f730f100ac5a8bea68a4ad13cc482a5a7bf948c614385cce66a` |
| 39 | `theorem` | [perfectField_of_perfectClosure_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/perfectfield-of-perfectclosure-eq-bot--6298c76fa9cc4cf017c4e102.md) | 417 | `result-track:6298c76fa9cc4cf017c4e1023cadc878b052386a6fef58e08d545b596e7bc2a2` |
| 40 | `theorem` | [perfectField_of_isSeparable_of_perfectField_top](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/perfectfield-of-isseparable-of-perfectfield-top--248e96dcefbe72022009f6fc.md) | 430 | `result-track:248e96dcefbe72022009f6fc658885d9d6edf73bf45bbe494d6bb244f4222844` |
| 41 | `theorem` | [perfectField_iff_isSeparable_algebraicClosure](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant6cd4df31a61c6ef1d8c6bf658f3196a5f3ffd6b85f4630fe767e4289780436da.lean/declarations/perfectfield-iff-isseparable-algebraicclosure--5945f19cf5a68b432fd56211.md) | 436 | `result-track:5945f19cf5a68b432fd562113ae80ae1fd73ea064c08dd3b29f5edc67e64964b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
