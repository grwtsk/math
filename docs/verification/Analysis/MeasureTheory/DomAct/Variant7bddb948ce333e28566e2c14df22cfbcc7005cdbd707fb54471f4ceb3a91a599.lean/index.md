# Verification target: GRWTSK.Analysis.MeasureTheory.DomAct.Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdedeb3f07c4d0bcd948ea9e0683af87bd43e701",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdedeb3f07c4d0bcd948ea9e0683af87bd43e701`.

Source path: `GRWTSK/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.AEEqFun` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Action` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/declarations/instance--4c33c05e330c991562165d59.md) | 46 | `declaration-track:4c33c05e330c991562165d59728e1e125b5d8b3a9f347b4753ad6bc8814fb39f` |
| 2 | `theorem` | [smul_aeeqFun_aeeq](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/declarations/smul-aeeqfun-aeeq--272bedea49cdea4fa11629b4.md) | 50 | `result-track:272bedea49cdea4fa11629b479f43c000ab38b0f8ea1cb05f2500e836fc1c7e5` |
| 3 | `theorem` | [mk_smul_mk_aeeqFun](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/declarations/mk-smul-mk-aeeqfun--5432d9787efe0ce8d191a953.md) | 55 | `result-track:5432d9787efe0ce8d191a953501fcaaefc54e2c2627d0c2482cea796bc1330e4` |
| 4 | `theorem` | [smul_aeeqFun_const](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/declarations/smul-aeeqfun-const--c266f379bef5bb0aaed56b8d.md) | 61 | `result-track:c266f379bef5bb0aaed56b8d17728a357aa15e388a56afaa273238952bf3a400` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/declarations/instance--4ee68453a88dc33c38690fee.md) | 65 | `declaration-track:4ee68453a88dc33c38690feef2576ada66d40eadbbb3bcab8520d7d7ba1149cc` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/declarations/instance--bc06a66f1ade5541603b0115.md) | 68 | `declaration-track:bc06a66f1ade5541603b0115001f95f3375c0d98bfbbc816f6032c64007d9ffc` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/declarations/instance--81494b704b0885bf6da3c1e1.md) | 72 | `declaration-track:81494b704b0885bf6da3c1e166be0b1b1d5623b5ddc2d6f4b6dc3a568db2e437` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/declarations/instance--eef76defedb03d904d8a36f2.md) | 77 | `declaration-track:eef76defedb03d904d8a36f24246698d05c29c902e3aa8b9fd06409c01d1445b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/declarations/instance--1e740ddbe1a3c06365fc83a3.md) | 81 | `declaration-track:1e740ddbe1a3c06365fc83a3ff2d3cf2fd29f2ddb94372e74c1a12b1158e9b37` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/declarations/instance--d223568d44e827e1d023732a.md) | 91 | `declaration-track:d223568d44e827e1d023732acb34582ff0eb7d4840ec371e2dab64fe39f2285a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/declarations/instance--fb681b3fcd7fe63c18321663.md) | 97 | `declaration-track:fb681b3fcd7fe63c18321663d29e2171ebafd03a50178d03a8d41d5c460d6594` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant7bddb948ce333e28566e2c14df22cfbcc7005cdbd707fb54471f4ceb3a91a599.lean/declarations/instance--c4b7603c1e874f128c2749b6.md) | 101 | `declaration-track:c4b7603c1e874f128c2749b6bbd93801703db57325ec6533a4472ea5dc2d2e5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
