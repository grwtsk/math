# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Substitution.Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fbb66912a1a80a00041a163ce8e859aa20dc057",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fbb66912a1a80a00041a163ce8e859aa20dc057`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Congruence` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/compsub--c7f99add7a8b15fcbb4f4650.md) | 22 | `declaration-track:c7f99add7a8b15fcbb4f4650bf774bbcbf6902ff20dd4b96710b3525750c604b` |
| 2 | `theorem` | [subst_compSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/subst-compsub--f4c9bec464bf53521c14eb69.md) | 23 | `result-track:f4c9bec464bf53521c14eb694de89fa9b7b07d3aca4c5019b07b19928f07ff99` |
| 3 | `theorem` | [lift_comp_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/lift-comp-cons--1f9930e0aa705a31d5d8450d.md) | 25 | `result-track:1f9930e0aa705a31d5d8450de73c8f10f06b39fffb59d0beb2f1f00db7f20976` |
| 4 | `theorem` | [raise_subst_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/raise-subst-cons--4b367c9d27e683a62212e23f.md) | 30 | `result-track:4b367c9d27e683a62212e23f9c04cbf74d4328392960f65c0a0ee2bac87debc8` |
| 5 | `theorem` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/lift--1e5b04622e90836db00b33f7.md) | 40 | `result-track:1e5b04622e90836db00b33f7f240f94f9ba4c638d4b6aca1055743330ef89262` |
| 6 | `def` | [GoodReplacement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/goodreplacement--2365e896604592a10e2ce225.md) | 55 | `declaration-track:2365e896604592a10e2ce225f99ae98c4a8696d6438e6f1e6ddbb37a550e41ce` |
| 7 | `theorem` | [goodReplacement_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/goodreplacement-lift--4b3cc81388249971138b5d20.md) | 60 | `result-track:4b3cc81388249971138b5d201a9e44b237095d0a30d1f7a399355d281b190613` |
| 8 | `theorem` | [neutral_readGood](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/neutral-readgood--bc908fb695ca8648ad927b7d.md) | 95 | `result-track:bc908fb695ca8648ad927b7dfee4c12d944941ade4acdfc708c2191ba4b70601` |
| 9 | `theorem` | [sort_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/sort-val-retarget--8c3ac1f3447673cd93bd4289.md) | 122 | `result-track:8c3ac1f3447673cd93bd4289aa8ccfef66126b117024240593c208905afd8179` |
| 10 | `theorem` | [lookup_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/lookup-val-retarget--d09983a99a8f712c51936ae3.md) | 131 | `result-track:d09983a99a8f712c51936ae32bf933e49a0314fd47ea432d40762b746cc6899c` |
| 11 | `theorem` | [abstractionAction_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/abstractionaction-retarget--fcc4ee76d9926c424a56592a.md) | 140 | `result-track:fcc4ee76d9926c424a56592aec4c1e967202cada1364d920ac085dfb6607e4d4` |
| 12 | `theorem` | [abstraction_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/abstraction-val-retarget--f66f726c19af258ff2db09a9.md) | 172 | `result-track:f66f726c19af258ff2db09a93a6d5b711ff2072bd43726d84eafba3d3489015f` |
| 13 | `theorem` | [product_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/product-val-retarget--ce7f3c36d2ad2f3b96bdc830.md) | 185 | `result-track:ce7f3c36d2ad2f3b96bdc8308b8c426bf0d4c835ae026cdeabe07e91277a28b4` |
| 14 | `theorem` | [application_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/application-val-retarget--6a11d08e3b1f0d188110f449.md) | 202 | `result-track:6a11d08e3b1f0d188110f44910d64ff52c30a4a4c815893255817f81cc86c243` |
| 15 | `theorem` | [preEvaluate_retarget_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/preevaluate-retarget-val--e78aba31a06bf48b6bd4ebd1.md) | 220 | `result-track:e78aba31a06bf48b6bd4ebd12c9ab725d6dff8ea118d39cde589c6e954671f7d` |
| 16 | `theorem` | [preEvaluate_retarget_parameter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/preevaluate-retarget-parameter--093fda2a99d85fa50a962ec5.md) | 242 | `result-track:093fda2a99d85fa50a962ec574684c215adf9a22909e4eced85a434b1f62916f` |
| 17 | `structure` | [Assigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/assigned--1ba9f90549075e259e619022.md) | 252 | `declaration-track:1ba9f90549075e259e6190226679a5e6322856957dbce2f54ac820b9fa95a458` |
| 18 | `theorem` | [raw_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/raw-eq--a56f043ec3e8715526a4cbef.md) | 263 | `result-track:a56f043ec3e8715526a4cbef14292cd332beabb7045e9cdfec4daa692ecb7a36` |
| 19 | `theorem` | [normal_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/normal-eq--f2b492299f96c5bbc041a2e5.md) | 266 | `result-track:f2b492299f96c5bbc041a2e5a45452caaf0f9ce98369171768d4017215825a88` |
| 20 | `theorem` | [cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/cons--62303f05f6e0ecc21fa19545.md) | 270 | `result-track:62303f05f6e0ecc21fa19545c67e115f5773dcb9c12b1040a678f1bfd0489b04` |
| 21 | `theorem` | [preEvaluate_read_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/preevaluate-read-outside--510713aca6de0d93e1a0cee5.md) | 308 | `result-track:510713aca6de0d93e1a0cee531be104e2dedea39bc0f15b1e481c304d04c0c75` |
| 22 | `theorem` | [preEvaluate_neutral_read_inactive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/preevaluate-neutral-read-inactive--859752c7c016e1e43968293b.md) | 325 | `result-track:859752c7c016e1e43968293b0433d4f295a1b61b6ccf48f4ddea36d267ddd7d6` |
| 23 | `theorem` | [readGood_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/readgood-outside--2e6e2662029def41c77dd005.md) | 348 | `result-track:2e6e2662029def41c77dd005e0b6d3deaba9379a59563533dd93a7e353d6a76e` |
| 24 | `abbrev` | [ProductGood](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/productgood--ac98dddc69b15ca98b9bdf58.md) | 358 | `declaration-track:ac98dddc69b15ca98b9bdf5866c20463f832e5529fae98eb255e83371d774092` |
| 25 | `theorem` | [goodness_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/goodness-subst--216a41b7d9e6fa76b8114d36.md) | 365 | `result-track:216a41b7d9e6fa76b8114d368608cc09b50dbe7d0e5a0f625d71520762e5a3ae` |
| 26 | `theorem` | [baseRead_substitution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/baseread-substitution--749875556d8e72fb698d6ac7.md) | 490 | `result-track:749875556d8e72fb698d6ac79daeb42084f4a3ca15dbd3c0d3e603d9d998f0d4` |
| 27 | `theorem` | [preEvaluate_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/preevaluate-subst--fec3d0a01900879f5fb9234b.md) | 525 | `result-track:fec3d0a01900879f5fb9234ba389529c6910dd582eb0491cd57c6712480483ce` |
| 28 | `theorem` | [comp_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/comp-single--d93d3e4e7c131a444d905965.md) | 661 | `result-track:d93d3e4e7c131a444d90596558ff2dd7a5019af3a2af5cbbe09235283034a3af` |
| 29 | `def` | [single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/single--aeded9b474c50f49b65853dd.md) | 667 | `declaration-track:aeded9b474c50f49b65853ddebfd67975cc7a842cd9ba70a439a4aaf35b381d7` |
| 30 | `theorem` | [goodness_recontext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/goodness-recontext--1a5d12556917bfc9941f350b.md) | 689 | `result-track:1a5d12556917bfc9941f350b52d3194be9a955fdbbf5dfd45ee8822d3b7a8b28` |
| 31 | `theorem` | [single_guard](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/single-guard--e9dfdd842f8e7619448d1891.md) | 724 | `result-track:e9dfdd842f8e7619448d18913bb47fdb57f998e5764065682bef766a97c63559` |
| 32 | `theorem` | [single_goodReplacement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/single-goodreplacement--6ab9bdf65afbea064809a13a.md) | 736 | `result-track:6ab9bdf65afbea064809a13a606882b355e6eb7da0caf35477fc436f7b787cd2` |
| 33 | `theorem` | [single_assigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean/declarations/single-assigned--0c512c83c6821537b53eb01d.md) | 750 | `result-track:0c512c83c6821537b53eb01d8641bf048101f23feffebaa510b77eacc0793581` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
