# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt07.Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cee137fce273b01d56a98f8b5148bfce2dc901bf",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cee137fce273b01d56a98f8b5148bfce2dc901bf`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/outerweight--2baf087386443c699dffb2a9.md) | 26 | `declaration-track:2baf087386443c699dffb2a95c34ba8f5bfd515f378ff89e11ae88d8c50625f2` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/exponentweight--11ed48cda003ef84e25e12ce.md) | 28 | `declaration-track:11ed48cda003ef84e25e12ce6637b3d964942ba51ef89a9d9fdd650608b5c0ac` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/momentatom--3206a4e7f26a3a9fb2050822.md) | 30 | `declaration-track:3206a4e7f26a3a9fb2050822310e4788be1ca5a2f9a2868dc84bc2f9ba648647` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/primemomentatom--539767fa24e045939d3fddfb.md) | 33 | `declaration-track:539767fa24e045939d3fddfbbf538ad75d1f31c7f4580a46cf058ccbb14024ab` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/properpowermoment--d30a422cbc7eb0e88897e38e.md) | 35 | `declaration-track:d30a422cbc7eb0e88897e38ed24b120436ebb0e14343bb79738c691f0d9edf03` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/properpowerb1--319d07cbcde5dcb6ffb71754.md) | 37 | `declaration-track:319d07cbcde5dcb6ffb71754ec512e871026b0a0ec86aa79754f93a7039d79d2` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/properpowerb2--ad50fa905edd6e305291eefe.md) | 39 | `declaration-track:ad50fa905edd6e305291eefe3d933299c9cac5220c2c292f83554c7ee43c86ad` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/outerweight-nonneg--cda6b893e582bf6f21ecc242.md) | 41 | `result-track:cda6b893e582bf6f21ecc2422b0a2766dedfafc1b9d50d0ee846badac35a2502` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/exponentweight-nonneg--3c4c33bda0ae0867be62dd74.md) | 49 | `result-track:3c4c33bda0ae0867be62dd7423b509bf20be37ade27f06a42075125ccbda3506` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/momentatom-nonneg--0ffa767994dc0f393c7c3029.md) | 53 | `result-track:0ffa767994dc0f393c7c3029905a1a8f6b1e564a4c76f06c292c4d7edcaed746` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/outerweight-summable--fb1d41cc5cd4771079c04055.md) | 61 | `result-track:fb1d41cc5cd4771079c0405527d690ec8636402ea132c7a16b4c79f4a86b9c9d` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/exponentweight-summable--840e37f769dbc253254a4a65.md) | 91 | `result-track:840e37f769dbc253254a4a65555cdb6f30233caf055580f6a7643a64074e2d3f` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/momentatom-le-product--402d77489499c83815b50efd.md) | 100 | `result-track:402d77489499c83815b50efdbe679adda1aaa126393c80398392645ddafdf6e8` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/prime-outerweight-summable--502a980c1d11ba590b10e831.md) | 121 | `result-track:502a980c1d11ba590b10e83163ed25afdf033a9dab2f07d33218a44b7ba1bdf5` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/primemomentatom-summable--3608712557fdcef9239c475a.md) | 125 | `result-track:3608712557fdcef9239c475a3382f21b76274540e1b1f19504e7e75d84ef023c` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/primemomentatom-inner-summable--eeacee417b6fb408f2e70739.md) | 132 | `result-track:eeacee417b6fb408f2e70739adfdcf5d0bc55bca6f0dd344a58f5e49a676b9b0` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/primemomentatom-outer-summable--62bfc1aaac4efa7dee6c1718.md) | 137 | `result-track:62bfc1aaac4efa7dee6c17185383f986c7f57bd2067e767dd598673f12959c4a` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/properpowermoment-nonneg--b83e6679c2813a4e62d516de.md) | 142 | `result-track:b83e6679c2813a4e62d516de450a63d815b437b96982aaa875bb00ab9d40eba6` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/finiteproperpowermoment-le-b1--0530ae22d9af2cf90423f10f.md) | 145 | `result-track:0530ae22d9af2cf90423f10f4abaa04f5979e60ec0eecce08477b8dc72e7de5c` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/properpowerb1-gt-nine-quarters--a85ba8cdf1f3a2627ae25431.md) | 174 | `result-track:a85ba8cdf1f3a2627ae254310506d7faa6b8722a457634182f387bcdcb5b592e` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/arithmeticconstant-gt-one-five-hundred--6fd934a965fe38a133eea0df.md) | 177 | `result-track:6fd934a965fe38a133eea0dfc945efd9a9ac3b77f84aefc07cd29080c6845fa0` |
| 22 | `def` | [omittedOnsetAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/omittedonsetatom--dd5a798deb92c2afc3909ee2.md) | 183 | `declaration-track:dd5a798deb92c2afc3909ee21f2dc74a701923168128e6bfb0eb2c2d7eb8ad23` |
| 23 | `def` | [omittedOnsetTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/omittedonsettail--81470862b97a58cc57dcd3e8.md) | 187 | `declaration-track:81470862b97a58cc57dcd3e8060eca5483417978e82ade3cb762d05d1f1c864e` |
| 24 | `theorem` | [properPowerMoment_eq_joint_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/properpowermoment-eq-joint-sum--78c04f4eee3477adcac8a268.md) | 190 | `result-track:78c04f4eee3477adcac8a26886e00249ede43a0f1205b20883defd270395a7d2` |
| 25 | `theorem` | [omittedOnsetAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/omittedonsetatom-nonneg--4106b80114cd23b5dfb79d43.md) | 194 | `result-track:4106b80114cd23b5dfb79d43a59d98544699ef05c2610504b1eda942f8037e42` |
| 26 | `theorem` | [omittedOnsetAtom_le_zeroMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/omittedonsetatom-le-zeromoment--89af300c1b19beb204bbbc99.md) | 200 | `result-track:89af300c1b19beb204bbbc995a35f919e4fd35a9427c8dbc9924350d0e09d69d` |
| 27 | `theorem` | [omittedOnsetTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/omittedonsettail-summable--d759705457f106c7a0ea4f60.md) | 207 | `result-track:d759705457f106c7a0ea4f60eb9831cc7cb0f52007c06bf2744d904d6ddc4018` |
| 28 | `theorem` | [omittedOnsetTail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/omittedonsettail-nonneg--c9a41d2a0f59cd2391cef5a2.md) | 212 | `result-track:c9a41d2a0f59cd2391cef5a230f5df1e736b734dccf5de99d0713dbb781b4bb2` |
| 29 | `theorem` | [omittedOnsetTail_eq_iterated](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/omittedonsettail-eq-iterated--eea126e127ca934445121c3f.md) | 215 | `result-track:eea126e127ca934445121c3fb85440936a4056902f9d28b78b6123dbfc483169` |
| 30 | `theorem` | [omittedOnsetAtom_secondMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/omittedonsetatom-secondmoment--95d548b1a35c86f8b5188449.md) | 219 | `result-track:95d548b1a35c86f8b5188449b40a8136a3072a8d224facc4fde843d3f75aa74c` |
| 31 | `theorem` | [omittedOnsetTail_le_B2_div_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/declarations/omittedonsettail-le-b2-div-square--e5c687ed90bbb3d2b67e9dee.md) | 231 | `result-track:e5c687ed90bbb3d2b67e9dee1d7ee33acb4e5bb84fd21203736631d2713d7f51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
