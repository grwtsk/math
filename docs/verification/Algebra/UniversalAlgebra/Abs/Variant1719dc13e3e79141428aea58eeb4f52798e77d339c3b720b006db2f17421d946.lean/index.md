# Verification target: GRWTSK.Algebra.UniversalAlgebra.Abs.Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e0e912f5ca40abcf554c8237489b380c28571c3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e0e912f5ca40abcf554c8237489b380c28571c3`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-one--f9476ef4c5c126bf239f8ff9.md) | 24 | `result-track:f9476ef4c5c126bf239f8ff96716373547b1a4dbcc0696fa7583d99454feb32d` |
| 2 | `theorem` | [abs_two](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-two--8799e46ac9ba2f3ca56dc0c8.md) | 29 | `result-track:8799e46ac9ba2f3ca56dc0c8fdb346a9686c236850d86acba9418fdeb0bc73e1` |
| 3 | `theorem` | [abs_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-mul--38bf440e7b7216506e94c34d.md) | 33 | `result-track:38bf440e7b7216506e94c34d56790eafba0d0bbac3efc30eed58366886f41c68` |
| 4 | `def` | [absHom](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abshom--4aa128540e8d7f9864dc9a27.md) | 41 | `declaration-track:4aa128540e8d7f9864dc9a2754e4ebfd798859cd06088bd3de2a36699f263506` |
| 5 | `theorem` | [abs_mul_abs_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-mul-abs-self--6a4190b5b70c2058958b4180.md) | 49 | `result-track:6a4190b5b70c2058958b41809244cb73f60e999330ad0e028c290ccc4c719d6e` |
| 6 | `theorem` | [abs_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-mul-self--7eb0a0c576ad3b50ac2cfcae.md) | 54 | `result-track:7eb0a0c576ad3b50ac2cfcae96d76a73336b9725cf6448784ffb5e4ec1eeaa46` |
| 7 | `theorem` | [abs_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-eq-self--818d762d02b680a873f92799.md) | 58 | `result-track:818d762d02b680a873f9279926f774f89166a13f80dca9f0dc36dd69a30a7896` |
| 8 | `theorem` | [abs_eq_neg_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-eq-neg-self--da842db327d3f636af2198c0.md) | 62 | `result-track:da842db327d3f636af2198c091b617adc471efd0d8392091e1739d066d11a503` |
| 9 | `theorem` | [abs_cases](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-cases--8da6ee015a698db87e21c809.md) | 68 | `result-track:8da6ee015a698db87e21c809dd8aee5b348f41782c11dffb463e6908bf666ef0` |
| 10 | `theorem` | [max_zero_add_max_neg_zero_eq_abs_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/max-zero-add-max-neg-zero-eq-abs-self--ed2448932080cc22ffdbc44a.md) | 78 | `result-track:ed2448932080cc22ffdbc44aceb1ded1d593485ff5c9b6e7a62605da5ec7c417` |
| 11 | `theorem` | [abs_eq_iff_mul_self_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-eq-iff-mul-self-eq--0dd7908ba17f5a1b1b6d9014.md) | 83 | `result-track:0dd7908ba17f5a1b1b6d9014f46d4d7e819813853478409dc881b99dc7435ef0` |
| 12 | `theorem` | [abs_lt_iff_mul_self_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-lt-iff-mul-self-lt--d07615d6db441323e2fcc276.md) | 88 | `result-track:d07615d6db441323e2fcc2769cdc2f351307939b71ec9b6b8ed3719d848e4d57` |
| 13 | `theorem` | [abs_le_iff_mul_self_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-le-iff-mul-self-le--c9de07466003a48cc1ff0171.md) | 93 | `result-track:c9de07466003a48cc1ff01710837f37cedba0cc76fb855a7a9bb36b75e5855e8` |
| 14 | `theorem` | [abs_le_one_iff_mul_self_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-le-one-iff-mul-self-le-one--0f2cc631e3da3623689399a1.md) | 98 | `result-track:0f2cc631e3da3623689399a16a9b3d251016a8e939fc4469c01e45eb507fe75a` |
| 15 | `theorem` | [abs_sub_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-sub-sq--e230721471448b9dc8e02517.md) | 108 | `result-track:e230721471448b9dc8e025173d740a69b16c4a2ccd4ff60f381865c1de190581` |
| 16 | `theorem` | [abs_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-dvd--14ad0dc3377e3bf24352f297.md) | 121 | `result-track:14ad0dc3377e3bf24352f297fddf4bf96d98ab412f58234c3ee1bc4624bbff3c` |
| 17 | `theorem` | [abs_dvd_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-dvd-self--6ea9084b91b4b49b3f7447e1.md) | 125 | `result-track:6ea9084b91b4b49b3f7447e138632174075b09fed01fdeb51f14cdb1960de269` |
| 18 | `theorem` | [dvd_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/dvd-abs--40175f40e882585d78697abb.md) | 130 | `result-track:40175f40e882585d78697abba03c45d4bc8f145dddbcb61fac43272d82dd796d` |
| 19 | `theorem` | [self_dvd_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/self-dvd-abs--9b3c8b9c63052ca373c129ea.md) | 134 | `result-track:9b3c8b9c63052ca373c129eab367e71b14cab39b806af8967ced50e00c13dcf8` |
| 20 | `theorem` | [abs_dvd_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant1719dc13e3e79141428aea58eeb4f52798e77d339c3b720b006db2f17421d946.lean/declarations/abs-dvd-abs--8612fa39c1421a7e34f11403.md) | 138 | `result-track:8612fa39c1421a7e34f11403d1ff05a876b1c88dcf22d4ed289763d722d2d2f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
