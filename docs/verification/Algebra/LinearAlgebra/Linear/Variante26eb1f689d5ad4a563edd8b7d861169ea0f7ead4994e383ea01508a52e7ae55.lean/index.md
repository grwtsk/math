# Verification target: GRWTSK.Algebra.LinearAlgebra.Linear.Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b2fae72ab752283205fe21fc477051e9547fa70",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b2fae72ab752283205fe21fc477051e9547fa70`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Weights.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LinearWeights](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/linearweights--5131c373f2a3e52eeca4d5a3.md) | 51 | `declaration-track:5131c373f2a3e52eeca4d5a3c43db2ccb127d66bf6a4bfb7250e5229af9a9b9f` |
| 2 | `def` | [toLinear](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/tolinear--632826ad85d89b7192e134b5.md) | 62 | `declaration-track:632826ad85d89b7192e134b55d9ca4a6261b0d6fa46fd8502faf9d4b4a84d9c6` |
| 3 | `instance` | [instCoeLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/instcoelinearmap--43766959d22838fa2cf341d0.md) | 67 | `declaration-track:43766959d22838fa2cf341d02b3f31f78839ad63a35fd7d6be2536efb80b4625` |
| 4 | `instance` | [instLinearMapClass](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/instlinearmapclass--44e2401535b1e8f4ef8d1d1d.md) | 70 | `declaration-track:44e2401535b1e8f4ef8d1d1d5cfb3f7cf7d1a654e982a425953584c6f6a2d660` |
| 5 | `lemma` | [apply_lie](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/apply-lie--3892c2cc82255b8b2f54bacf.md) | 77 | `result-track:3892c2cc82255b8b2f54bacfbd97522b4c44101d202f83383568c21c071f588e` |
| 6 | `lemma` | [coe_coe](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/coe-coe--d35a295dfcc43158b9460a3c.md) | 81 | `result-track:d35a295dfcc43158b9460a3c026e544ade41b9d896a4f7abefd86c37d2d8b65f` |
| 7 | `lemma` | [coe_toLinear_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/coe-tolinear-eq-zero-iff--7014e31838c48450904a6b84.md) | 83 | `result-track:7014e31838c48450904a6b84d4d66317b3deffaafcf0fee8782095ecbeb6c7a5` |
| 8 | `lemma` | [coe_toLinear_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/coe-tolinear-ne-zero-iff--bcc05129e9d55b30fdc46d07.md) | 86 | `result-track:bcc05129e9d55b30fdc46d0700ed3df33ff8d8ceeb47d8b66044c8ee5b931ccf` |
| 9 | `abbrev` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/ker--e5e344dee88895f2050f0ac8.md) | 89 | `declaration-track:e5e344dee88895f2050f0ac84d1bda2b188a6006b9f1ccf1676ddb8d7e13ae40` |
| 10 | `instance` | [instLinearWeightsOfIsLieAbelian](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/instlinearweightsofislieabelian--9899ae37c9adc1781f237c54.md) | 94 | `declaration-track:9899ae37c9adc1781f237c54a9ca6a9207398b6ae0ee9949723c1b4a546be721` |
| 11 | `lemma` | [trace_comp_toEnd_genWeightSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/trace-comp-toend-genweightspace-eq--4fb2870219c1810a9e265b97.md) | 120 | `result-track:4fb2870219c1810a9e265b977fae10402c92f6d4155512b9a3dbe605fc516396` |
| 12 | `lemma` | [zero_lt_finrank_genWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/zero-lt-finrank-genweightspace--25e4dc9ffc6aa727a8d4a634.md) | 132 | `result-track:25e4dc9ffc6aa727a8d4a6348aef970d5e592542034ee49be2a01d398830d1ed` |
| 13 | `instance` | [instLinearWeightsOfCharZero](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/instlinearweightsofcharzero--4b6878c6e175aef1c9de7a4a.md) | 139 | `declaration-track:4b6878c6e175aef1c9de7a4a3ff0a8f4e5b29256e8fb0ad5f142a832244ddfd3` |
| 14 | `def` | [shiftedGenWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/shiftedgenweightspace--d2527503ea19870f7a6e09d6.md) | 158 | `declaration-track:d2527503ea19870f7a6e09d6897fa448602101261be75492c89be84422975dba` |
| 15 | `lemma` | [aux](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/aux--bb4e2ce5faf717c3ab702a9b.md) | 162 | `result-track:bb4e2ce5faf717c3ab702a9b6108b0256d26da81cf613fd52b0a7494eaaaf41f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/instance--ddcbf7d0ede1d9e33a711773.md) | 167 | `declaration-track:ddcbf7d0ede1d9e33a71177363e23cb011cef6ff85aad724cf2d87b1e348e9e0` |
| 17 | `lemma` | [coe_lie_shiftedGenWeightSpace_apply](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/coe-lie-shiftedgenweightspace-apply--cbbe98f995dbc9b34c60c5ac.md) | 183 | `result-track:cbbe98f995dbc9b34c60c5ac256e1824ffb0a5f1c6cf97e19668f790def50850` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/instance--2b54ad5e9cb14cebed485cdf.md) | 188 | `declaration-track:2b54ad5e9cb14cebed485cdf4ca354cfde53bc0fe72c507dd85835aa5c5f8957` |
| 19 | `def` | [shift](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/shift--98197994aeb160e5a64a7b17.md) | 206 | `declaration-track:98197994aeb160e5a64a7b17c4f0e6ccff290a6beb96b0ec4f146fed1e6e3f38` |
| 20 | `lemma` | [toEnd_eq](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/toend-eq--db9f3c4019870cd25de726c3.md) | 208 | `result-track:db9f3c4019870cd25de726c3ea9a9253fa47c10b84ef0e6ccd476d11f8ad0793` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/instance--f350b5d181fe5a78868ad18a.md) | 222 | `declaration-track:f350b5d181fe5a78868ad18a7c22bd65c838d60f430409b6656890f26d8e04e4` |
| 22 | `lemma` | [exists_forall_lie_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/exists-forall-lie-eq-smul--328a9b2a953fd53b011fdb8f.md) | 231 | `result-track:328a9b2a953fd53b011fdb8f90b0e12b83a36b1cc1d599cdaa256c126ff21c0c` |
| 23 | `lemma` | [exists_nontrivial_weightSpace_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/declarations/exists-nontrivial-weightspace-of-isnilpotent--429a33eee04f63f412f9d0f7.md) | 246 | `result-track:429a33eee04f63f412f9d0f72893676d1073ee204cfac5104bacb65c801ee649` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
