# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PackageFactories.Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a42524b496ee160e7d70bc76f9f002fa7d80b8cf",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a42524b496ee160e7d70bc76f9f002fa7d80b8cf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreorderPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/preorderpackage--c9f2c4bb6e34ed10e4d6687a.md) | 39 | `declaration-track:c9f2c4bb6e34ed10e4d6687a444e871526011b25ba8c567546f2abbd94e8f290` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/instance--8b2b5dd2c5b1447beefcc770.md) | 44 | `declaration-track:8b2b5dd2c5b1447beefcc770422dd95b9f25b3d5116d9af1256adb5e2fe4decf` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/instance--1384f58037a784bf9e2170ec.md) | 45 | `declaration-track:1384f58037a784bf9e2170ecf552caee802b9135d926901058b4f4aa89763c64` |
| 4 | `instance` | [beqOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/beqofdecidablele--9c0701e30e325d4d52b45697.md) | 49 | `declaration-track:9c0701e30e325d4d52b456979227f766d5e3f317035715a0bd4066d30e7e62c1` |
| 5 | `instance` | [instLawfulOrderBEqOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/instlawfulorderbeqofdecidablele--cb18869e6dddc823e28eba20.md) | 53 | `declaration-track:cb18869e6dddc823e28eba204de03d48547e207458f7aca5610799977924c4b1` |
| 6 | `def` | [decidableLTOfLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/decidableltofle--95d0063dfd156a4108f610b7.md) | 59 | `declaration-track:95d0063dfd156a4108f610b772b4e2fc404c685175a986014a467c05dec04973` |
| 7 | `structure` | [Packages.PreorderOfLEArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/packages-preorderofleargs--e3fff9a7db864b2337db5273.md) | 72 | `declaration-track:e3fff9a7db864b2337db5273cd7ca8cadee824aeb23c751280ec41ddd573f853` |
| 8 | `def` | [PreorderPackage.ofLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/preorderpackage-ofle--cdf5fd78c7307a6cb02c9d41.md) | 183 | `declaration-track:cdf5fd78c7307a6cb02c9d41c5cd21fae84c958fc7012363ade9b967c49d8406` |
| 9 | `class` | [PartialOrderPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/partialorderpackage--6b7672de7803aba561912a8c.md) | 203 | `declaration-track:6b7672de7803aba561912a8c6757bde4e58eee73411650bbfa31f82bab7046cb` |
| 10 | `structure` | [Packages.PartialOrderOfLEArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/packages-partialorderofleargs--78968f7a09c25ae7079202e4.md) | 211 | `declaration-track:78968f7a09c25ae7079202e4c189a2a3202152cdef7ca10e2852ddb75a1a540b` |
| 11 | `def` | [PartialOrderPackage.ofLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/partialorderpackage-ofle--6c2bbf3e5217dbf5bcf13244.md) | 268 | `declaration-track:6c2bbf3e5217dbf5bcf1324426e29061006d83887b3ed0ad5b092e00b1de7a84` |
| 12 | `instance` | [instOrdOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/instordofdecidablele--081d9281e5218903aea006c0.md) | 277 | `declaration-track:081d9281e5218903aea006c08bd90b9e36a15ea874e6f617c6e5014966f5781d` |
| 13 | `theorem` | [isLE_compare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/isle-compare--326c2404de4d2176698cf62e.md) | 281 | `result-track:326c2404de4d2176698cf62e96a51afaa0b2abd3ad35975d33347212e3dd3207` |
| 14 | `theorem` | [isGE_compare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/isge-compare--9d79e26e2e66b6cbf6e8df77.md) | 288 | `result-track:9d79e26e2e66b6cbf6e8df77aef6ab921d21203f76e0b23f3659c1b4e3e570af` |
| 15 | `instance` | [instLawfulOrderOrdOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/instlawfulorderordofdecidablele--946a3fdef076603162ae45fb.md) | 297 | `declaration-track:946a3fdef076603162ae45fb808a990fea2125b793bf17b8aff6994f13081a26` |
| 16 | `class` | [LinearPreorderPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/linearpreorderpackage--49afefdb1b0ea5d1cd35348f.md) | 309 | `declaration-track:49afefdb1b0ea5d1cd35348f328c8b3a0129514e1d84f68af44d4a5fef06161f` |
| 17 | `structure` | [Packages.LinearPreorderOfLEArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/packages-linearpreorderofleargs--21f6d33d543d824f722cf80e.md) | 317 | `declaration-track:21f6d33d543d824f722cf80ee8630fa3af723e414edc6bd0fee1fc8b9f8d471f` |
| 18 | `def` | [LinearPreorderPackage.ofLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/linearpreorderpackage-ofle--f46f9cfd1ee54f3759bc229b.md) | 397 | `declaration-track:f46f9cfd1ee54f3759bc229b8cb2dc4c3c88d9afaa7c256bf323b34c88a35201` |
| 19 | `class` | [LinearOrderPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/linearorderpackage--fe137efa9ba9c72c94dfa24d.md) | 409 | `declaration-track:fe137efa9ba9c72c94dfa24d96da79a89ff28e284022fd1e22ae6d4a95e5d293` |
| 20 | `structure` | [Packages.LinearOrderOfLEArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/packages-linearorderofleargs--ce74026c9ed20b026856d13e.md) | 418 | `declaration-track:ce74026c9ed20b026856d13e13d6d7c9e6d93e04198ec9ad053fd69a786a016b` |
| 21 | `def` | [LinearOrderPackage.ofLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/linearorderpackage-ofle--f4abd641c9b7170cb93d7f84.md) | 499 | `declaration-track:f4abd641c9b7170cb93d7f843d0fef8485ccb3099e9bf279adb459f651b5e9d9` |
| 22 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreorderPackage.Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.Std.OrientedCmp.of_gt_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-preor--e7b58df76c07d4c69877283d.md) | 524 | `result-track:e7b58df76c07d4c69877283dcde877cf65828d954f20e2c1f6f35308c976e1b4` |
| 23 | `structure` | [Packages.LinearPreorderOfOrdArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/packages-linearpreorderofordargs--eda04930f0e4068326e8708a.md) | 544 | `declaration-track:eda04930f0e4068326e8708a98613134a9499185a844bbea4e73dc120a435a8c` |
| 24 | `def` | [LinearPreorderPackage.ofOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/linearpreorderpackage-oford--d0223cbb2396699184eff004.md) | 659 | `declaration-track:d0223cbb2396699184eff004944c8925129f8429c6b8cda32a9a0a63c5542bf7` |
| 25 | `instance` | [instMinOfOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/instminoford--7a9c597b5834834d8e0fa30f.md) | 689 | `declaration-track:7a9c597b5834834d8e0fa30ffa0b772b6842db7c24098179998466ca62828ff2` |
| 26 | `instance` | [instMaxOfOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/instmaxoford--5d99144b6e28a6faf50ce5d1.md) | 693 | `declaration-track:5d99144b6e28a6faf50ce5d1ef99b853ad9ee435d709f4f499df909e6f1583fe` |
| 27 | `instance` | [instLawfulOrderLeftLeaningMinOfOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/instlawfulorderleftleaningminoford--d51f5a56f2f81b2ab73252be.md) | 697 | `declaration-track:d51f5a56f2f81b2ab73252bee110d0cce1729cbe931adcf5bcdb07bae1e0a0d9` |
| 28 | `instance` | [instLawfulOrderLeftLeaningMaxOfOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/instlawfulorderleftleaningmaxoford--8b598153b5c3d62aa385d955.md) | 703 | `declaration-track:8b598153b5c3d62aa385d95585a3e68162f6c7a737d6badc6f46099302a6dc86` |
| 29 | `structure` | [Packages.LinearOrderOfOrdArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/packages-linearorderofordargs--9bf4aa956bc16fda481a803c.md) | 716 | `declaration-track:9bf4aa956bc16fda481a803c745c72976bacc08651b4f18e85e5d0ad3538c1cd` |
| 30 | `def` | [LinearOrderPackage.ofOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/declarations/linearorderpackage-oford--f764cee4d15a4afaee7c1781.md) | 805 | `declaration-track:f764cee4d15a4afaee7c17810c927ab58fd7553cd2dd06ea87022f77b1279326` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
