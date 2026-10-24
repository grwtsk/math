# Verification target: GRWTSK.Algebra.UniversalAlgebra.ToDirectSum.Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e15b83fefa8c1189043a38921ef1dfa71b63eb2b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e15b83fefa8c1189043a38921ef1dfa71b63eb2b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddMonoidAlgebra.toDirectSum](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/addmonoidalgebra-todirectsum--43298f39ef7b5fb18f1a99bf.md) | 68 | `declaration-track:43298f39ef7b5fb18f1a99bf79fc0dffcf65913cb83a107679441668dcc77280` |
| 2 | `theorem` | [AddMonoidAlgebra.toDirectSum_single](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/addmonoidalgebra-todirectsum-single--36d627bdb42c915b572c5a65.md) | 76 | `result-track:36d627bdb42c915b572c5a65f73ca8261d16360bc5f88c24a5293157e4f73f64` |
| 3 | `def` | [DirectSum.toAddMonoidAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/directsum-toaddmonoidalgebra--8a97ad6ecb58a8513fd36eab.md) | 83 | `declaration-track:8a97ad6ecb58a8513fd36eab7b5f3c5ccc07f6bb6d0f6741a61322abdbb504ef` |
| 4 | `theorem` | [DirectSum.toAddMonoidAlgebra_of](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/directsum-toaddmonoidalgebra-of--e309e8bea84daf7fef0ae113.md) | 87 | `result-track:e309e8bea84daf7fef0ae11374919bce29a7cc8c00ca5d95b92737d8f2824e17` |
| 5 | `theorem` | [AddMonoidAlgebra.toDirectSum_toAddMonoidAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/addmonoidalgebra-todirectsum-toaddmonoidalgebra--fd9740077a749fd884bc5aa8.md) | 92 | `result-track:fd9740077a749fd884bc5aa8c8da8405e8ad0b09cf10f89e838a9b7936af3a76` |
| 6 | `theorem` | [DirectSum.toAddMonoidAlgebra_toDirectSum](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/directsum-toaddmonoidalgebra-todirectsum--c6bb0a3139818363e8a1bbe3.md) | 97 | `result-track:c6bb0a3139818363e8a1bbe3d86207b321411a59fc425c85654c47929773158d` |
| 7 | `theorem` | [toDirectSum_zero](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/todirectsum-zero--7aab917d54ae76b770adad92.md) | 113 | `result-track:7aab917d54ae76b770adad92a5f9931c7a6efec2d5d59bc722d88b6d39da8227` |
| 8 | `theorem` | [toDirectSum_add](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/todirectsum-add--48f87cfea6894dc0076e8eb3.md) | 117 | `result-track:48f87cfea6894dc0076e8eb3e817ea48a4f900e8331b61f7ab58dad2f7c4b477` |
| 9 | `theorem` | [toDirectSum_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/todirectsum-natcast--32161223ab0bdffc30d047de.md) | 122 | `result-track:32161223ab0bdffc30d047de792c1caa116953d8fc7d0c02c2b2ae26eec4440c` |
| 10 | `theorem` | [toDirectSum_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/todirectsum-ofnat--14c04b52fd14b518c57cd2f4.md) | 127 | `result-track:14c04b52fd14b518c57cd2f46ab30d3d69eb5e6040fb15c949372546a51162ee` |
| 11 | `theorem` | [toDirectSum_sub](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/todirectsum-sub--c37f7efcdc21d27aede68b4e.md) | 132 | `result-track:c37f7efcdc21d27aede68b4e7fc9d15d12e8937b029569b0a2a6ff8f72a99043` |
| 12 | `theorem` | [toDirectSum_neg](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/todirectsum-neg--3ec014f256e2f1ccf0f288b3.md) | 137 | `result-track:3ec014f256e2f1ccf0f288b31876c0682ce134ac05d7408e6db34ff6e187e7f0` |
| 13 | `theorem` | [toDirectSum_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/todirectsum-intcast--f93b763021e0e3f4f062398f.md) | 142 | `result-track:f93b763021e0e3f4f062398f6a2fc1008dd8814b3d4685da8db400ecc0d078cf` |
| 14 | `theorem` | [toDirectSum_one](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/todirectsum-one--c01ec81a8e2aa6cacb4f2207.md) | 147 | `result-track:c01ec81a8e2aa6cacb4f2207f5811661d4520de633d37354a8d848da64a433b7` |
| 15 | `theorem` | [toDirectSum_mul](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/todirectsum-mul--ab9144567ab0250a445a4acb.md) | 152 | `result-track:ab9144567ab0250a445a4acbae5f7322590c0fe516c45200fcb77eb693ab91ca` |
| 16 | `theorem` | [toAddMonoidAlgebra_zero](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/toaddmonoidalgebra-zero--1268bb58e26a20d2ec898104.md) | 171 | `result-track:1268bb58e26a20d2ec8981043bc3b7c408c3fa87f5e59e10f52dfc0210c30a8b` |
| 17 | `theorem` | [toAddMonoidAlgebra_add](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/toaddmonoidalgebra-add--517643cfeac7778a1a3e25c4.md) | 176 | `result-track:517643cfeac7778a1a3e25c4816d8a43fa8e16384a0bd261198d5f31a9f9045a` |
| 18 | `theorem` | [toAddMonoidAlgebra_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/toaddmonoidalgebra-natcast--7529afc3b72e1fe4743a8b42.md) | 181 | `result-track:7529afc3b72e1fe4743a8b4211054c579caa28676a39c1ed49bb25f4359004e3` |
| 19 | `theorem` | [toAddMonoidAlgebra_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/toaddmonoidalgebra-ofnat--e835f3cc53fecfbcd27828c0.md) | 186 | `result-track:e835f3cc53fecfbcd27828c066f8d597ef64eace81c5b911a1516d64f17e4803` |
| 20 | `theorem` | [toAddMonoidAlgebra_sub](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/toaddmonoidalgebra-sub--13fee73a383bed7af7306886.md) | 192 | `result-track:13fee73a383bed7af730688690cde092b03e0ee9d574ac16ea67a53bc20841f2` |
| 21 | `theorem` | [toAddMonoidAlgebra_neg](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/toaddmonoidalgebra-neg--707191c441a39b62439c6000.md) | 197 | `result-track:707191c441a39b62439c6000ed8bdcfff9bc8509a5f6683883d6106bc0ec1261` |
| 22 | `theorem` | [toAddMonoidAlgebra_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/toaddmonoidalgebra-intcast--3bdbef30198a37be296ae5c0.md) | 202 | `result-track:3bdbef30198a37be296ae5c0d4f881bf9c96d78fd54fb1661d4fa9940ca19704` |
| 23 | `theorem` | [toAddMonoidAlgebra_one](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/toaddmonoidalgebra-one--93a62f269ab10860f750c559.md) | 207 | `result-track:93a62f269ab10860f750c559116027f10fee417353e30b61ef2e32e22e55349b` |
| 24 | `theorem` | [toAddMonoidAlgebra_mul](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/toaddmonoidalgebra-mul--efa2f31d7d5f8bb7429f8639.md) | 212 | `result-track:efa2f31d7d5f8bb7429f86396fa6cda0ee8e23d3291d603c3a5c299c61a8173b` |
| 25 | `def` | [addMonoidAlgebraEquivDirectSum](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/addmonoidalgebraequivdirectsum--9a398df0e29357e2278f082e.md) | 232 | `declaration-track:9a398df0e29357e2278f082e3ca451922d597f2140a9fdbd2172859fead83c3e` |
| 26 | `def` | [addMonoidAlgebraAddEquivDirectSum](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/addmonoidalgebraaddequivdirectsum--ad1353994d52108aa24f9d5c.md) | 240 | `declaration-track:ad1353994d52108aa24f9d5cac3aef9ea5acaa5c7f11adbbc2bd54a33b9dc1e5` |
| 27 | `def` | [addMonoidAlgebraRingEquivDirectSum](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/addmonoidalgebraringequivdirectsum--fb1400caffbebd55167e925f.md) | 249 | `declaration-track:fb1400caffbebd55167e925f7680b77d0c289f175afaf38b3bac7479cda5040e` |
| 28 | `def` | [addMonoidAlgebraAlgEquivDirectSum](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/addmonoidalgebraalgequivdirectsum--e34ac64ac4bab0e9f595f982.md) | 258 | `declaration-track:e34ac64ac4bab0e9f595f98211cf93db2e287dd8e173a4db6c41ecaa09de6302` |
| 29 | `theorem` | [AddMonoidAlgebra.toDirectSum_pow](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/addmonoidalgebra-todirectsum-pow--6e876cafa0c7dc54e5f1b16c.md) | 266 | `result-track:6e876cafa0c7dc54e5f1b16c72eaa1d5e9c74b9782ee3a043e280ecce9463645` |
| 30 | `theorem` | [DirectSum.toAddMonoidAlgebra_pow](../../../../../mathematics/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/declarations/directsum-toaddmonoidalgebra-pow--167a196318eba40f4bd1726d.md) | 272 | `result-track:167a196318eba40f4bd1726d7fc5059038aeda665d0c06f60b50d2a9868d3c5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
