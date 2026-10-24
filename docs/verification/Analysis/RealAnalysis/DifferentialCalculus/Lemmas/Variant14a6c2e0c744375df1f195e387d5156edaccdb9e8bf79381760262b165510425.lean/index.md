# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Lemmas.Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7f6a3e114a5cadda1f53a936d7244aa26f19381",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7f6a3e114a5cadda1f53a936d7244aa26f19381`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Shift` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iteratedDerivWithin_congr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderivwithin-congr--be981f30bcfe6f3bd4b808d9.md) | 36 | `result-track:be981f30bcfe6f3bd4b808d9ef5bcc54fbbca015ea22daf348fb5972a223d059` |
| 2 | `theorem` | [iteratedDerivWithin_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderivwithin-add--f3501b28fc11005ae869a45f.md) | 46 | `result-track:f3501b28fc11005ae869a45fec5ba9a46716d7fa3448380b3fe65ffcd5d962a0` |
| 3 | `theorem` | [iteratedDerivWithin_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderivwithin-const-add--094f292df9995325b13a5361.md) | 53 | `result-track:094f292df9995325b13a5361de4b4f529567c6be598acd683d8179c3b80ac4f5` |
| 4 | `theorem` | [iteratedDerivWithin_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderivwithin-const-sub--958868027cac146616ec7fd5.md) | 60 | `result-track:958868027cac146616ec7fd51e592a8b9bd51411768c485624282d04a5916593` |
| 5 | `theorem` | [iteratedDerivWithin_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderivwithin-const-smul--08898488ce6444a8161eb259.md) | 72 | `result-track:08898488ce6444a8161eb259adce639f021d29a2dfabe5211f2e57ca3a6d175f` |
| 6 | `theorem` | [iteratedDerivWithin_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderivwithin-const-mul--7ec1e4d0a4bc7d66fddc9579.md) | 79 | `result-track:7ec1e4d0a4bc7d66fddc9579ce4b911b969b0f7a86d58098a1489ec2e1e35e3d` |
| 7 | `theorem` | [iteratedDerivWithin_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderivwithin-neg--343391bd31ae34ecb9f532fb.md) | 85 | `result-track:343391bd31ae34ecb9f532fb01a0b7215c8d962dbf09e851eff9fa48d2669a01` |
| 8 | `theorem` | [iteratedDerivWithin_neg'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderivwithin-neg--571cb743d653d8724b0edd3f.md) | 96 | `result-track:571cb743d653d8724b0edd3f780bf25fb5f50840d876a7175b93135345578411` |
| 9 | `theorem` | [iteratedDerivWithin_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderivwithin-sub--5bfaf61f9de486c3dbfc041b.md) | 102 | `result-track:5bfaf61f9de486c3dbfc041b3c1b626aa99bb1588137d5ea9116f75256804709` |
| 10 | `theorem` | [iteratedDerivWithin_comp_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderivwithin-comp-const-smul--38b010961adac97f956148e4.md) | 109 | `result-track:38b010961adac97f956148e450256b7786915bd58f33088c2ffad2b03ee26fe9` |
| 11 | `lemma` | [iteratedDeriv_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderiv-add--0d9125565008e8d380248b09.md) | 137 | `result-track:0d9125565008e8d380248b09040c7f76f62279947e115054c4c3f29568297988` |
| 12 | `theorem` | [iteratedDeriv_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderiv-const-add--55b7848507a516426c8df1a5.md) | 142 | `result-track:55b7848507a516426c8df1a5d5f8386db256f6d8d26d215144385301aedde8d9` |
| 13 | `theorem` | [iteratedDeriv_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderiv-const-sub--3fa0fbc009535bd1d69d478b.md) | 146 | `result-track:3fa0fbc009535bd1d69d478b36fe2c2808a9df70ce27705649a22089bba5fdee` |
| 14 | `lemma` | [iteratedDeriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderiv-neg--e830be6fda37d4f01557c502.md) | 150 | `result-track:e830be6fda37d4f01557c502a024f8ae4731a2706bcfd4423e9261e08d0049a9` |
| 15 | `lemma` | [iteratedDeriv_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderiv-sub--ddc283b3f3d4c1629a9a9807.md) | 154 | `result-track:ddc283b3f3d4c1629a9a98077ef24e7d83ccff203560c09a327493564e1497f0` |
| 16 | `theorem` | [iteratedDeriv_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderiv-const-smul--57461235c7e15f6ad6b4a538.md) | 159 | `result-track:57461235c7e15f6ad6b4a53847c8f44cf549e3081d88d43c522177d6cf31db1d` |
| 17 | `theorem` | [iteratedDeriv_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderiv-const-mul--b0ab6c4d6849d11454d8ee96.md) | 165 | `result-track:b0ab6c4d6849d11454d8ee96bf6b4fd7334f2dc6250c2cf9e8e186044db5eea7` |
| 18 | `theorem` | [iteratedDeriv_comp_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderiv-comp-const-smul--62644a36373bfc746756820a.md) | 171 | `result-track:62644a36373bfc746756820a1a71ecf55dd4cb2da67e54928c9b9bc62a09817e` |
| 19 | `theorem` | [iteratedDeriv_comp_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderiv-comp-const-mul--98f5023585502cd4322f46e5.md) | 178 | `result-track:98f5023585502cd4322f46e547254728d3af639b185b87276663b8714f482fa3` |
| 20 | `lemma` | [iteratedDeriv_comp_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderiv-comp-neg--9faec0b7533656f490374d0d.md) | 182 | `result-track:9faec0b7533656f490374d0d4805f868d9755681d89ca6a164eb1bdeaba6fedb` |
| 21 | `lemma` | [Filter.EventuallyEq.iteratedDeriv_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/filter-eventuallyeq-iteratedderiv-eq--f19e640aed25344185c5ed5e.md) | 193 | `result-track:f19e640aed25344185c5ed5eb4c01b1c3d6db61100f6f6e4dd2fd8058a62b73e` |
| 22 | `lemma` | [Set.EqOn.iteratedDeriv_of_isOpen](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/set-eqon-iteratedderiv-of-isopen--9a69674633d6077cb5fb4072.md) | 198 | `result-track:9a69674633d6077cb5fb40727b805531d18f1b55b7fbd18894282891a40b4bd9` |
| 23 | `lemma` | [iteratedDeriv_comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderiv-comp-const-add--76359d041adad3d893655a15.md) | 215 | `result-track:76359d041adad3d893655a150fd4c172b13b8bbe4f65a65799631df9b4752ed2` |
| 24 | `lemma` | [iteratedDeriv_comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variant14a6c2e0c744375df1f195e387d5156edaccdb9e8bf79381760262b165510425.lean/declarations/iteratedderiv-comp-add-const--292172d95bd224f9855478ad.md) | 223 | `result-track:292172d95bd224f9855478ad595f0812cfd301b92a2f652f8671183e15863307` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
