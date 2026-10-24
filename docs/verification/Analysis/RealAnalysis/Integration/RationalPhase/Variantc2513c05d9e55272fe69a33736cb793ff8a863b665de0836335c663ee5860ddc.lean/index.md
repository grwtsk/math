# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RationalPhase.Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35c70576488684af38a580bc1a28b026f32c76e1",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35c70576488684af38a580bc1a28b026f32c76e1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNumbers` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PlaneCode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/planecode--debc0f916b6e6685b034ebe2.md) | 27 | `declaration-track:debc0f916b6e6685b034ebe2f3d60f1f79ba00baeac8a794c707238dd1d35297` |
| 2 | `def` | [encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/encode--62558776b50778f3442f6482.md) | 37 | `declaration-track:62558776b50778f3442f6482dce6f7054c388737976e9f7eed071f54676640da` |
| 3 | `def` | [interpret](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/interpret--dbcb85b73c9cc5a2d1af8ec6.md) | 41 | `declaration-track:dbcb85b73c9cc5a2d1af8ec60c28ac34482884885d59156e166ec9d3a62857f6` |
| 4 | `def` | [Supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/supported--f7b7aded881faac2445a73e6.md) | 45 | `declaration-track:f7b7aded881faac2445a73e61480d2a0485f110ac1ef9e6e17fa3d236e311507` |
| 5 | `def` | [coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/coefficients--49ddc18b9d5ea8afbb3a5ddb.md) | 48 | `declaration-track:49ddc18b9d5ea8afbb3a5ddb9ab060381e7ebdd0f11d488e4e9cec42778e41f0` |
| 6 | `def` | [operation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/operation--3122bf992443bffea0990dac.md) | 52 | `declaration-track:3122bf992443bffea0990dac4cf39b09629fb18b77f589cd35ce8c3ae93686b3` |
| 7 | `def` | [move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/move--6692aece217255af30283f8e.md) | 57 | `declaration-track:6692aece217255af30283f8ebc6a5288a07361283f7c05662926349140014bd9` |
| 8 | `theorem` | [operation_eq_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/operation-eq-coefficients--8c72e19f1e93f36f605825a4.md) | 64 | `result-track:8c72e19f1e93f36f605825a4825678e668ca313a65e6e90a3bfced562880033c` |
| 9 | `theorem` | [interpret_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/interpret-encode--826083a67cc4149e48d4fa3e.md) | 73 | `result-track:826083a67cc4149e48d4fa3e0e2ca45b978bd46b06fa7085f9974bc598e6c75c` |
| 10 | `theorem` | [interpret_move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/interpret-move--7f390dbc140ef2f08dc7870b.md) | 77 | `result-track:7f390dbc140ef2f08dc7870b0e5c367a270c0538c145dab9a85b9f85e68afd30` |
| 11 | `theorem` | [interpret_move_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/interpret-move-encode--fcfa2a011903be791271c8bb.md) | 83 | `result-track:fcfa2a011903be791271c8bb31840112998f56902ece644dcccad26f07de86c0` |
| 12 | `def` | [quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/quadratic--a436154e3f871d090a4f2881.md) | 88 | `declaration-track:a436154e3f871d090a4f28819cb79f8318a4ee0bfba80d645be92cbde9fc7871` |
| 13 | `theorem` | [operation_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/operation-quadratic--4f78dc50b176637986931ab5.md) | 91 | `result-track:4f78dc50b176637986931ab51cda5788e3f52fc08055301b6f241d7657482b08` |
| 14 | `theorem` | [move_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/move-quadratic--6b9816ef06cc01db5b0d40f2.md) | 99 | `result-track:6b9816ef06cc01db5b0d40f294f98608a4b08d6613f3d8ee0604edef99c6b8f1` |
| 15 | `def` | [reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/reflection--cca60b2aeb427b4b018a30a1.md) | 104 | `declaration-track:cca60b2aeb427b4b018a30a18acf00aeca85ed6b2b94d42001c65b576a57d712` |
| 16 | `theorem` | [reflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/reflection-sq--bb8a62389b5795620fbae74a.md) | 108 | `result-track:bb8a62389b5795620fbae74aad84ebd2767e1e1aab5e06f9eb75c6eefb59c5d2` |
| 17 | `theorem` | [reflection_reversal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/reflection-reversal--6ebe209ac87b5cdcf3566006.md) | 112 | `result-track:6ebe209ac87b5cdcf3566006dbc45eae16e061a717b6d0d667833910dcae3304` |
| 18 | `theorem` | [operation_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/operation-inverse--449d7b1e13c06553f83d78e5.md) | 118 | `result-track:449d7b1e13c06553f83d78e59a73a14d899211e0389a2344c8b4742e5280c500` |
| 19 | `def` | [phaseReflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/phasereflection--3d679c3a242d72b887b87574.md) | 125 | `declaration-track:3d679c3a242d72b887b875744111b6d316968012d6c7b5678e927701871bd57c` |
| 20 | `theorem` | [phaseReflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/phasereflection-sq--e6f8d660a2dab0e06e7bd58a.md) | 129 | `result-track:e6f8d660a2dab0e06e7bd58a978d5ccd6bb953899bb5b1f9b50f730f2b97ed2b` |
| 21 | `theorem` | [coefficients_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/coefficients-one--a2add2a86690ae73df775843.md) | 139 | `result-track:a2add2a86690ae73df7758434a16a51645133f634294e6c278d03175141cd707` |
| 22 | `theorem` | [operation_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/operation-one--f6419414d24be506086ed6f0.md) | 143 | `result-track:f6419414d24be506086ed6f07198d4bea03db160cbe8e25863dfe7560c4ebf18` |
| 23 | `def` | [IntegralAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/integralat--c386a19b80d1f479524ee539.md) | 157 | `declaration-track:c386a19b80d1f479524ee539b570f93284f102bdba69c943a8c03c6d0ca822de` |
| 24 | `def` | [IntegralVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/integralvector--34ed9fed9b28991c46173819.md) | 161 | `declaration-track:34ed9fed9b28991c461738199943884f8c803d3670007c6922b15a8f59b14410` |
| 25 | `theorem` | [operation_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/operation-integral--564c658ad482995d093c9983.md) | 164 | `result-track:564c658ad482995d093c9983717e9d866ee399c58bd222eeba8352ad36c20bd4` |
| 26 | `theorem` | [integralAt_iff_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/integralat-iff-preserves-integral--3eca98b9d1054f12cbb0da0f.md) | 181 | `result-track:3eca98b9d1054f12cbb0da0fa12e2b5e665244eaf45630466c69f035c6376d96` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/instance--fc87af72851592fca2f3c9ce.md) | 195 | `declaration-track:fc87af72851592fca2f3c9ceca89d724b1627c2ed11e7f20c8ad9fe1e67f5e8b` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/instance--61346d5b2933e0e3e822595b.md) | 196 | `declaration-track:61346d5b2933e0e3e822595b92f8126e19778578995384e9613881817a8bcd58` |
| 29 | `theorem` | [coefficients_two_rat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/coefficients-two-rat--a52b30c7121f64bbda0b36c5.md) | 199 | `result-track:a52b30c7121f64bbda0b36c5f2c86e0a55881a51938997bc24813090d9c8b556` |
| 30 | `theorem` | [phase_two_supported_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/phase-two-supported-five--a4669c7aaab9e5067019d719.md) | 204 | `result-track:a4669c7aaab9e5067019d719ca74e572d9988668c7d9850e2fd50b854cf75f59` |
| 31 | `theorem` | [coefficients_two_five_diagonal_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/coefficients-two-five-diagonal-norm--ecc586cf30d9b377918beed9.md) | 208 | `result-track:ecc586cf30d9b377918beed9bdcf7ccc7851fd2c912f292b61d763dd47161624` |
| 32 | `theorem` | [phase_two_five_not_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/phase-two-five-not-integral--1adcc5522f6b1f18f4e72fae.md) | 219 | `result-track:1adcc5522f6b1f18f4e72faed6f86bd7f1577a297ef65538e7c5f7742c947539` |
| 33 | `theorem` | [phase_two_not_supported_mod_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/phase-two-not-supported-mod-five--37d8e79477abf6a8eaebabc6.md) | 226 | `result-track:37d8e79477abf6a8eaebabc6d7fb5d09cc9330e2821764394cbceacb055f8d83` |
| 34 | `theorem` | [phase_one_not_supported_mod_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/phase-one-not-supported-mod-two--5d1e6594ebde184eb1c49582.md) | 231 | `result-track:5d1e6594ebde184eb1c495827b3b237724fa01bb2044fbede68f5e81d86c17c1` |
| 35 | `theorem` | [phase_one_supported_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/phase-one-supported-two--5db980f353084d05ff0eca17.md) | 236 | `result-track:5db980f353084d05ff0eca17541df4b139ae6b44bf6b871cb887ab386c87388b` |
| 36 | `theorem` | [phase_one_two_denominator_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/phase-one-two-denominator-norm--e15e3931091570bef57fc4fd.md) | 240 | `result-track:e15e3931091570bef57fc4fd3a41c4b90a79f7727dffd7f1a019055bfe2c03ba` |
| 37 | `theorem` | [phase_one_two_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/phase-one-two-integral--d2bade53bd4b05517de1579f.md) | 245 | `result-track:d2bade53bd4b05517de1579f14f0b5f9c6ce6272a00ee7f5c9ac003896241dec` |
| 38 | `theorem` | [phase_two_five_basis_nonintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/phase-two-five-basis-nonintegral--5c2017c05510eedc9189183b.md) | 252 | `result-track:5c2017c05510eedc9189183bc672970a65c6dc55c63a072154d27363cbcde717` |
| 39 | `theorem` | [phase_one_two_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RationalPhase/Variantc2513c05d9e55272fe69a33736cb793ff8a863b665de0836335c663ee5860ddc.lean/declarations/phase-one-two-preserves-integral--c260724ae3441e4bd271aba3.md) | 258 | `result-track:c260724ae3441e4bd271aba333417e8474052d4e93b9a14a049e37d927659d08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
