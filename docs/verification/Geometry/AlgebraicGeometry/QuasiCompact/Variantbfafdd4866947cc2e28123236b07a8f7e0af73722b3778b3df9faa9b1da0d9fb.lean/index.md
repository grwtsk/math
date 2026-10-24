# Verification target: GRWTSK.Geometry.AlgebraicGeometry.QuasiCompact.Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "204fbbc4c45b97912d69fc5fe5ceaa0b3b166663",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `204fbbc4c45b97912d69fc5fe5ceaa0b3b166663`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.UnderlyingMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Spectral.Hom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Limits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiCompact](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/quasicompact--6975894bb55ecd19c4d09c73.md) | 39 | `declaration-track:6975894bb55ecd19c4d09c738a0c426eb1c44951f6d8f6b328329a7e017f505e` |
| 2 | `theorem` | [quasiCompact_iff_spectral](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/quasicompact-iff-spectral--5cbf503848cc0707f90bbeca.md) | 43 | `result-track:5cbf503848cc0707f90bbeca6e27f5c4d80e67cf76a5005a8eacabfa2a34f99d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/instance--348eff973ade28bec65a7479.md) | 46 | `declaration-track:348eff973ade28bec65a74796dcd655cc1cde977c20402deab28036ed7e7c933` |
| 4 | `instance` | [quasiCompact_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/quasicompact-comp--abb561731b2a2b8179ca9d21.md) | 56 | `declaration-track:abb561731b2a2b8179ca9d217c93f4957dfeff665be1b299fb4160719bff964d` |
| 5 | `theorem` | [isCompactOpen_iff_eq_finset_affine_union](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/iscompactopen-iff-eq-finset-affine-union--a6b8516acc7a929770fc1786.md) | 65 | `result-track:a6b8516acc7a929770fc1786346f0b3d1586375d4a72d3631cf38052688266eb` |
| 6 | `theorem` | [isCompactOpen_iff_eq_basicOpen_union](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/iscompactopen-iff-eq-basicopen-union--c2f74442aa5a8717c5addd99.md) | 72 | `result-track:c2f74442aa5a8717c5addd99bac54e8e93d9063651bdd4ed4569a78e8e57fbf7` |
| 7 | `theorem` | [quasiCompact_iff_forall_affine](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/quasicompact-iff-forall-affine--4cc77c08a489c7e9717e9c01.md) | 78 | `result-track:4cc77c08a489c7e9717e9c015b62a6e8294641632bce9b6d02d8d02c93fc36a5` |
| 8 | `theorem` | [isCompact_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/iscompact-basicopen--01d25852bd7fc297a5e30cd7.md) | 88 | `result-track:01d25852bd7fc297a5e30cd7e93632bbfc2e1ee45ddf13bea0d529a5460571b3` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/instance--7d3d074330824f66e14598a7.md) | 119 | `declaration-track:7d3d074330824f66e14598a7c5bd5146fc1c98f03708da7300a12ce985744054` |
| 10 | `theorem` | [quasiCompact_over_affine_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/quasicompact-over-affine-iff--79171d6bab26173477cfc407.md) | 146 | `result-track:79171d6bab26173477cfc407b0d63534f31d19739f89059ceb129f930a7f9856` |
| 11 | `theorem` | [compactSpace_iff_quasiCompact](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/compactspace-iff-quasicompact--aa6eb22a236ba9c2838e899f.md) | 150 | `result-track:aa6eb22a236ba9c2838e899f0bfa98c985fc1f3605c69f76fd9d9ed417e7b1ac` |
| 12 | `lemma` | [QuasiCompact.compactSpace_of_compactSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/quasicompact-compactspace-of-compactspace--34b414afcd1e369b85c3f592.md) | 154 | `result-track:34b414afcd1e369b85c3f592fe916dd5c75a5e447f6e49dc6a219b7fbb0e7481` |
| 13 | `instance` | [quasiCompact_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/quasicompact-isstableundercomposition--1fb7a815e71aba6c6f2b1960.md) | 160 | `declaration-track:1fb7a815e71aba6c6f2b1960e4a21e812d98e09dcd16ac0c3f5d5c72477e8509` |
| 14 | `instance` | [quasiCompact_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/quasicompact-isstableunderbasechange--4172cb379332f554baa75e6e.md) | 164 | `declaration-track:4172cb379332f554baa75e6ea279d25c55b017ef913ced4f035a5c524044dc86` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/instance--709ead9944cd0c4a20f4ae5f.md) | 177 | `declaration-track:709ead9944cd0c4a20f4ae5f2abf292dd0097f4c4d358c3e91c0c86f6db70b3b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/instance--fdac9a8cda8078c74ff33fc3.md) | 180 | `declaration-track:fdac9a8cda8078c74ff33fc333b25b002f77c50645e51384288b5f71ac528524` |
| 17 | `lemma` | [compactSpace_iff_exists](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/compactspace-iff-exists--5b58d1b0af643b59f46d8316.md) | 183 | `result-track:5b58d1b0af643b59f46d83160cbf3694f7148140b2fc543f6238be173f98b27b` |
| 18 | `lemma` | [isCompact_iff_exists](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/iscompact-iff-exists--668edcb2e865aea87637c551.md) | 194 | `result-track:668edcb2e865aea87637c5514efcb340adfec6c1887b456f01592b3705a58579` |
| 19 | `lemma` | [isClosedMap_iff_specializingMap](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/isclosedmap-iff-specializingmap--c7269a4ade80d6e9aa704e8e.md) | 205 | `result-track:c7269a4ade80d6e9aa704e8ea6d68a1b7e2b7d84e9a04c7673cbf15ca93c7bce` |
| 20 | `theorem` | [compact_open_induction_on](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/compact-open-induction-on--8a54886374d20e5f9b7c53b6.md) | 234 | `result-track:8a54886374d20e5f9b7c53b6113e6b9d49ab2645e518997678a12ad7ff0b52c6` |
| 21 | `theorem` | [exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isAffineOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/exists-pow-mul-eq-zero-of-res-basicopen-eq-zero-of-isaffineopen--145180a384aba9b4f983b71e.md) | 252 | `result-track:145180a384aba9b4f983b71e1641325e0e3d99b67ec8600e2c2e5a684872b3c4` |
| 22 | `theorem` | [exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/exists-pow-mul-eq-zero-of-res-basicopen-eq-zero-of-iscompact--ed827cc1c9b4eacfec8a2707.md) | 269 | `result-track:ed827cc1c9b4eacfec8a2707e700f79875dff0f969bbba1271b187afa81c30c6` |
| 23 | `lemma` | [Scheme.isNilpotent_iff_basicOpen_eq_bot_of_isCompact](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/scheme-isnilpotent-iff-basicopen-eq-bot-of-iscompact--3d9aab82cc00682accccc0fe.md) | 315 | `result-track:3d9aab82cc00682accccc0fe585decee33cb2118ae3b55a55d521fa65a7baaf3` |
| 24 | `lemma` | [Scheme.isNilpotent_iff_basicOpen_eq_bot](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/scheme-isnilpotent-iff-basicopen-eq-bot--6dc622b57a37b42174ffe89c.md) | 333 | `result-track:6dc622b57a37b42174ffe89ce0caec9dbe26ca535dae1bebd43a705da692493f` |
| 25 | `lemma` | [Scheme.zeroLocus_eq_univ_iff_subset_nilradical_of_isCompact](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/scheme-zerolocus-eq-univ-iff-subset-nilradical-of-iscompact--d4b3faa9779ab863e7294aef.md) | 340 | `result-track:d4b3faa9779ab863e7294aef1576f73ef5d6ae4ea9055a8fef26b8a4374521ca` |
| 26 | `lemma` | [Scheme.zeroLocus_eq_univ_iff_subset_nilradical](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean/declarations/scheme-zerolocus-eq-univ-iff-subset-nilradical--58c1bf8074a091bb985fb28e.md) | 348 | `result-track:58c1bf8074a091bb985fb28e70c5aba1493ab478ef4c6086a47578e926c3c3a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
