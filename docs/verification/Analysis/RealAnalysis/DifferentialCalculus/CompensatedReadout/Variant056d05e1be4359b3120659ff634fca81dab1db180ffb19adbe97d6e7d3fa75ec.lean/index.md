# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompensatedReadout.Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "695045ae8ebe63c9041be9a02a6912f701f01e56",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `695045ae8ebe63c9041be9a02a6912f701f01e56`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.ProdL2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/pairstate--970d68013aa11cd21814d3cd.md) | 37 | `declaration-track:970d68013aa11cd21814d3cd845a659d7be23aedec0096f70fb3196e4f43f387` |
| 2 | `def` | [pairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/pairstate--99fbf7ceeb01eb48d595489c.md) | 40 | `declaration-track:99fbf7ceeb01eb48d595489c21bfd785cbaf88c6e6ff1c4a434e6f77ce1e1220` |
| 3 | `def` | [pairSwap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/pairswap--3fa8777c788f10efd893b0fc.md) | 43 | `declaration-track:3fa8777c788f10efd893b0fc850dee5d735ad06b0392594fff24e611c0f21c49` |
| 4 | `theorem` | [pairSwap_pairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/pairswap-pairstate--6df4e6c0d2878c5f684c8bf8.md) | 53 | `result-track:6df4e6c0d2878c5f684c8bf8958933a09213e0620f645f4daf3b171a459ebe18` |
| 5 | `theorem` | [pairSwap_involutive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/pairswap-involutive--24a7207e3fa12d6b87668717.md) | 56 | `result-track:24a7207e3fa12d6b8766871795834d4547ffd47eb4efb6202736d92f9ad1a792` |
| 6 | `def` | [interactionOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/interactionoperator--d6ae1ac6a60ab3e5ac75cf40.md) | 59 | `declaration-track:d6ae1ac6a60ab3e5ac75cf40c2dd4350ddd6e107fd190415ff01c96d0caacfc7` |
| 7 | `theorem` | [interactionOperator_pairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/interactionoperator-pairstate--39fab5bcdd122adf6231a8c6.md) | 63 | `result-track:39fab5bcdd122adf6231a8c643bb880629ff98351869943cde5333f697f4964c` |
| 8 | `theorem` | [interactionOperator_selfAdjoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/interactionoperator-selfadjoint--35ba85b8a8a1cbd9f17a81a6.md) | 68 | `result-track:35ba85b8a8a1cbd9f17a81a609ae9fd22d199a4199f779c58de7861de08dd4be` |
| 9 | `def` | [quadraticReadout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/quadraticreadout--16c3b2c975f9903478cf5a44.md) | 81 | `declaration-track:16c3b2c975f9903478cf5a44ac558ab0da5695c70fbe75585065d582238b94d1` |
| 10 | `def` | [compensatedReadout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/compensatedreadout--e8db474babf4b5913cdc3343.md) | 84 | `declaration-track:e8db474babf4b5913cdc334320e3601d86768735e2066196225c85b159204d6e` |
| 11 | `theorem` | [interactionOperator_readout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/interactionoperator-readout--248077cd5f8b73bb1285c8a3.md) | 88 | `result-track:248077cd5f8b73bb1285c8a38ac75a73dcd68e731335f1ad3f4069c0f0459f17` |
| 12 | `theorem` | [quadraticReadout_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/quadraticreadout-sub--26b4e27ad0343c19ca362f6d.md) | 101 | `result-track:26b4e27ad0343c19ca362f6d2fbd36f86aa96ca77d3db29f216c978707644425` |
| 13 | `theorem` | [real_cross_selfAdjoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/real-cross-selfadjoint--973c503eb61adf287dee2105.md) | 106 | `result-track:973c503eb61adf287dee21057d38083d53cbfc37d4f26deb83e8970ae5273cc8` |
| 14 | `theorem` | [quadraticReadout_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/quadraticreadout-add--cdbc2fd70db2931674489c76.md) | 115 | `result-track:cdbc2fd70db2931674489c76c4b3b78c01e09ab10509aaae5ed23e8bfbafcd2f` |
| 15 | `theorem` | [quadraticReadout_pullback](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/quadraticreadout-pullback--6da09f663dda495a28f83bce.md) | 124 | `result-track:6da09f663dda495a28f83bce01a53c4e968440375ad4673c9563aa80ca117023` |
| 16 | `theorem` | [compensatedReadout_jump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/compensatedreadout-jump--340915ede801f3e495400658.md) | 131 | `result-track:340915ede801f3e4954006585ebf9ab07331cbb51ddd4925b9971e8d368c5de0` |
| 17 | `theorem` | [compensatedReadout_identity_jump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/compensatedreadout-identity-jump--b6ca0cd12a7170dadc1d0dd4.md) | 142 | `result-track:b6ca0cd12a7170dadc1d0dd46c0217fe69df0accad0d0f2e1ae8f67128008df6` |
| 18 | `def` | [observableCommutator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/observablecommutator--74c892307751b84739a0f8f6.md) | 152 | `declaration-track:74c892307751b84739a0f8f65159623d96accfa0f02ff5365155fd88ac360a18` |
| 19 | `theorem` | [signed_work_algebra](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/signed-work-algebra--f39de8bca81c8339bbd239e1.md) | 155 | `result-track:f39de8bca81c8339bbd239e10bd0aea8930cf2a6344fe99294fa2bfa21f5c1a5` |
| 20 | `theorem` | [compensatedReadout_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/compensatedreadout-hasderivat--49903daac15abe9c10821a31.md) | 172 | `result-track:49903daac15abe9c10821a311f740eb556e016d4803d53d90c1757992b6648d8` |
| 21 | `theorem` | [compensatedReadout_hasDerivAt_of_skew](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/compensatedreadout-hasderivat-of-skew--a22c32fa3855e441948221d0.md) | 191 | `result-track:a22c32fa3855e441948221d0c0f54b432d282acc8be48e6e40b839fdb2b3b2a4` |
| 22 | `theorem` | [compensatedReadout_hasDerivAt_of_cancelled_work](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/compensatedreadout-hasderivat-of-cancelled-work--3e5e38bc49f234767c08c099.md) | 205 | `result-track:3e5e38bc49f234767c08c099761706d254f43833c997db071cb87fdcd0bb1ac0` |
| 23 | `def` | [signatureOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/signatureoperator--269c4d02126bef4aaf3f0fd1.md) | 219 | `declaration-track:269c4d02126bef4aaf3f0fd128ca79a72212694f8d4d239240fe113013837a1f` |
| 24 | `theorem` | [signatureOperator_pairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/signatureoperator-pairstate--c5c5b42af122121a0730b37b.md) | 225 | `result-track:c5c5b42af122121a0730b37b73bd128bcec961e2bf14a73bd8a2a500e5620221` |
| 25 | `theorem` | [signatureOperator_readout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/signatureoperator-readout--0379b4aaee1fd006648c3690.md) | 229 | `result-track:0379b4aaee1fd006648c36900fdf11b6f5a1d1de80a340b8386de12a5d6c5077` |
| 26 | `def` | [unitCircleState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/unitcirclestate--af2dec1d4392bf4c4e8a52a9.md) | 239 | `declaration-track:af2dec1d4392bf4c4e8a52a9afb66f8ceff87d4cc64caa152fca4b26b612f3f5` |
| 27 | `theorem` | [unitCircleState_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/unitcirclestate-norm-sq--4bc06451f1bacfae8e771057.md) | 242 | `result-track:4bc06451f1bacfae8e771057f0b02a907143ff03a756666f94ff387e576f526a` |
| 28 | `theorem` | [unitCircleState_readout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/unitcirclestate-readout--61cc106fac5d665d658f71cf.md) | 249 | `result-track:61cc106fac5d665d658f71cfee08f92e8ef81177e5b3d86351fa7c870c42ddce` |
| 29 | `theorem` | [constant_norm_readout_changes](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/constant-norm-readout-changes--bf4df809bf764d73dab49c43.md) | 256 | `result-track:bf4df809bf764d73dab49c430e3c5d601988f5f4bf5f205955f68a5b32b61ba3` |
| 30 | `theorem` | [isometric_jump_increases_readout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/isometric-jump-increases-readout--a71595ee54bf9ae614a93970.md) | 263 | `result-track:a71595ee54bf9ae614a93970ced666db36a9012eabb3bc550e27ee44a6d9428e` |
| 31 | `def` | [growingReadout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/growingreadout--ea41183c842c2ea7da87abec.md) | 273 | `declaration-track:ea41183c842c2ea7da87abec08f337564dea3c1e279fe982eb7d2d1130317f17` |
| 32 | `theorem` | [growingReadout_unit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/growingreadout-unit--e57d02e55a95734c8e73c234.md) | 277 | `result-track:e57d02e55a95734c8e73c234774bdadc8e69aede6e6a88674e4b6ca78b0dce7f` |
| 33 | `theorem` | [growingReadout_exceeds_any_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant056d05e1be4359b3120659ff634fca81dab1db180ffb19adbe97d6e7d3fa75ec.lean/declarations/growingreadout-exceeds-any-budget--6c7c8960513c4cada4971b91.md) | 281 | `result-track:6c7c8960513c4cada4971b910c1451fac7be11e8f5b22c345a8ba8f730ebe345` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
