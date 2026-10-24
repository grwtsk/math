# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5180a2143be459a75f3cfc624ea7f3474d4f175e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5180a2143be459a75f3cfc624ea7f3474d4f175e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.SmoothFramedSurgery` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrientedKnotFillingTheory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/orientedknotfillingtheory--eaf3f96d5d4c4e61bac9b0e7.md) | 32 | `declaration-track:eaf3f96d5d4c4e61bac9b0e7d8b7b7b88097661de49cdda17e7f1c6ec1710022` |
| 2 | `abbrev` | [FillingHomeomorphism](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/fillinghomeomorphism--463fc31cb151ccfa1a65f481.md) | 73 | `declaration-track:463fc31cb151ccfa1a65f48177cc576b73237e3ce3413793708cd0fbdb4284ef` |
| 3 | `def` | [FillingsHomeomorphic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/fillingshomeomorphic--d5ff6bd17415ba6544482b8c.md) | 78 | `declaration-track:d5ff6bd17415ba6544482b8cc858e0c41eb01f12a0879e5649a05d7805ae90b8` |
| 4 | `def` | [PurelyCosmeticPair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/purelycosmeticpair--3b1a398ddfa2dbd0fd1c4fc5.md) | 83 | `declaration-track:3b1a398ddfa2dbd0fd1c4fc52d6a7f6f57e915e261575831110c0795b831451e` |
| 5 | `def` | [KnotCounterexample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/knotcounterexample--792d47578ba8779f5a26185d.md) | 88 | `declaration-track:792d47578ba8779f5a26185d6cfae03bdf7179fed31589c297809c28888996b9` |
| 6 | `def` | [ConjectureFalse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/conjecturefalse--80a75a80a4cfc813279f2ad6.md) | 92 | `declaration-track:80a75a80a4cfc813279f2ad692b71bd8b081812e0b2fe08396cac81d533b5c72` |
| 7 | `def` | [MundanePair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/mundanepair--bbe3735c33f63149093333d6.md) | 99 | `declaration-track:bbe3735c33f63149093333d635722b99d5286283e3f511e0095459752af15289` |
| 8 | `def` | [ExoticPair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/exoticpair--2f220646bb677c35d36936ac.md) | 105 | `declaration-track:2f220646bb677c35d36936ace9991bcf375f0d83d3cc8c57d3a233e2c47374e8` |
| 9 | `def` | [OppositeCoefficients](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/oppositecoefficients--da82abb5417802f883525612.md) | 110 | `declaration-track:da82abb5417802f8835256123d8eb47d6ed01accb4bb8cd9469c11f1cc60332a` |
| 10 | `def` | [NiWuCongruence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/niwucongruence--263536386ac7323931fb4f48.md) | 116 | `declaration-track:263536386ac7323931fb4f480eb2c942ed7e97f58fb883f00c226e637492d4bc` |
| 11 | `def` | [FixedKnotResidualProfile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/fixedknotresidualprofile--72566e3289d551e27d006b8d.md) | 123 | `declaration-track:72566e3289d551e27d006b8dadb5d79251925f73add9263becf78bb86bbdaa8f` |
| 12 | `def` | [ResidualKnotProfile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/residualknotprofile--daeb895bb7ede31f87b72e80.md) | 131 | `declaration-track:daeb895bb7ede31f87b72e802927cec78fc400ce70ce6724aa16f3b5b715a5b3` |
| 13 | `def` | [FixedKnotResidualCounterexample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/fixedknotresidualcounterexample--5345ab3672bb3fb4ec9cb9cb.md) | 135 | `declaration-track:5345ab3672bb3fb4ec9cb9cbaf6402e02e9aa3198946d006785328e922eee8b9` |
| 14 | `def` | [ResidualCounterexample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/residualcounterexample--07f3c94c5eb95cd78898f216.md) | 143 | `declaration-track:07f3c94c5eb95cd78898f21698cd9d28e3a575939a49ce431cf024218fe167ca` |
| 15 | `theorem` | [plusTwo_opposite_minusTwo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/plustwo-opposite-minustwo--1e4bfe3cda1a45d462335db9.md) | 150 | `result-track:1e4bfe3cda1a45d462335db92fe5e2c3a7c36a570eb70cd9c77a85b639600e7a` |
| 16 | `theorem` | [residualCounterexample_is_cosmetic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/residualcounterexample-is-cosmetic--041088285428cde9ce828ccf.md) | 157 | `result-track:041088285428cde9ce828ccf74218f3dcfd16114e355c5fd0b0d0c2df1236a1b` |
| 17 | `theorem` | [fixedKnotResidualCounterexample_is_cosmetic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/fixedknotresidualcounterexample-is-cosmetic--8a76841df81af4be8abd3a6a.md) | 164 | `result-track:8a76841df81af4be8abd3a6a8417626c8e708e38228328f9c2e7eb792dccbc0b` |
| 18 | `theorem` | [fixedKnotResidualCounterexample_is_knotCounterexample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/fixedknotresidualcounterexample-is-knotcounterexample--547b1e9033ad67ff7456fc07.md) | 171 | `result-track:547b1e9033ad67ff7456fc07da2a923892accf77466ee3231b41e4aea1458ea2` |
| 19 | `theorem` | [residualCounterexample_is_knotCounterexample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/residualcounterexample-is-knotcounterexample--2961a7cb07306082d82c37a6.md) | 179 | `result-track:2961a7cb07306082d82c37a6b8a4fd0292951eebd9b24f4ef8c20bdac1b2c975` |
| 20 | `theorem` | [residualCounterexample_implies_conjectureFalse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/declarations/residualcounterexample-implies-conjecturefalse--eca0df04772490d7d6f25d8c.md) | 186 | `result-track:eca0df04772490d7d6f25d8c2d9289b535cfee79cc2a63ae28a108a4665ca7d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
