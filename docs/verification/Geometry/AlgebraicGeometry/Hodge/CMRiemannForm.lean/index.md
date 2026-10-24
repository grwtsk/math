# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMRiemannForm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e1f756b1151c106689a4db43717cda3e51f65f5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMRiemannForm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e1f756b1151c106689a4db43717cda3e51f65f5`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMRiemannForm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMRiemannForm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMLatticePolarization`](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRealCoordinate](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/isrealcoordinate--4ea9c6046d22f2e37ed54d30.md) | 44 | `declaration-track:4ea9c6046d22f2e37ed54d301dfabf5bf0bc5d58fc7c8c119b6ff552937596c6` |
| 2 | `def` | [riemannForm](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/riemannform--74c74dff9d52d832dff71d01.md) | 50 | `declaration-track:74c74dff9d52d832dff71d0103ecd3ea19390d6ef0ceb5cad62d70f4ce5e9822` |
| 3 | `theorem` | [weilOperator_preserves_real](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/weiloperator-preserves-real--753c9408f1d2d479b3eab4df.md) | 57 | `result-track:753c9408f1d2d479b3eab4df9f1fe609dfabd93034ff74ce6bfc602a04157a12` |
| 4 | `theorem` | [weilOperator_sq_neg](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/weiloperator-sq-neg--92375a6259cc3ca186823236.md) | 67 | `result-track:92375a6259cc3ca18682323684c2d66f235db8ec18999b071f84b5e8957a0a1f` |
| 5 | `def` | [conjugationEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/conjugationequiv--9480d687d808849bdd710819.md) | 75 | `declaration-track:9480d687d808849bdd710819531c62ce1db16b47093682db3e8f210dc49694cb` |
| 6 | `theorem` | [embedding_xi_conjLabel](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/embedding-xi-conjlabel--e4b0d52f1348cebdd676e5ef.md) | 83 | `result-track:e4b0d52f1348cebdd676e5ef0444939895e75022f9d11b5b67fbdefca45ee9ab` |
| 7 | `theorem` | [complexifiedTracePairing_skew](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/complexifiedtracepairing-skew--218e890e758ba6adcced1ae2.md) | 95 | `result-track:218e890e758ba6adcced1ae20fc28276e62f6aeb24aa59c6bdc7736a2ffbc57f` |
| 8 | `theorem` | [complexifiedTracePairing_self](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/complexifiedtracepairing-self--acda0a64bf0fbce92d23ac18.md) | 125 | `result-track:acda0a64bf0fbce92d23ac1800a6b4d82871d95359a35300415d4f0a1f4904f4` |
| 9 | `theorem` | [riemannForm_self](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/riemannform-self--7c586dd0d0509457e05dff8f.md) | 135 | `result-track:7c586dd0d0509457e05dff8f4ad6204ea7b30ce8179a45f32c085c49fb3df198` |
| 10 | `theorem` | [complexifiedTracePairing_weil_invariant](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/complexifiedtracepairing-weil-invariant--ea229d96084e9430cd524659.md) | 146 | `result-track:ea229d96084e9430cd524659efd78c3c944d688c04010e2eaf4c8390867051e5` |
| 11 | `theorem` | [riemannForm_weil_invariant](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/riemannform-weil-invariant--3f47a2a8ee81d7fdf7407972.md) | 170 | `result-track:3f47a2a8ee81d7fdf74079729e06126bf8b9856b8d84eabfe10ae108d1b6428e` |
| 12 | `theorem` | [riemannForm_weil_self_eq_energy](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/riemannform-weil-self-eq-energy--940480306b44f7085b3ab356.md) | 181 | `result-track:940480306b44f7085b3ab35627120262b1e59b8169a5b0b3ce5d86de8ec269c3` |
| 13 | `theorem` | [riemannForm_weil_self_pos](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/riemannform-weil-self-pos--31a577fcaa4686c5f52529fb.md) | 195 | `result-track:31a577fcaa4686c5f52529fbda96339d013dfdc7137cd3c31eca7c1827b8e3c2` |
| 14 | `def` | [latticeCoordinates](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/latticecoordinates--145344d5eeeebb7bcfc992b5.md) | 206 | `declaration-track:145344d5eeeebb7bcfc992b5e3aeda49c924993748f554742ee843de6ebe1dae` |
| 15 | `theorem` | [fieldCoordinates_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/fieldcoordinates-injective--bec446741d931ddb963353e3.md) | 210 | `result-track:bec446741d931ddb963353e324af5e497002ed33f757d5d51c75682796f275e3` |
| 16 | `theorem` | [latticeCoordinates_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/latticecoordinates-injective--f02342dd02e0f0b75d600637.md) | 218 | `result-track:f02342dd02e0f0b75d60063761ef4a179e0ec8f1553d2db199bbf522cfbd32d8` |
| 17 | `theorem` | [latticeCoordinates_real](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/latticecoordinates-real--4c8368d9eafd30beae9baf55.md) | 223 | `result-track:4c8368d9eafd30beae9baf555250f0f45c73a22641e73cc221454988c940a701` |
| 18 | `theorem` | [riemannForm_lattice_eq_trace](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/riemannform-lattice-eq-trace--c35496d6375fba9ffeb58d2e.md) | 231 | `result-track:c35496d6375fba9ffeb58d2e3a2342b819baaeb40aaa2ec0dda5f1ff5d8dac5b` |
| 19 | `theorem` | [scaled_riemannForm_lattice_integral](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/scaled-riemannform-lattice-integral--ae8cd4915f1d1a11a26b9f87.md) | 243 | `result-track:ae8cd4915f1d1a11a26b9f873497fad126e0ccc96ad4354de468c6d7709a3a39` |
| 20 | `theorem` | [riemannForm_lattice_self](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/riemannform-lattice-self--02be36b46e52da8f84916e8f.md) | 254 | `result-track:02be36b46e52da8f84916e8fcc35b3239b56ba94dad87d88a9099cf094feec83` |
| 21 | `structure` | [PreRiemannBilinearData](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/preriemannbilineardata--d1fb6efbfd1a96fe2bd27697.md) | 266 | `declaration-track:d1fb6efbfd1a96fe2bd276975d5ed62f07076fd979db05df403977a09c1742aa` |
| 22 | `def` | [canonicalPreRiemannBilinearData](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRiemannForm.lean/declarations/canonicalpreriemannbilineardata--6b076f2cac0e8e4c82d78a8f.md) | 290 | `declaration-track:6b076f2cac0e8e4c82d78a8ffe45b5181de9ae347251b64fad689a3ddccce712` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
