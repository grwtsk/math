# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveAtlas.Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "748d4cc6f7b1c13d1098a9558b6111f6df22496c",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `748d4cc6f7b1c13d1098a9558b6111f6df22496c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ProvenanceProjection` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.FiniteFeatureGeometry` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteFibreWeights](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/finitefibreweights--92cce92a115cfb91911a1507.md) | 29 | `declaration-track:92cce92a115cfb91911a1507cbd28737ff76f1cff38ee8adcae330c1c54f29e2` |
| 2 | `def` | [mass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/mass--9be08ad7c8bd1d7e738ead64.md) | 42 | `declaration-track:9be08ad7c8bd1d7e738ead6407127ad257587850e08df39553c2f9643808b980` |
| 3 | `theorem` | [mass_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/mass-pos--6a5cb355839e0f050b9eb21d.md) | 44 | `result-track:6a5cb355839e0f050b9eb21d4f6aa98f2eda3f21bdae18fe995c55f84b25ba39` |
| 4 | `theorem` | [mass_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/mass-ne-zero--482759f6c0365c7d0c98dcff.md) | 47 | `result-track:482759f6c0365c7d0c98dcff7d7f06c8d4dec8cbd6820e6646d3d6d41beb8290` |
| 5 | `def` | [mean](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/mean--df2c5375ca7b0fe456077ebd.md) | 51 | `declaration-track:df2c5375ca7b0fe456077ebd8f1a9368d0cfef6fc6f6bd78022332528d2c5867` |
| 6 | `def` | [FibreConstant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/fibreconstant--83fc0c3a239676af8d939145.md) | 55 | `declaration-track:83fc0c3a239676af8d9391455c899ea2ccf4ed6f02b262985d879e72927de280` |
| 7 | `theorem` | [mass_mul_mean](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/mass-mul-mean--1415eb751e2f2a8f4f8dd693.md) | 57 | `result-track:1415eb751e2f2a8f4f8dd69316206088000b73035c7c4f34f0dfbbe0a1465b91` |
| 8 | `theorem` | [mean_constant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/mean-constant--6a45e7d26f77701b1be35219.md) | 61 | `result-track:6a45e7d26f77701b1be352194982a409239991d48bf59b5d05e50096ac4e2429` |
| 9 | `theorem` | [mean_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/mean-add--16f1fc15179cc1f352aa0a59.md) | 67 | `result-track:16f1fc15179cc1f352aa0a59df5d27b3dd1ea60e30682eda2293587ded6f8c01` |
| 10 | `theorem` | [mean_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/mean-smul--8c9b8776597c578ecb6fd9d9.md) | 72 | `result-track:8c9b8776597c578ecb6fd9d94dc929e0bf0b1269f70f831a90dd5d146a3a2b9b` |
| 11 | `def` | [averaging](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/averaging--f1a7acd88cfbe9cb09cdc44d.md) | 81 | `declaration-track:f1a7acd88cfbe9cb09cdc44d9c1fd07caaca9978081d467f5f00427398abb516` |
| 12 | `theorem` | [averaging_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/averaging-apply--043aa1ddbd47f13bd2e2bf62.md) | 89 | `result-track:043aa1ddbd47f13bd2e2bf623df76e5b0109d5742770ae539a83ed80bc9c8b63` |
| 13 | `theorem` | [averaging_fibreConstant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/averaging-fibreconstant--16962545e5be12aeaa4f67fc.md) | 93 | `result-track:16962545e5be12aeaa4f67fc93e8ac5b7378fde971a3a7a5b58f11b21d4113d7` |
| 14 | `theorem` | [averaging_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/averaging-eq-self--abded86d2994973c145be171.md) | 96 | `result-track:abded86d2994973c145be1711252967d9db0de71c21c1fba5e0cb5fa4913d746` |
| 15 | `theorem` | [averaging_eq_self_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/averaging-eq-self-iff--e186989bdb045ea6ff745daf.md) | 104 | `result-track:e186989bdb045ea6ff745daf9da13f70743152b6416633c3b2eff5141eb4db78` |
| 16 | `theorem` | [averaging_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/averaging-idempotent--5c8661fdc42b65d60dc882f9.md) | 110 | `result-track:5c8661fdc42b65d60dc882f9c19022c7bb8e1be1036dc6b1bd33323f0ba73767` |
| 17 | `theorem` | [weighted_residual_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/weighted-residual-sum--f133bdd1ef891a5425d11910.md) | 114 | `result-track:f133bdd1ef891a5425d119100c0e6dd2b00acd2c3af593ee9237cc9a0ec23bb3` |
| 18 | `def` | [positiveForm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/positiveform--2b8ade8db9b49ef1d907edb2.md) | 125 | `declaration-track:2b8ade8db9b49ef1d907edb241f94c3499d3cb9ee6e4250498c9a62f4c88a9d3` |
| 19 | `def` | [flattenObservable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/flattenobservable--2d6a623e4a5dc7e9ef59f132.md) | 147 | `declaration-track:2d6a623e4a5dc7e9ef59f1324b9f6e6ea5ab741720b8f173938f2750783f2d90` |
| 20 | `theorem` | [positiveForm_eq_featureForm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/positiveform-eq-featureform--a85acee2d518c60b1d2f02a2.md) | 155 | `result-track:a85acee2d518c60b1d2f02a2f6e6d7c86c94e21c4b0cc4bf1183206b9d6a0a2f` |
| 21 | `theorem` | [fibreConstant_orthogonal_residual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/fibreconstant-orthogonal-residual--8644eca68a6805af98547d13.md) | 164 | `result-track:8644eca68a6805af98547d139c05396129b6c3733aebc56cd819a5ef1c789c91` |
| 22 | `def` | [projector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/projector--fd000f40ef1a4603a6e3124e.md) | 176 | `declaration-track:fd000f40ef1a4603a6e3124ecc13538407796294239fccc2ff56ade9e0fb3318` |
| 23 | `theorem` | [form_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/form-eq-zero-iff--6c987571c1c0fe2b04a1b17a.md) | 182 | `result-track:6c987571c1c0fe2b04a1b17aef0d76263ccfabc6383e9ef8ab08397afdbb2271` |
| 24 | `theorem` | [quadratic_decomposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/quadratic-decomposition--64853851c1d6c1efd7cb8f48.md) | 197 | `result-track:64853851c1d6c1efd7cb8f48a2978102234000c884eb65a01917e977cf80c0b2` |
| 25 | `theorem` | [averaging_contraction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/averaging-contraction--9e08d544aed1e921696b71b8.md) | 203 | `result-track:9e08d544aed1e921696b71b821851d077e5e0628dc68e2a031c2907462c9ace2` |
| 26 | `theorem` | [residual_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/residual-zero-iff--e65489c44cac7f07b422b32b.md) | 209 | `result-track:e65489c44cac7f07b422b32b4ec3513ecf671cf7e4fa2b9d26d221114a49228f` |
| 27 | `theorem` | [averaging_self_adjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/averaging-self-adjoint--4d7e90e75eeaa5259a4eb492.md) | 215 | `result-track:4d7e90e75eeaa5259a4eb492fb0a640236c665cb1b094ba62d4a0889f91130a5` |
| 28 | `theorem` | [approximation_decomposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/approximation-decomposition--67d30817ffdd6ec4c1aad89a.md) | 231 | `result-track:67d30817ffdd6ec4c1aad89aabe5265a9924579f8b146d229173343b6e021838` |
| 29 | `theorem` | [averaging_minimizes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/averaging-minimizes--a85624c701c2fe1f171e7a66.md) | 242 | `result-track:a85624c701c2fe1f171e7a66642e5e4d5d981766f10a9e528f1a553d295f1a3d` |
| 30 | `theorem` | [minimal_error_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/minimal-error-iff--8590cd80c7a212cb67d4a1dd.md) | 251 | `result-track:8590cd80c7a212cb67d4a1dd0b26f44ee2f3fdd8981753698e489734ce6cc22a` |
| 31 | `theorem` | [fibreConstant_iff_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/fibreconstant-iff-factors--4cc54ec68f5f4ba9914f53ae.md) | 266 | `result-track:4cc54ec68f5f4ba9914f53ae3786b9400ae2e77f045d852ea8888f1c02ece256` |
| 32 | `theorem` | [averaging_coarser](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/averaging-coarser--235314a5ca993884e35a67c6.md) | 275 | `result-track:235314a5ca993884e35a67c66363ab63a737823baffacfc7b901a2bf03a9c15d` |
| 33 | `theorem` | [coarser_averaging](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/coarser-averaging--da4e33323e07aa23a54bc77f.md) | 282 | `result-track:da4e33323e07aa23a54bc77fba2f9cd6dbb62edfe5ec3396e8fc45d3fcd5d9c6` |
| 34 | `theorem` | [coarser_error_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/coarser-error-monotone--bc0970b856a35d9ccca92c3b.md) | 298 | `result-track:bc0970b856a35d9ccca92c3b91875ec2952038fa26d20428692308c530c52d2e` |
| 35 | `def` | [unequalWeights](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/unequalweights--7a9d4ee2ed0717abb0f9d130.md) | 314 | `declaration-track:7a9d4ee2ed0717abb0f9d1305b61e6d9d4ed2b25534cd884f56a34f5165b74c1` |
| 36 | `def` | [varying](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/varying--57bb04c69ee1dea47ebec1c7.md) | 319 | `declaration-track:57bb04c69ee1dea47ebec1c77aa9a7b646db7512c9515e9d7eaf1fcc071717f9` |
| 37 | `theorem` | [unequal_average](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/unequal-average--15dbcb59fdb39cebdfd6fc94.md) | 322 | `result-track:15dbcb59fdb39cebdfd6fc94c4272abd44add9fe1b0f3cc61a47f073ea00533f` |
| 38 | `theorem` | [unequal_residual_energy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/unequal-residual-energy--19b93f3825bf616637071db6.md) | 328 | `result-track:19b93f3825bf616637071db6a17f9f7132aa919c68494b71b6e1451b28c92b72` |
| 39 | `theorem` | [varying_not_fixed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/varying-not-fixed--48009c5948e0d773abde86bf.md) | 336 | `result-track:48009c5948e0d773abde86bfb2afcf5dc408eb8bfc698dfadf684c4f943767ff` |
| 40 | `theorem` | [singleton_fibres_retain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant67daff1f866eec17c624ef1cccfd28a72c9192d1a669662e0c4af502f3e4fa4c.lean/declarations/singleton-fibres-retain--a93a1fcfb209fb656f8ae66e.md) | 343 | `result-track:a93a1fcfb209fb656f8ae66ea8ea2dd6806f0e469ff407485793ff80f032f8ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
