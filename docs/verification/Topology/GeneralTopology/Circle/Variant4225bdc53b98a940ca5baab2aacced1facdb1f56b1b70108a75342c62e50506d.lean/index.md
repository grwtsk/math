# Verification target: GRWTSK.Topology.GeneralTopology.Circle.Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93f6f7a263e4329d245efc59dc74078093012b85",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93f6f7a263e4329d245efc59dc74078093012b85`.

Source path: `GRWTSK/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.UnitBall` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/circle--26ef15f477097633345ac6b4.md) | 44 | `declaration-track:26ef15f477097633345ac6b485fadd4a021ecbec48798cd4dbf144ad985506c4` |
| 2 | `theorem` | [mem_circle_iff_abs](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/mem-circle-iff-abs--d55394daaa7fc50486aedc0a.md) | 49 | `result-track:d55394daaa7fc50486aedc0a408cda29b41a0f6d8cbee8f779e5e2e5b76fe92a` |
| 3 | `theorem` | [circle_def](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/circle-def--a607c263b4687baa5ac92dd2.md) | 53 | `result-track:a607c263b4687baa5ac92dd2ddf761b233feefaea7193362faeccbb0785b23e5` |
| 4 | `theorem` | [abs_coe_circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/abs-coe-circle--781ed3fdee99aa1cf5d42b6a.md) | 58 | `result-track:781ed3fdee99aa1cf5d42b6a776f51333805ffb933953ab7eb189a4901d11838` |
| 5 | `theorem` | [mem_circle_iff_normSq](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/mem-circle-iff-normsq--f6e0108ca0500941824cb466.md) | 62 | `result-track:f6e0108ca0500941824cb4666acffdf1f45928dedbfcee8aefa42f6cf0d9049d` |
| 6 | `theorem` | [normSq_eq_of_mem_circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/normsq-eq-of-mem-circle--9b7199bcf7fbbbea42b0b66d.md) | 66 | `result-track:9b7199bcf7fbbbea42b0b66d226e9f4b3dc3ae77e0bc4c537345d069e0b4fcb4` |
| 7 | `theorem` | [ne_zero_of_mem_circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/ne-zero-of-mem-circle--7396b12c2181e093ca29093f.md) | 69 | `result-track:7396b12c2181e093ca29093fb3daae31adb3cd880b2724dd2ac84463271ef3c6` |
| 8 | `instance` | [commGroup](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/commgroup--8293c1f3d98c1fbc164c356e.md) | 73 | `declaration-track:8293c1f3d98c1fbc164c356e2e5398d5d5f14dd632d184a6c7b7e7966b146212` |
| 9 | `theorem` | [coe_inv_circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/coe-inv-circle--7f11ab2773e2f18f9f940003.md) | 77 | `result-track:7f11ab2773e2f18f9f940003baceee4662b707254419308e5d21db660b3b8cd6` |
| 10 | `theorem` | [coe_inv_circle_eq_conj](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/coe-inv-circle-eq-conj--592fd27d53bbe3766f0b6b11.md) | 81 | `result-track:592fd27d53bbe3766f0b6b11a76ac4a4da68416d0c3943e06e53859e166c17f5` |
| 11 | `theorem` | [coe_div_circle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/coe-div-circle--39ac9702da0e0fa5051246e9.md) | 86 | `result-track:39ac9702da0e0fa5051246e95188b0c31136ba0c88421b1b3e112c13496dfee5` |
| 12 | `def` | [circle.toUnits](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/circle-tounits--321093bacc49871cd36c74c4.md) | 91 | `declaration-track:321093bacc49871cd36c74c4292ced8c233103836eb6625843da771cded6d40b` |
| 13 | `theorem` | [circle.toUnits_apply](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/circle-tounits-apply--5dc6f16c14c58c34ba95e729.md) | 97 | `result-track:5dc6f16c14c58c34ba95e7291256fd8360b7b0871ed0cc5896b8373818b92869` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/instance--ea3e280d55a16206d4836604.md) | 102 | `declaration-track:ea3e280d55a16206d483660490c6812446cb715c4c5142437c0a7f8e316ea51e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/instance--ff0973f1f52410765fbd6d07.md) | 105 | `declaration-track:ff0973f1f52410765fbd6d07fe699bdb64bc3efc3bce81e3467ff04340bd2f4a` |
| 16 | `def` | [circle.ofConjDivSelf](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/circle-ofconjdivself--9c39956ac69445724dd3d1c0.md) | 110 | `declaration-track:9c39956ac69445724dd3d1c07f78745207e0e9545b47167338bb023ef5799f12` |
| 17 | `def` | [expMapCircle](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/expmapcircle--3a370100a7b844f598a5b4b5.md) | 116 | `declaration-track:3a370100a7b844f598a5b4b52f923d7c181c3a8bec339eae78f2720001886f0b` |
| 18 | `theorem` | [expMapCircle_apply](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/expmapcircle-apply--a5b05159c0fb655e2a2d8c92.md) | 121 | `result-track:a5b05159c0fb655e2a2d8c9253167d657fe62d778d8a323d41fc63f9b492d30e` |
| 19 | `theorem` | [expMapCircle_zero](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/expmapcircle-zero--0cf7377d530b36629ed4329b.md) | 126 | `result-track:0cf7377d530b36629ed4329b776eeba0d99b94df3cd00940f6af91c4b7219f2a` |
| 20 | `theorem` | [expMapCircle_add](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/expmapcircle-add--756e7684212a60515b943bc5.md) | 132 | `result-track:756e7684212a60515b943bc5f0ab68f1e636a29f4582715ad189cc8b55f1a37f` |
| 21 | `def` | [expMapCircleHom](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/expmapcirclehom--6911ce955c5155c150dd9169.md) | 140 | `declaration-track:6911ce955c5155c150dd91693caf985206fea616d54fdfe999b1998330d5bc00` |
| 22 | `theorem` | [expMapCircle_sub](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/expmapcircle-sub--2496d67126b781c5e7e09901.md) | 147 | `result-track:2496d67126b781c5e7e099019a12b130e36c0657d9aa3f646e679f1c3a64141a` |
| 23 | `theorem` | [expMapCircle_neg](../../../../../mathematics/Topology/GeneralTopology/Circle/Variant4225bdc53b98a940ca5baab2aacced1facdb1f56b1b70108a75342c62e50506d.lean/declarations/expmapcircle-neg--9858cad21a3d6be3efbc87d0.md) | 152 | `result-track:9858cad21a3d6be3efbc87d0fc7fda96524bf500cf67b35122c2ac438ba759ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
