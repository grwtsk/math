# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointDerivatives.Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a0e14820bd15959c2ef6d64a6c1c9993e3f530a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a0e14820bd15959c2ef6d64a6c1c9993e3f530a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `EndpointExpansion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointFirstPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpointfirstpolynomial--c7addd0ca66eb918f7019d96.md) | 26 | `declaration-track:c7addd0ca66eb918f7019d9619428003944c81dd9caa339c4d2b848b9a05b8ea` |
| 2 | `def` | [endpointSecondPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpointsecondpolynomial--d93af6329c7f3cac0781cdba.md) | 55 | `declaration-track:d93af6329c7f3cac0781cdba40f534f0d278866c0c86692d992965bc09cc704c` |
| 3 | `def` | [endpointFullSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpointfullslope--de8db6d9786b409b065be471.md) | 84 | `declaration-track:de8db6d9786b409b065be4715374cec3afe8aa511aff5101e472b3ae43197be1` |
| 4 | `def` | [endpointFullCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpointfullcurvature--0ba8c49cd18a5111c0825777.md) | 87 | `declaration-track:0ba8c49cd18a5111c08257771a5b3057f76a0620b5c291e40c92ab680b0d0ea5` |
| 5 | `theorem` | [endpointFullPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpointfullpolynomial-contdiff--ec283355b7b5c1048b618a74.md) | 90 | `result-track:ec283355b7b5c1048b618a743ab4e39a537f5845de4cb760ba9372549b728db3` |
| 6 | `theorem` | [endpointFirstPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpointfirstpolynomial-contdiff--fd8e43026974c5626f496cbc.md) | 94 | `result-track:fd8e43026974c5626f496cbc0247461a6d4e7a2b673f627234438413661c1653` |
| 7 | `theorem` | [endpoint_full_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpoint-full-deriv--f24f19f6ae2baf2e0df292b7.md) | 98 | `result-track:f24f19f6ae2baf2e0df292b78e5b095e3bbd127e9266f989499908e46b4c15b6` |
| 8 | `theorem` | [endpoint_first_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpoint-first-deriv--7f1685f98c0a6a333aa8a637.md) | 104 | `result-track:7f1685f98c0a6a333aa8a63783b05d0f7d2e1184bc0df09ed3f5d9e9c08b3594` |
| 9 | `theorem` | [endpoint_full_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpoint-full-hasderivat--db5eba3ef65a5e71077f1d6a.md) | 110 | `result-track:db5eba3ef65a5e71077f1d6a6475b5b3398a4f06ae752ac4a742cd380cc0b146` |
| 10 | `theorem` | [endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpoint-first-hasderivat--bb660dc5e15f027f912747d2.md) | 115 | `result-track:bb660dc5e15f027f912747d2992ca67222ee8dca18b0c033feae5f34cb943628` |
| 11 | `theorem` | [endpoint_slope_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpoint-slope-zero--cbe48a0d7cd401af1434ce1f.md) | 120 | `result-track:cbe48a0d7cd401af1434ce1fea0d102c8ca15478c14926d11c2909e19efa56ab` |
| 12 | `theorem` | [endpoint_curvature_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpoint-curvature-zero--8e60181314f5214a92f52904.md) | 124 | `result-track:8e60181314f5214a92f52904b28abb093c9b9ec146bc4663a3957f5c3af0536a` |
| 13 | `theorem` | [endpoint_slope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpoint-slope-continuous--4382fc57c02eaf21a5351124.md) | 130 | `result-track:4382fc57c02eaf21a5351124e2613fbbaf5fb8821aa67f64bbc066aa314e2a72` |
| 14 | `theorem` | [endpoint_curvature_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpoint-curvature-continuous--31dca2290c673d933c929e68.md) | 134 | `result-track:31dca2290c673d933c929e687170f7549128b08b20724800d6774da41f04b30b` |
| 15 | `theorem` | [endpoint_slope_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpoint-slope-uniform-remainder--82214a0dc0bd6ab2bad7e915.md) | 140 | `result-track:82214a0dc0bd6ab2bad7e9158502f5d306f4b7f72279656f148d700c1762cb12` |
| 16 | `theorem` | [endpoint_curvature_uniform_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/endpoint-curvature-uniform-remainder--2a4ae47b6c6907a50913f354.md) | 153 | `result-track:2a4ae47b6c6907a50913f3547265ef038ed4f9e8afd848861c4f6391d638a595` |
| 17 | `theorem` | [actual_endpoint_model_eventuallyEq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/actual-endpoint-model-eventuallyeq--47b24080ac0c0df1a01725bf.md) | 168 | `result-track:47b24080ac0c0df1a01725bff6cf8ad56fe81874ed7febb5cb2c487c5beb77b6` |
| 18 | `theorem` | [actual_endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/actual-endpoint-first-hasderivat--986f76ca983437d4f6555ca1.md) | 184 | `result-track:986f76ca983437d4f6555ca11e51d157720bd929d664751b1edadc9e848e3798` |
| 19 | `theorem` | [actual_endpoint_second_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/actual-endpoint-second-hasderivat--6725cc5f0ec71423455c2ae6.md) | 199 | `result-track:6725cc5f0ec71423455c2ae61004a29f9aeb3183fc5c8d50cf419b19d97f429f` |
| 20 | `theorem` | [actual_endpoint_uniform_derivative_remainders](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/actual-endpoint-uniform-derivative-remainders--99fc6db5a510e531e6967e22.md) | 221 | `result-track:99fc6db5a510e531e6967e22e4836273e2a698285180138e04dbb4fc62192c96` |
| 21 | `theorem` | [actual_endpoint_strict_phase_eventually](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivatives/Variant081ff995e4b4bafe72c39dcc1da4931569d1833723b39b7b006b1c2755fa74b8.lean/declarations/actual-endpoint-strict-phase-eventually--8dc6ed89dea153908f1646bc.md) | 235 | `result-track:8dc6ed89dea153908f1646bcc3091432e320bbc331fe60f60180c9d81c79dfeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
