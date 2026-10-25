# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Midpoint.Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12f179695e42c8837831a178b8e8db4969b62b16",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12f179695e42c8837831a178b8e8db4969b62b16`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineEquiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint--a567f872e6bd6e47056a7a5e.md) | 42 | `declaration-track:a567f872e6bd6e47056a7a5e2159dac04659696030fa167ea604dd0e0840c02b` |
| 2 | `theorem` | [AffineMap.map_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/affinemap-map-midpoint--b73a09715ab74667f15157f5.md) | 48 | `result-track:b73a09715ab74667f15157f58412c919c31d5e02ae8d3aab4b50a583f7117f35` |
| 3 | `theorem` | [AffineEquiv.map_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/affineequiv-map-midpoint--2479b5f23157986ef0efd746.md) | 53 | `result-track:2479b5f23157986ef0efd746d890f0dc37bccb4b10d4ce0af4a6053e16d2fab3` |
| 4 | `theorem` | [AffineEquiv.pointReflection_midpoint_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/affineequiv-pointreflection-midpoint-left--d3f94839d90b191f8d4c8eca.md) | 57 | `result-track:d3f94839d90b191f8d4c8eca0c6fbab5d5beb519683e6c3cef4eec8b13b7933d` |
| 5 | `theorem` | [Equiv.pointReflection_midpoint_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/equiv-pointreflection-midpoint-left--da5e47e1ac90b6e9e4710b0e.md) | 63 | `result-track:da5e47e1ac90b6e9e4710b0ef5816ee0d3d61a41b2cc5a2fc63ed9c16b131a40` |
| 6 | `theorem` | [midpoint_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-comm--fece8b351d1e5ccb1559a3fe.md) | 68 | `result-track:fece8b351d1e5ccb1559a3fe9c8929a0e293f774b5c582d8ba7ddd95dbe70b14` |
| 7 | `theorem` | [AffineEquiv.pointReflection_midpoint_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/affineequiv-pointreflection-midpoint-right--61c1d0586bd062eca35e84af.md) | 71 | `result-track:61c1d0586bd062eca35e84afee1075f37f68b0fc08bb090966de96183b8132ae` |
| 8 | `theorem` | [Equiv.pointReflection_midpoint_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/equiv-pointreflection-midpoint-right--9b8a0589c56356b1c309cf38.md) | 76 | `result-track:9b8a0589c56356b1c309cf3855c62d1c5a93759ed5c0792dfd3ab634e54beaa2` |
| 9 | `theorem` | [midpoint_vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-vsub-midpoint--676c4b88d7fc4a4b56222baa.md) | 80 | `result-track:676c4b88d7fc4a4b56222baa8277f5037fd9966ee50b4e3ba48aa8d323deaa25` |
| 10 | `theorem` | [midpoint_vadd_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-vadd-midpoint--1f53696f6a0bd19892848944.md) | 84 | `result-track:1f53696f6a0bd19892848944948909398f9765b60524e1ff9d4a705d0784826c` |
| 11 | `theorem` | [midpoint_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-eq-iff--02fcebf9b217cb3bcab4128b.md) | 88 | `result-track:02fcebf9b217cb3bcab4128b8a53e4c55dae5859a0f895bccb94efa2bc64be52` |
| 12 | `theorem` | [midpoint_pointReflection_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-pointreflection-left--3a9b521d7720ac1d60e4cf57.md) | 94 | `result-track:3a9b521d7720ac1d60e4cf57fdaed2aae55d9c257636ec635dcb6f721468c945` |
| 13 | `theorem` | [midpoint_pointReflection_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-pointreflection-right--cbee55c03819cafef9cc817f.md) | 99 | `result-track:cbee55c03819cafef9cc817feae98674a098fb8b63f78f87bf41a2731b8129db` |
| 14 | `lemma` | [AffineEquiv.midpoint_pointReflection_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/affineequiv-midpoint-pointreflection-left--3679ee690627b25c305ca3ab.md) | 103 | `result-track:3679ee690627b25c305ca3ab456f9802545322297da1a6c854ec4af13732622e` |
| 15 | `lemma` | [AffineEquiv.midpoint_pointReflection_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/affineequiv-midpoint-pointreflection-right--382fddfbd12057e5c988bf81.md) | 107 | `result-track:382fddfbd12057e5c988bf81b6e912d8270de0d94a56a8dd85bd565003d282d2` |
| 16 | `theorem` | [midpoint_vsub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-vsub-left--e9bebe2d8f6b5861450087b5.md) | 112 | `result-track:e9bebe2d8f6b5861450087b529a8b8327d7873391f6aa6f94fc58b3397f900be` |
| 17 | `theorem` | [midpoint_vsub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-vsub-right--c13fedf4086230a233325922.md) | 116 | `result-track:c13fedf4086230a233325922627b4d622eaded115ea5e99caae874105478771f` |
| 18 | `theorem` | [left_vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/left-vsub-midpoint--4023282f802f1964ceab3f6b.md) | 120 | `result-track:4023282f802f1964ceab3f6b64cbd3d76bfc15165ac62ab7be0deff3387a027a` |
| 19 | `theorem` | [right_vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/right-vsub-midpoint--99a88cb01cebdd9e10e5605a.md) | 124 | `result-track:99a88cb01cebdd9e10e5605aedfc3b64a5d8ba4122022cfe2afc4e91cec2cf5d` |
| 20 | `theorem` | [midpoint_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-vsub--5d86b42ddb1d4e984ec1c02d.md) | 127 | `result-track:5d86b42ddb1d4e984ec1c02d39134cf94a2f638d2e6f4766882537b168f7ab46` |
| 21 | `theorem` | [vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/vsub-midpoint--589b3198eba9e3d6c9a84bbe.md) | 133 | `result-track:589b3198eba9e3d6c9a84bbe639d8e85097364d349c057a793a3c6b80733150a` |
| 22 | `theorem` | [midpoint_sub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-sub-left--f9d1ce4235a60653bd678203.md) | 139 | `result-track:f9d1ce4235a60653bd678203c1b319ee9e0e3dc1d108f36ca4d53a6e27ef32ab` |
| 23 | `theorem` | [midpoint_sub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-sub-right--2d61d777eca2ed0946a95141.md) | 143 | `result-track:2d61d777eca2ed0946a95141cf24b70f09402786c20267d83b16fec4defeecf4` |
| 24 | `theorem` | [left_sub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/left-sub-midpoint--a7e2aa70c23a8150a89d91a9.md) | 147 | `result-track:a7e2aa70c23a8150a89d91a9a250b744a7a44e713e241784cd458acadd5fe8fd` |
| 25 | `theorem` | [right_sub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/right-sub-midpoint--a411d2d96022ab392ae3ab48.md) | 151 | `result-track:a411d2d96022ab392ae3ab48f4379b6ff5ddd572547dd033fc768aefb83c2a90` |
| 26 | `theorem` | [midpoint_eq_left_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-eq-left-iff--17ccbcaf74c4d2ae5740b500.md) | 157 | `result-track:17ccbcaf74c4d2ae5740b5001547d231d813f7aa09fad78701a18da322a3dfa0` |
| 27 | `theorem` | [left_eq_midpoint_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/left-eq-midpoint-iff--86af2d00eddc15babbe5fee6.md) | 161 | `result-track:86af2d00eddc15babbe5fee61bbe3640168afcb39355dd22b31cadb1e9ffa1cc` |
| 28 | `theorem` | [midpoint_eq_right_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-eq-right-iff--6741eff229da717754b3ccca.md) | 165 | `result-track:6741eff229da717754b3cccaa24a234a04a8d2623ca6fcbe3a03395f3a9f04f6` |
| 29 | `theorem` | [right_eq_midpoint_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/right-eq-midpoint-iff--331c83e6a21901d1b8e53c41.md) | 169 | `result-track:331c83e6a21901d1b8e53c41d1713f85541c826a977dcb1883a252d39ceec4ce` |
| 30 | `theorem` | [midpoint_eq_midpoint_iff_vsub_eq_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-eq-midpoint-iff-vsub-eq-vsub--b6a5c6bc43448db1628abc52.md) | 172 | `result-track:b6a5c6bc43448db1628abc5286b2a4e9355601d1304edddeb0ed1a0381c78bdc` |
| 31 | `theorem` | [midpoint_eq_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-eq-iff--e2bd0439506616a14baf0ad9.md) | 177 | `result-track:e2bd0439506616a14baf0ad99d80d09452a4276456b91275bf5c1db95567ad46` |
| 32 | `theorem` | [midpoint_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-unique--25b0bf2fbc688418fa1273db.md) | 181 | `result-track:25b0bf2fbc688418fa1273db5581eeacb7dbcb76d5c9517c4e65a6782c7d93e3` |
| 33 | `theorem` | [midpoint_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-self--8c0a50e904f4cd975cb34302.md) | 186 | `result-track:8c0a50e904f4cd975cb343023e7d51073c57c65834d3d1bf403dcbbc9a24aedc` |
| 34 | `theorem` | [midpoint_add_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-add-self--93b9058f1b418e429d14e0c0.md) | 190 | `result-track:93b9058f1b418e429d14e0c072150df4683c4310c1053b3caf403c5512c85d62` |
| 35 | `theorem` | [midpoint_zero_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-zero-add--00a022a96666e5587892f828.md) | 195 | `result-track:00a022a96666e5587892f82859c84cb70711afa4fd7344540c40d07aa401e73e` |
| 36 | `theorem` | [midpoint_eq_smul_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-eq-smul-add--90826e3e1388f0c56533ff56.md) | 198 | `result-track:90826e3e1388f0c56533ff56be1692d6a5a82bd89cfd58dc5799aac295a59678` |
| 37 | `theorem` | [midpoint_self_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-self-neg--6d687c55e3ee1ff92ed0b4be.md) | 203 | `result-track:6d687c55e3ee1ff92ed0b4be8e91478fbed9be58fd331761bced66d3e02e4ccd` |
| 38 | `theorem` | [midpoint_neg_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-neg-self--871488ced5a97335c4c26e18.md) | 207 | `result-track:871488ced5a97335c4c26e18a7e22c25024e748ab7f134d171c3494f9f8b2ba2` |
| 39 | `theorem` | [midpoint_sub_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-sub-add--09684f0b475f4f36b3a5bb1f.md) | 210 | `result-track:09684f0b475f4f36b3a5bb1f2e094591e2317f766a05bdff2a3be9fe90ff50c6` |
| 40 | `theorem` | [midpoint_add_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/midpoint-add-sub--27cb6217f1c5c320a8f605f5.md) | 214 | `result-track:27cb6217f1c5c320a8f605f5e215850df00a35eed755e2c42467201545946a0a` |
| 41 | `def` | [ofMapMidpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/ofmapmidpoint--86b44845d414656e3806e2a8.md) | 225 | `declaration-track:86b44845d414656e3806e2a8b754ffaa1a5b0cccf54e32cd6f174e448a7f34f9` |
| 42 | `theorem` | [coe_ofMapMidpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variantbbee0144e51239cff8f4076c81392836a1562d3fe7d876c6ed508e5d430d1458.lean/declarations/coe-ofmapmidpoint--cd5a0577d4b1dd70699ea644.md) | 238 | `result-track:cd5a0577d4b1dd70699ea644d197a441c1ecbbc37c32ce6bdc81321c9db68a88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
