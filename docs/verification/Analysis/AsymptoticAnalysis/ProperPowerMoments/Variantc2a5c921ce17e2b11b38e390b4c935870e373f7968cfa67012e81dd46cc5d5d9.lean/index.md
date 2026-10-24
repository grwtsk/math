# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ProperPowerMoments.Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90ee1399b0164395e1a08331a349847d977fa1c1",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90ee1399b0164395e1a08331a349847d977fa1c1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/outerweight--efc9c2e8f40bb28479b5e99c.md) | 18 | `declaration-track:efc9c2e8f40bb28479b5e99c2fdad3f9e14dd9baca3bc41e7d38fe939318f18a` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/exponentweight--04cbf116bfcb018c1a424add.md) | 20 | `declaration-track:04cbf116bfcb018c1a424adda361816416ccb03c5168be9b076c1382ad30e810` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/momentatom--6477b409dd5590320d0c40c2.md) | 22 | `declaration-track:6477b409dd5590320d0c40c24ff2a6149aad2a58deeeb6bc0379404e61f30e59` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/primemomentatom--b81b0325a568e68fb9aa0b37.md) | 25 | `declaration-track:b81b0325a568e68fb9aa0b37f6fefc20f80aa75ceae080526c0b18726bf02e84` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/properpowermoment--d3d1ac91a31768fe66b243a8.md) | 27 | `declaration-track:d3d1ac91a31768fe66b243a803131a0e3c31536b15e326efc156550bbe25df79` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/properpowerb1--803bf23e5a80646cec97deb1.md) | 29 | `declaration-track:803bf23e5a80646cec97deb1f7eb04b0838ea51965b324729f939b8963de87b4` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/properpowerb2--f8a52074303a4623259edca0.md) | 31 | `declaration-track:f8a52074303a4623259edca051fcd80974a1147697f6ccfe24222c752042af57` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/outerweight-nonneg--572e9b580b090bc190ebb01d.md) | 33 | `result-track:572e9b580b090bc190ebb01d93bffa4500600ec7f7c09458f31d52b809ba63e5` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/exponentweight-nonneg--3a8d863a0ad02d351856593a.md) | 41 | `result-track:3a8d863a0ad02d351856593a8ba9e54d36b19726fdaf171929affcfddf18bb38` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/momentatom-nonneg--48ae4bfe81aef93d1560a2f7.md) | 45 | `result-track:48ae4bfe81aef93d1560a2f7ab4c105864b89c72e1d957dcbd24be5545280e0f` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/outerweight-summable--6a834bf7b04bff1f371e830b.md) | 53 | `result-track:6a834bf7b04bff1f371e830b90cef70afab7392c4981f38581a9b4c32190f6a7` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/exponentweight-summable--a15866f3731178c243e17153.md) | 83 | `result-track:a15866f3731178c243e1715374abcbc0675aa55dad44ea55426bf8dcae8fc485` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/momentatom-le-product--76b44fee7aeda112cba97b8a.md) | 92 | `result-track:76b44fee7aeda112cba97b8a9b9da7c5278e5cfd7ad7aea2c670dd28884d02c3` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/prime-outerweight-summable--44e24b9a829245ed17f05d7f.md) | 113 | `result-track:44e24b9a829245ed17f05d7faac1c2f59ab9c697c0ce7c171284961fb637456f` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/primemomentatom-summable--ca1d9ad98f63580e4c0f98bd.md) | 117 | `result-track:ca1d9ad98f63580e4c0f98bdf50e3fbfa753d185a62a5a0aaad46caf5a4f2246` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/primemomentatom-inner-summable--77e4b4d543d7004496215966.md) | 124 | `result-track:77e4b4d543d7004496215966f697e8aff4164b3288987db30e6cb6ed4952a390` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/primemomentatom-outer-summable--64911ef888a2e64eb4eaa16a.md) | 129 | `result-track:64911ef888a2e64eb4eaa16ab04476dc5938078908faccec2eb72dd9792071f5` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/properpowermoment-nonneg--34ba29e6bf9c172b73ce6cdd.md) | 134 | `result-track:34ba29e6bf9c172b73ce6cddd9ba0f56da0fcd29d784fd329976d03541fef9fd` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/finiteproperpowermoment-le-b1--55954fda98220d0081ef99c1.md) | 137 | `result-track:55954fda98220d0081ef99c1218e3d56e8ad6fa728ec7d4c1bec7f23924f7044` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/properpowerb1-gt-nine-quarters--42eb76243c1318fc3a2f0800.md) | 166 | `result-track:42eb76243c1318fc3a2f0800f5931e0128ced009735d36ca7f2876c96596b678` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/arithmeticconstant-gt-one-five-hundred--3d5b304443d788b1fafb5bd3.md) | 169 | `result-track:3d5b304443d788b1fafb5bd35a90bbeee954cb57685e39349e0964102cb102c0` |
| 22 | `def` | [omittedOnsetAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/omittedonsetatom--40fb312236b5900b36e37d8a.md) | 175 | `declaration-track:40fb312236b5900b36e37d8a5f25d3785c8350b51befe100f601bd3c4646e4a3` |
| 23 | `def` | [omittedOnsetTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/omittedonsettail--35dff8f05eaa78cc8aa67870.md) | 179 | `declaration-track:35dff8f05eaa78cc8aa67870c3789fdd8b6fbf259da90724382709c441d582ac` |
| 24 | `theorem` | [properPowerMoment_eq_joint_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/properpowermoment-eq-joint-sum--6d2973e5816955fee34b6e2c.md) | 182 | `result-track:6d2973e5816955fee34b6e2cf9371a621d803614a9f26908d22995cadb04cbdd` |
| 25 | `theorem` | [omittedOnsetAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/omittedonsetatom-nonneg--9d542b5d8c836f759307995a.md) | 186 | `result-track:9d542b5d8c836f759307995a08fd9e300d83405effbf0b5ab3f90c8eaed27bc5` |
| 26 | `theorem` | [omittedOnsetAtom_le_zeroMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/omittedonsetatom-le-zeromoment--74754282a909f31b8a1f648c.md) | 192 | `result-track:74754282a909f31b8a1f648c10360d92db799023960f7af97865eaa201be2f05` |
| 27 | `theorem` | [omittedOnsetTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/omittedonsettail-summable--c9546371f63bcb95fd203f3b.md) | 199 | `result-track:c9546371f63bcb95fd203f3bbb35ba593a78960282d42003009990583e4c83de` |
| 28 | `theorem` | [omittedOnsetTail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/omittedonsettail-nonneg--13c0f05d701f6eea6e830cd9.md) | 204 | `result-track:13c0f05d701f6eea6e830cd91f5bdc5612adbf666fab29ed059b4e5da9a29e0a` |
| 29 | `theorem` | [omittedOnsetTail_eq_iterated](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/omittedonsettail-eq-iterated--a3965a462fb95d0ebfb81c13.md) | 207 | `result-track:a3965a462fb95d0ebfb81c1305508c5f5142e7e44d1f37d7c5df131a7d022877` |
| 30 | `theorem` | [omittedOnsetAtom_secondMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/omittedonsetatom-secondmoment--e0737be79c03d88992664cdb.md) | 211 | `result-track:e0737be79c03d88992664cdb860380c8224f03f62e15c358af850e3fd87f52ab` |
| 31 | `theorem` | [omittedOnsetTail_le_B2_div_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/omittedonsettail-le-b2-div-square--1e98fc786609c17d6f5c2084.md) | 226 | `result-track:1e98fc786609c17d6f5c2084b4b6a2951e3c638c558d2cd613d18be3864dd5c7` |
| 32 | `theorem` | [properPowerB1_eq_actual](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/properpowerb1-eq-actual--25067213caf70c55e646e72a.md) | 234 | `result-track:25067213caf70c55e646e72aebd4c69464dc46c0bb7ad1feb36b0456532598a9` |
| 33 | `theorem` | [properPowerB2_eq_actual](../../../../../mathematics/Analysis/AsymptoticAnalysis/ProperPowerMoments/Variantc2a5c921ce17e2b11b38e390b4c935870e373f7968cfa67012e81dd46cc5d5d9.lean/declarations/properpowerb2-eq-actual--8f1b5012e0f518a251f0c519.md) | 239 | `result-track:8f1b5012e0f518a251f0c5198b34334c3b1534be88f27113f2ba844b45eb4184` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
