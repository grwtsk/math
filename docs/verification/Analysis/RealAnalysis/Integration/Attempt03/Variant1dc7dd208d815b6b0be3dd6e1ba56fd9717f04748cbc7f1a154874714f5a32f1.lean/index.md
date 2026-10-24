# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt03.Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "494be23993a79e799931bc0ef3cb9ae18759d438",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `494be23993a79e799931bc0ef3cb9ae18759d438`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/poweronset--4f5f755b66248a7b86392b8c.md) | 25 | `declaration-track:4f5f755b66248a7b86392b8c008835c1441904d8918305220ae7d512b25b45ae` |
| 2 | `def` | [powerWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/powerweight--e3be771e8435f7fa3b19654d.md) | 28 | `declaration-track:e3be771e8435f7fa3b19654db0d0e3d1166079ea0b5fd309ea480a24c9a4a57c` |
| 3 | `def` | [positiveOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsetatom--55c2029ca6e62ad77f7a1b9e.md) | 31 | `declaration-track:55c2029ca6e62ad77f7a1b9e76d7c8b36336e3ec8d03991c7ded7f0a1dcf16f6` |
| 4 | `def` | [positiveOnsetTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsettail--68571af48c5139b6fc1b8595.md) | 34 | `declaration-track:68571af48c5139b6fc1b8595b3ffc2b3c906e6718ede732c149dbd15a0912f36` |
| 5 | `theorem` | [powerOnset_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/poweronset-pos--69efe34777fcf902b63e53ea.md) | 37 | `result-track:69efe34777fcf902b63e53ea80daca1de77a08007a83d9bcb6bc881f4b34fbdb` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/powerweight-nonneg--b6f68bc46fd2f8f8b17c901c.md) | 41 | `result-track:b6f68bc46fd2f8f8b17c901c61ebff16c200a0aae2859db159f7a8d41ebac391` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsetatom-nonneg--7c16a3b7521a222a348aafb1.md) | 46 | `result-track:7c16a3b7521a222a348aafb1ee0c8f0ffa5433fd4fa3b462517b1e4ff2b462d5` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsetatom-measurable--5388f5e49baae91456914f70.md) | 50 | `result-track:5388f5e49baae91456914f70632d43440eaea45dbb92da0a97813937a29c1407` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsetatom-integrable--2195de7582a606b0de13728f.md) | 54 | `result-track:2195de7582a606b0de13728f033f1c2230a1461ff76215b30dfc29831e2bf7f7` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsetatom-integral--927526260967db37ed7af653.md) | 61 | `result-track:927526260967db37ed7af653d224f85cf48cbf2bca80dbf4f2fd928035f2b237` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsetatom-eq-omitted--5d9d2c252e71d8ddbcd10ab9.md) | 69 | `result-track:5d9d2c252e71d8ddbcd10ab91e88b6f57c957158374d9d19a7af5be84e54df6a` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsetatom-le-zeromoment--6f0e44844ee34ca59b6b3516.md) | 77 | `result-track:6f0e44844ee34ca59b6b35160c15cdee84fd6f718239587e9d8f35db0682ed50` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsettail-summable--2bd5ca7807566dcc882a0c1a.md) | 84 | `result-track:2bd5ca7807566dcc882a0c1ac7ede41715b1c0bf31fffae4f11906adadb8ad0b` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsettail-nonneg--9386f351e06503d72abe590b.md) | 89 | `result-track:9386f351e06503d72abe590bca6273ed09ee4adff6e10454a2131ba0ff2e9910` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsettail-measurable--ec41d565c4b8af780d457e13.md) | 92 | `result-track:ec41d565c4b8af780d457e139182089d313711671f2c6d3972eb9666172043f1` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsettail-eq-indicator--735df4cb47ce4231b3915be6.md) | 95 | `result-track:735df4cb47ce4231b3915be6b320af603bba882d3c553b609334f8448e0c5ea5` |
| 17 | `theorem` | [positiveOnsetTail_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsettail-lintegral--0eb531732aedfbaaee2249da.md) | 105 | `result-track:0eb531732aedfbaaee2249da75b38e531354b8ecaf7c6412e61028ac16e65e5a` |
| 18 | `theorem` | [positiveOnsetTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsettail-integrable--7a2fe13c2d4a934137f1a3cf.md) | 128 | `result-track:7a2fe13c2d4a934137f1a3cf3b6b781acce2f81eaab82b96fb6137b0d4457279` |
| 19 | `theorem` | [positiveOnsetTail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/positiveonsettail-integral--6fc6422725b1f90ea2b5a681.md) | 134 | `result-track:6fc6422725b1f90ea2b5a68177077b3f5759a2ef8e0085626034ebe3dbf4b456` |
| 20 | `theorem` | [omittedOnsetTail_integrable_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/omittedonsettail-integrable-positive--ff1a6fd665254bdf039224be.md) | 141 | `result-track:ff1a6fd665254bdf039224bed0fc1bcbc3b675747558539cb3f313fb78539a3e` |
| 21 | `theorem` | [omittedOnsetTail_integral_eq_B1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/omittedonsettail-integral-eq-b1--03ce71d34bfdd1f589032a2a.md) | 146 | `result-track:03ce71d34bfdd1f589032a2af967e7850e6a3bf402738cae0e18f96c683ff5ba` |
| 22 | `def` | [closedOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/closedonsetatom--95bae7d34836530d327cd8cd.md) | 152 | `declaration-track:95bae7d34836530d327cd8cd0440a99bec1641d3e0922506bf09534de3c33f35` |
| 23 | `def` | [closedOnsetPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/closedonsetprefix--6a1bfa8e41cdb11792840954.md) | 155 | `declaration-track:6a1bfa8e41cdb11792840954880f86b8982927b7cc43f8516e50b57c6fb27c16` |
| 24 | `theorem` | [closedOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/closedonsetatom-nonneg--0d6edb501e36ba8218d27c24.md) | 158 | `result-track:0d6edb501e36ba8218d27c24367403bd3baad0856f7b6f8805265b3729abdb04` |
| 25 | `theorem` | [closedOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/closedonsetatom-le-zeromoment--3f48a9a5afed3eead7e23cf6.md) | 163 | `result-track:3f48a9a5afed3eead7e23cf67da9f3302c3b881152d0fbc08a6943f1d214f46e` |
| 26 | `theorem` | [closedOnsetPrefix_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/closedonsetprefix-summable--3960f88ddc3b9796d288ad22.md) | 170 | `result-track:3960f88ddc3b9796d288ad22c98ca89e27765feab6a5bb51c1c96943e050aee8` |
| 27 | `theorem` | [closedOnsetAtom_add_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/closedonsetatom-add-omitted--de5831650ad4ee185c94d2d5.md) | 175 | `result-track:de5831650ad4ee185c94d2d5b7c5ff6acc631426260ac4e151d909ba3e8d5b0f` |
| 28 | `theorem` | [closedOnsetPrefix_add_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/closedonsetprefix-add-tail--91f2b50179bc4365fbaf93c3.md) | 182 | `result-track:91f2b50179bc4365fbaf93c37ee1ac305886a1467a3fe1d4c945a5690a358167` |
| 29 | `theorem` | [properPowerMoment_sub_closedPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/properpowermoment-sub-closedprefix--aa2706b43b6fe220c3987f81.md) | 189 | `result-track:aa2706b43b6fe220c3987f81a9c070ff2971117da93e17aec923de5abafd5338` |
| 30 | `theorem` | [closedOnsetAtom_touching](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/closedonsetatom-touching--524d2e07cf3a80fc1a9f03cf.md) | 193 | `result-track:524d2e07cf3a80fc1a9f03cfd4cfca4f436296a58ae83b8d764cd3c5ed05bbe5` |
| 31 | `theorem` | [powerOnset_ge_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/poweronset-ge-first--35e0ffc0c8d190f5a1eb1f8f.md) | 198 | `result-track:35e0ffc0c8d190f5a1eb1f8f3146b43db4d3579d904aefbcc2d19b874631cd98` |
| 32 | `theorem` | [closedOnsetPrefix_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/closedonsetprefix-below-first--6b9c5aab08ae3de7dafc138b.md) | 205 | `result-track:6b9c5aab08ae3de7dafc138b4432162957651483eab7979c5b17532404328891` |
| 33 | `theorem` | [omittedOnsetTail_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean/declarations/omittedonsettail-below-first--ceff49dfdfdcd933bb1494a6.md) | 213 | `result-track:ceff49dfdfdcd933bb1494a666883f083e26e920bbcd71f8553da053f1a4f8b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
