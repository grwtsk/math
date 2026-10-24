# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Mirror.Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94240d15ad08621feb4345f0eb398cccceaea1b1",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94240d15ad08621feb4345f0eb398cccceaea1b1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Reverse` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror--475d81a7373a62cdce071e5a.md) | 43 | `declaration-track:475d81a7373a62cdce071e5a262c7e10a443ba11ec262b6dd9193fe2fb995ec6` |
| 2 | `theorem` | [mirror_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-zero--5a7603576996736f0b31797d.md) | 47 | `result-track:5a7603576996736f0b31797d070769c2631601f70559b16a9ec7c11ca3679f52` |
| 3 | `theorem` | [mirror_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-monomial--b193c6d9138ed6ff08bcc428.md) | 49 | `result-track:b193c6d9138ed6ff08bcc428696f323ca4a23b3d8dff40fbda927d13aa695d16` |
| 4 | `theorem` | [mirror_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-c--e5b7d63f97b5934d95404cdb.md) | 57 | `result-track:e5b7d63f97b5934d95404cdb14a7fae7f65c43be0ecfd0000e6c54cb0b46fdd0` |
| 5 | `theorem` | [mirror_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-x--c697dfead5b4ae5de053b271.md) | 60 | `result-track:c697dfead5b4ae5de053b2718bd1ba8510a7ed2a1519debd74a3f26674a4220a` |
| 6 | `theorem` | [mirror_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-natdegree--8edbcd9a06fbc3d0cf2f5730.md) | 63 | `result-track:8edbcd9a06fbc3d0cf2f573019218f884ae0de948487f8b9be911c289942b206` |
| 7 | `theorem` | [mirror_natTrailingDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-nattrailingdegree--3ed2f7dfa7ea9e0982feccf4.md) | 71 | `result-track:3ed2f7dfa7ea9e0982feccf494c924d4fc7b231ae31f7a21ed33751216d96f49` |
| 8 | `theorem` | [coeff_mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/coeff-mirror--e60f61f732c3e13eb6bc71a7.md) | 77 | `result-track:e60f61f732c3e13eb6bc71a7d37d341334e07386cee497d90b007fa8e3e11067` |
| 9 | `theorem` | [mirror_eval_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-eval-one--ffd500b90d4f33a55116a0bd.md) | 95 | `result-track:ffd500b90d4f33a55116a0bdd80abe3a29775daf8a870d91e0feb5ff90bf9c61` |
| 10 | `theorem` | [mirror_mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-mirror--65fae86adc41469510e2b8ab.md) | 116 | `result-track:65fae86adc41469510e2b8ab457a8c95e3d9a12480d8efc2b7e2aa787612af48` |
| 11 | `theorem` | [mirror_involutive](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-involutive--313ce2f18d3e20c4d21a9db5.md) | 122 | `result-track:313ce2f18d3e20c4d21a9db58832bdce87a5983d37a9ab2e04f278945754628e` |
| 12 | `theorem` | [mirror_eq_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-eq-iff--281e57bcb8ef9e305b7a1b62.md) | 125 | `result-track:281e57bcb8ef9e305b7a1b623bb2cbd46cf2dc1a3c43c9bc87fced4804a4f44a` |
| 13 | `theorem` | [mirror_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-inj--cc327ff2f238ef80248bc0b6.md) | 129 | `result-track:cc327ff2f238ef80248bc0b6bb60810e2ab1f3e81eaa0abb3d12b77b097ef0fe` |
| 14 | `theorem` | [mirror_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-eq-zero--29f689aa9762057a2f2e4b30.md) | 133 | `result-track:29f689aa9762057a2f2e4b308c30be9e558e60ac667b24acc026e718b1840633` |
| 15 | `theorem` | [mirror_trailingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-trailingcoeff--a1327ffa57b1149e8c62cb2f.md) | 139 | `result-track:a1327ffa57b1149e8c62cb2f05539a60c16d7027a96f144c3ab4b13e6dd592ff` |
| 16 | `theorem` | [mirror_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-leadingcoeff--aaebbb6899f20d76e876a37b.md) | 144 | `result-track:aaebbb6899f20d76e876a37ba1ca079e686769360fe45e9fc798b837a052c9c0` |
| 17 | `theorem` | [coeff_mul_mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/coeff-mul-mirror--83badcae31441f9176fd233c.md) | 147 | `result-track:83badcae31441f9176fd233ceb09b1afa1b3d5162f9657d731b6935ef9467ab3` |
| 18 | `theorem` | [natDegree_mul_mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/natdegree-mul-mirror--7a9505ddfb6215ad72b3ccfc.md) | 159 | `result-track:7a9505ddfb6215ad72b3ccfca4a9c3c6f6b91baba246f71a232eaec36d417553` |
| 19 | `theorem` | [natTrailingDegree_mul_mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/nattrailingdegree-mul-mirror--3cd57874e43b19a6a0af6387.md) | 164 | `result-track:3cd57874e43b19a6a0af63876ccb63f14fe60ed0cb2a0b3d55fa4cfcf62febbc` |
| 20 | `theorem` | [mirror_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-neg--1c853c51c4b368a892fcc5b8.md) | 176 | `result-track:1c853c51c4b368a892fcc5b89b66362055796c1fb931a1ff601932580eeee5b9` |
| 21 | `theorem` | [mirror_mul_of_domain](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-mul-of-domain--70ccaf1c13ca5a45a7d2637e.md) | 181 | `result-track:70ccaf1c13ca5a45a7d2637e807b29b85529f6c128f7e4672043dbc7847a2ee7` |
| 22 | `theorem` | [mirror_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/mirror-smul--095b5f7e5e492f127dfa608f.md) | 190 | `result-track:095b5f7e5e492f127dfa608fc2f8822cf46298eb4d069c0aa561e81748f3ab93` |
| 23 | `theorem` | [irreducible_of_mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/Mirror/Variant58058d6b52bbb25362831870ed7afc8955fa1f7ff1d2e0c2074c92fa8b0703c4.lean/declarations/irreducible-of-mirror--444c4263574ade7d4b9e02bb.md) | 199 | `result-track:444c4263574ade7d4b9e02bb59f2ad6be3d79ba794c70db8716cf79f23b9462c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
