# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.EstimateMobiusSplit.Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1683c79a6cedc9e0f25351e9c58d3f3e68602af4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1683c79a6cedc9e0f25351e9c58d3f3e68602af4`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedPrimeWeight](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/declarations/closedprimeweight--22d2b3f23cf4e5b2f90e67a4.md) | 31 | `declaration-track:22d2b3f23cf4e5b2f90e67a4adc566dcd4c7d654147183fe130bd9ea402ebaf5` |
| 2 | `def` | [mobiusLogTerm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/declarations/mobiuslogterm--655d2759a6a230da098bcebd.md) | 37 | `declaration-track:655d2759a6a230da098bcebdeddffa90505af0a64eae47c868e1e33222ddb87e` |
| 3 | `theorem` | [vonMangoldt_eq_mobius_log_convolution](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/declarations/vonmangoldt-eq-mobius-log-convolution--729eb50e575040d692d47ac5.md) | 42 | `result-track:729eb50e575040d692d47ac5a2bd68a20472f959d3af17644099866dc102d99a` |
| 4 | `def` | [mobiusClosedPrimeMoment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/declarations/mobiusclosedprimemoment--831e548aad24b245411c0525.md) | 56 | `declaration-track:831e548aad24b245411c052564a22a87e7c7d49330164e332aef48a5c3e993e7` |
| 5 | `theorem` | [closedPrimeMoment_eq_mobius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/declarations/closedprimemoment-eq-mobius--903f71f9f09505766e1bbff2.md) | 62 | `result-track:903f71f9f09505766e1bbff28db4e6244723054c50fa372e0829f8568f65942f` |
| 6 | `def` | [smallDivisorMobiusMoment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/declarations/smalldivisormobiusmoment--c09937b0ca91ba84491cb07e.md) | 76 | `declaration-track:c09937b0ca91ba84491cb07ea1224c0c3186998b04533a6830e35a24296dd7ba` |
| 7 | `def` | [largeDivisorMobiusMoment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/declarations/largedivisormobiusmoment--e10b506adc7557ac94222875.md) | 84 | `declaration-track:e10b506adc7557ac94222875933556a883c887adea43c729cb8e409484bf34d6` |
| 8 | `theorem` | [mobiusClosedPrimeMoment_eq_small_add_large](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/declarations/mobiusclosedprimemoment-eq-small-add-large--2e92ff97e876ee60c00671b8.md) | 93 | `result-track:2e92ff97e876ee60c00671b83e8b888c2b5954678192f88e311e09100417b7fc` |
| 9 | `theorem` | [closedPrimeMoment_eq_small_add_large](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/declarations/closedprimemoment-eq-small-add-large--234eeb82df07e2598a6239e5.md) | 115 | `result-track:234eeb82df07e2598a6239e5654513be1c471fee6eb29f429aa9fe567bed8184` |
| 10 | `theorem` | [primeSmoothDefect_eq_mobius_split](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/declarations/primesmoothdefect-eq-mobius-split--b3bfd5cc1250569905188fe3.md) | 125 | `result-track:b3bfd5cc1250569905188fe30d12c51cad291d03cd5df286e2fd86ca41956acd` |
| 11 | `theorem` | [largeDivisorMobiusMoment_boundary_excluded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/declarations/largedivisormobiusmoment-boundary-excluded--7fdba7d65848dc05d50c085a.md) | 137 | `result-track:7fdba7d65848dc05d50c085a3f301c18965c384259f567c5be72b0f8d5de7695` |
| 12 | `def` | [MobiusSplitCheckpoint](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/declarations/mobiussplitcheckpoint--b1697c61e1096d0745a03f9c.md) | 146 | `declaration-track:b1697c61e1096d0745a03f9cc4d661ccd2008e4d30a89fb57bb481b2d13b42c2` |
| 13 | `theorem` | [mobius_split_checkpoint](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f.lean/declarations/mobius-split-checkpoint--8fb62d4db82d9d3dab7d6193.md) | 157 | `result-track:8fb62d4db82d9d3dab7d61938ed961fce5059ee1cc756fecda1651ed1e0d704f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
