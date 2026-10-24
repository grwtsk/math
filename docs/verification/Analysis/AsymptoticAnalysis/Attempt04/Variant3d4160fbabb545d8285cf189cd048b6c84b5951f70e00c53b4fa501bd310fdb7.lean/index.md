# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt04.Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b3880fe728ee21837fb2e78540225350b8f2550",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b3880fe728ee21837fb2e78540225350b8f2550`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean.json)

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
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/outerweight--95d66a157e6468acc5706aa7.md) | 18 | `declaration-track:95d66a157e6468acc5706aa78bf946053e95576d4fc9e2fd058c710f683fe4c0` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/exponentweight--1aad04b500df7f754fec89b9.md) | 20 | `declaration-track:1aad04b500df7f754fec89b98de808ed8bb0b23c2627df548230e480797f0368` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/momentatom--c8c6553899dd3d2d2a666a9b.md) | 22 | `declaration-track:c8c6553899dd3d2d2a666a9bdef1caee79cfdc2f10bdd76619aeea324a7481fd` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/primemomentatom--3487498e8d8d986447c1bd04.md) | 25 | `declaration-track:3487498e8d8d986447c1bd04719528ce4139896720592d5e07de90431a0d17b1` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/properpowermoment--607a635a8a124c699e7bde0a.md) | 27 | `declaration-track:607a635a8a124c699e7bde0a12d72c1adb8f098ca3b2f9a213f3ad9d4066092d` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/properpowerb1--4ea66652103b2fabf50d9ca9.md) | 29 | `declaration-track:4ea66652103b2fabf50d9ca9289ed187571d3ed9a65e836567af32a79c439c24` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/properpowerb2--6c0813aa160ddc0bc36bcbc4.md) | 31 | `declaration-track:6c0813aa160ddc0bc36bcbc4590e46650ae70820512ff0bb1642cf984feeb7c1` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/outerweight-nonneg--0463772d96ed62f643a1bfbf.md) | 33 | `result-track:0463772d96ed62f643a1bfbf049f520ebb341c0e95bc79895d51789b901907d9` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/exponentweight-nonneg--f2f86dc219f519b00d2824b2.md) | 41 | `result-track:f2f86dc219f519b00d2824b23fdd299a1c9c62c1a70e1370a21cbd6987fe599e` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/momentatom-nonneg--9b2d6d9da60234c8aa5c25e4.md) | 45 | `result-track:9b2d6d9da60234c8aa5c25e483b7f0f3b1bbe5149bb9a401429448f9021dfa6d` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/outerweight-summable--e5040ede528d90bed35e7526.md) | 53 | `result-track:e5040ede528d90bed35e7526ff7dfa32ccf27ce9952be13c94b5bfc4e40352e2` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/exponentweight-summable--7a7075c5fa4eced3e7d58102.md) | 83 | `result-track:7a7075c5fa4eced3e7d581029e6bdd2519f1617e6f9240370cbcc7ff8d802e38` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/momentatom-le-product--0c6da579b0cfe07fb8b67914.md) | 92 | `result-track:0c6da579b0cfe07fb8b67914f5101f62b2243992836f9a16e24ed604bb652d8f` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/prime-outerweight-summable--38f8198930f81556fd40b976.md) | 113 | `result-track:38f8198930f81556fd40b97687f7a04f4610cfc402b22c2707d45f8951897c85` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/primemomentatom-summable--f8b08d7eb3b3629647a1916d.md) | 117 | `result-track:f8b08d7eb3b3629647a1916d63c028ddb2f6117bf1682c1187b140a6c75b689f` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/primemomentatom-inner-summable--371484eb9e2b26ed17cd38e4.md) | 124 | `result-track:371484eb9e2b26ed17cd38e492e5400199752cebf3199b9e8b1285bd13bff65c` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/primemomentatom-outer-summable--39e78e5b6f232d69eb8d2022.md) | 129 | `result-track:39e78e5b6f232d69eb8d20227742ae10078380f8c84c10d81388269bdadc0363` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/properpowermoment-nonneg--c21d873a88c2a2e7ee476128.md) | 134 | `result-track:c21d873a88c2a2e7ee4761289abef095500656d9ac6416d223ef26339efdec12` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/finiteproperpowermoment-le-b1--365067b72b5176928e52e2f9.md) | 137 | `result-track:365067b72b5176928e52e2f9d5585e02f6561c6af6eec46463f835ebd99bb584` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/properpowerb1-gt-nine-quarters--275ad6f7cf8736a2da7177b4.md) | 166 | `result-track:275ad6f7cf8736a2da7177b45ddb4a642c40315e8f766de3a661bf6b06a4030a` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt04/Variant3d4160fbabb545d8285cf189cd048b6c84b5951f70e00c53b4fa501bd310fdb7.lean/declarations/arithmeticconstant-gt-one-five-hundred--f520463baac730b3cc463982.md) | 169 | `result-track:f520463baac730b3cc4639829631095e4df437e67d08e59831266b2c2d6e6edd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
