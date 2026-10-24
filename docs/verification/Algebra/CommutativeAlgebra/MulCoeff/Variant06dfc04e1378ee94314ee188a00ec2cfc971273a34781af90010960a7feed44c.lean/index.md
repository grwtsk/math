# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MulCoeff.Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e782c8f4ff838f3dde580b78a5635f6dd6ae4c72",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e782c8f4ff838f3dde580b78a5635f6dd6ae4c72`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Supported` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Truncated` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wittPolyProd](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/wittpolyprod--54e072063d3ca623be1e0e27.md) | 57 | `declaration-track:54e072063d3ca623be1e0e27ad0c4c6526099b32bfe6adc04b68fe056274e8b7` |
| 2 | `theorem` | [wittPolyProd_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/wittpolyprod-vars--ea419bcccb1ca6debd17e7c3.md) | 61 | `result-track:ea419bcccb1ca6debd17e7c3c4aa603266b5d8924c30ef3fc95db8dd6c7049b5` |
| 3 | `def` | [wittPolyProdRemainder](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/wittpolyprodremainder--e6b53c41c76e9481203c50f2.md) | 69 | `declaration-track:e6b53c41c76e9481203c50f23f6f1ac4936ba5d917033556acfc3dcdb6b3f757` |
| 4 | `theorem` | [wittPolyProdRemainder_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/wittpolyprodremainder-vars--8e0003eea7edde6daa122639.md) | 72 | `result-track:8e0003eea7edde6daa12263952bc6c0aec68c51ca907884def87fd700f962470` |
| 5 | `def` | [remainder](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/remainder--59e19984a31d62682465792c.md) | 94 | `declaration-track:59e19984a31d62682465792cadfc44e0f8cd076e59f6814437ea21dd4850d7c1` |
| 6 | `theorem` | [remainder_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/remainder-vars--ecf5336a97d7c49ee31fdf15.md) | 100 | `result-track:ecf5336a97d7c49ee31fdf15417f9682011afb4aaea998e0809efcd3581bebdf` |
| 7 | `def` | [polyOfInterest](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/polyofinterest--e223e0c8d04632d6d402303c.md) | 114 | `declaration-track:e223e0c8d04632d6d402303c8e8540d740048caac4af1522181aca1e4a265465` |
| 8 | `theorem` | [mul_polyOfInterest_aux1](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/mul-polyofinterest-aux1--415926ae7fdecafbe9180b7f.md) | 119 | `result-track:415926ae7fdecafbe9180b7ffb02ba2bbd857b6e720f1185e6f98bca3f8ba923` |
| 9 | `theorem` | [mul_polyOfInterest_aux2](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/mul-polyofinterest-aux2--943fb25ea8bf40bdd26f00b3.md) | 135 | `result-track:943fb25ea8bf40bdd26f00b34e038c16b7f37f746fc527e602978e085a6cfc06` |
| 10 | `theorem` | [mul_polyOfInterest_aux3](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/mul-polyofinterest-aux3--fc4ec54c9e982fa120d07271.md) | 142 | `result-track:fc4ec54c9e982fa120d072715a14370e0e2acf28036d385f8b17707650d8b0ba` |
| 11 | `theorem` | [mul_polyOfInterest_aux4](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/mul-polyofinterest-aux4--a75b57ff7b31af710c5843b8.md) | 175 | `result-track:a75b57ff7b31af710c5843b872086155306eafb64d4f7127110a69a846e9cb2d` |
| 12 | `theorem` | [mul_polyOfInterest_aux5](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/mul-polyofinterest-aux5--4cf40d7221b7ab33ea893f25.md) | 184 | `result-track:4cf40d7221b7ab33ea893f25cfd0439a270b831c1be0cbafdaf35ad5160946e6` |
| 13 | `theorem` | [mul_polyOfInterest_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/mul-polyofinterest-vars--aa74b271ae413ee79387e156.md) | 190 | `result-track:aa74b271ae413ee79387e1567342cdc404dc68b9a499af9193f3f658502f9198` |
| 14 | `theorem` | [polyOfInterest_vars_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/polyofinterest-vars-eq--f155c60cb3e3367d0cb856ac.md) | 198 | `result-track:f155c60cb3e3367d0cb856ac05e25054611b3ee9f987b102c0ddc629a732f086` |
| 15 | `theorem` | [polyOfInterest_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/polyofinterest-vars--d95959128a1caf51354db635.md) | 207 | `result-track:d95959128a1caf51354db635d842d47fa45385957ebaa681fab9c396244deb36` |
| 16 | `theorem` | [peval_polyOfInterest](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/peval-polyofinterest--1da931797dc1a3a7b3275af5.md) | 210 | `result-track:1da931797dc1a3a7b3275af51012986c00a20a93f75718024733f2f1bfbba764` |
| 17 | `theorem` | [peval_polyOfInterest'](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/peval-polyofinterest--2da9f309f0e2b416cfcec382.md) | 225 | `result-track:2da9f309f0e2b416cfcec38221e6d75f3c5929a71b6ee3deed65e2568ec0549e` |
| 18 | `theorem` | [nth_mul_coeff'](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/nth-mul-coeff--6e7c5a96dc4e5ab68f2372df.md) | 240 | `result-track:6e7c5a96dc4e5ab68f2372df54322e2bf34821297c2eedbe5f09af4f04859be1` |
| 19 | `theorem` | [nth_mul_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/nth-mul-coeff--f1f44f1caeb0bdec2062e676.md) | 272 | `result-track:f1f44f1caeb0bdec2062e676a82de648b1d20f136b08c28e46ea1359cb683e4e` |
| 20 | `def` | [nthRemainder](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/nthremainder--261824e4f855bcd5b2a6d0fd.md) | 288 | `declaration-track:261824e4f855bcd5b2a6d0fdf2862835527ed77a76e5654826e61280c4a64548` |
| 21 | `theorem` | [nthRemainder_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/MulCoeff/Variant06dfc04e1378ee94314ee188a00ec2cfc971273a34781af90010960a7feed44c.lean/declarations/nthremainder-spec--1d8c5a76f18151353fb3a5c1.md) | 291 | `result-track:1d8c5a76f18151353fb3a5c162f394eb8528f611d18367280d2282108f7d5611` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
