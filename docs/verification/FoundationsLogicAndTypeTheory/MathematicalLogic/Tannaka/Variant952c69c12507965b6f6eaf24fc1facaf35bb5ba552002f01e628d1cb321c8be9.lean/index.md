# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Tannaka.Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e12d007b31b53ce0d180168bb036d6a99d88bec",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e12d007b31b53ce0d180168bb036d6a99d88bec`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.FDRep` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/instance--9e03361e7ec57db88fbf91fb.md) | 46 | `declaration-track:9e03361e7ec57db88fbf91fb12f92b3979366489f865aeb8ddf3700037718ed2` |
| 2 | `def` | [forget](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/forget--d7baaa3589dbb528b78c7372.md) | 51 | `declaration-track:d7baaa3589dbb528b78c73721dac82de8647aa2f21120a1b55fe5c5aa0e88453` |
| 3 | `lemma` | [forget_obj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/forget-obj--05d80cb5174bfcede9f19fac.md) | 53 | `result-track:05d80cb5174bfcede9f19fac0e9bd4b38cd129bc2b6a2cd9ba1d04015233c54c` |
| 4 | `lemma` | [forget_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/forget-map--84b47dbe6386c023548bf740.md) | 55 | `result-track:84b47dbe6386c023548bf740815f096f3d72a9efb619bf6b574bb02e65ec264f` |
| 5 | `def` | [equivApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/equivapp--a7df7d840314cf46b9b44af4.md) | 59 | `declaration-track:a7df7d840314cf46b9b44af44cbbbcef094eb2d33c1df65a1665ef8d5f33e155` |
| 6 | `def` | [equivHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/equivhom--fdb2c4b2e3cd3f1627b38502.md) | 72 | `declaration-track:fdb2c4b2e3cd3f1627b3850200094021d307f91bc6a39373beedffb68b2de7b8` |
| 7 | `def` | [rightRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/rightregular--e50cd7fb8e4db6e1a2c40308.md) | 79 | `declaration-track:e50cd7fb8e4db6e1a2c403086c9750e5753149936421ca3c17eb9c27eda0ac2b` |
| 8 | `lemma` | [rightRegular_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/rightregular-apply--4c6add291deae3ce33ee7aaa.md) | 92 | `result-track:4c6add291deae3ce33ee7aaacc94c9ff138f58891519fefc5e28889754e60747` |
| 9 | `def` | [leftRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/leftregular--3287040fd593c64bd3847c79.md) | 95 | `declaration-track:3287040fd593c64bd3847c793fe08bdb4c29708fb96c761e03806f969050c255` |
| 10 | `lemma` | [leftRegular_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/leftregular-apply--8cadaafa6fbcb7f51b49ff15.md) | 108 | `result-track:8cadaafa6fbcb7f51b49ff15e70e01ec85e7996e1fbfcc7ba5f8aaa0fea9e9cc` |
| 11 | `def` | [rightFDRep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/rightfdrep--25ccfc1e868881d74e05a5aa.md) | 112 | `declaration-track:25ccfc1e868881d74e05a5aa41f17ac32562c266fc6ce472a7a0deace98fa731` |
| 12 | `lemma` | [equivHom_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/equivhom-injective--834bbf0c9c0559fc40c35efc.md) | 118 | `result-track:834bbf0c9c0559fc40c35efc5760defa3e3b2d74abe6d55620e14b77e20ef102` |
| 13 | `def` | [mulRepHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/mulrephom--037db0d4f00efbdaed9db8dc.md) | 128 | `declaration-track:037db0d4f00efbdaed9db8dc4e0d32235870ef3e1b8ae93d4ca3ce39e4d4c7b4` |
| 14 | `lemma` | [map_mul_toRightFDRepComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/map-mul-torightfdrepcomp--ad73a3a498826e54a77563a1.md) | 137 | `result-track:ad73a3a498826e54a77563a139967deabeb81d4afcbb035cffba7c4b21f66fbf` |
| 15 | `def` | [algHomOfRightFDRepComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/alghomofrightfdrepcomp--9e42caf111ca163bcce888ed.md) | 149 | `declaration-track:9e42caf111ca163bcce888edad5bdf0be210728f6547f72bf177b36bdbd1b7fd` |
| 16 | `def` | [sumSMulInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/sumsmulinv--e658c24776b0fa84bda28089.md) | 163 | `declaration-track:e658c24776b0fa84bda280893469c3c3bd781977f24c2024c9203d11ad6b8b34` |
| 17 | `lemma` | [sumSMulInv_single_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/sumsmulinv-single-id--be6e6b014319ecf239a5d57d.md) | 170 | `result-track:be6e6b014319ecf239a5d57dfdd8d71b88fb9a4d75336df030a4a257a624404d` |
| 18 | `def` | [ofRightFDRep](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/ofrightfdrep--c43854d5ea97b8846680e6cb.md) | 179 | `declaration-track:c43854d5ea97b8846680e6cb994804b39a9956fe132bacfc89fd6628b969fd79` |
| 19 | `lemma` | [toRightFDRepComp_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/torightfdrepcomp-injective--c44dcb89351f37149501e034.md) | 187 | `result-track:c44dcb89351f37149501e03498b482f93c6311f8fddd8e5d913d815242d0f296` |
| 20 | `def` | [leftRegularFDRepHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/leftregularfdrephom--e9756ce1d609adf958e5d02a.md) | 198 | `declaration-track:e9756ce1d609adf958e5d02a3d7ea73cd78b0931d1a0cc2c9026972d42b0a42d` |
| 21 | `lemma` | [toRightFDRepComp_in_rightRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/torightfdrepcomp-in-rightregular--938fb63abaf2dec66d200189.md) | 206 | `result-track:938fb63abaf2dec66d20018974e3d2fcc7269ecd565e4c9f0adedde2f8b326b2` |
| 22 | `lemma` | [equivHom_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/equivhom-surjective--bd7ad1e0caf19d233a64e3b2.md) | 222 | `result-track:bd7ad1e0caf19d233a64e3b2537fcfb706b8414df8d8807286bd09f9a119b3f7` |
| 23 | `def` | [equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tannaka/Variant952c69c12507965b6f6eaf24fc1facaf35bb5ba552002f01e628d1cb321c8be9.lean/declarations/equiv--1dc771ac62eff20e2745ef9d.md) | 232 | `declaration-track:1dc771ac62eff20e2745ef9deba10207f01c186fb71c5f6ccdfdfe8b7bce95e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
