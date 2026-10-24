# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetBaseChange

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f78edd61fdd95b122aad933b561f9532aa97d1ee",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f78edd61fdd95b122aad933b561f9532aa97d1ee`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyParameterSeries`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyParameterSeries.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [planeMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/planemap--babb4a3ffa58908135b21ef8.md) | 23 | `declaration-track:babb4a3ffa58908135b21ef8c8ed8ae219f6a855e8b0d2e3b56a3745fe3f0abb` |
| 2 | `theorem` | [planeMap_C](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/planemap-c--13e9424c2954913c2907cf13.md) | 26 | `result-track:13e9424c2954913c2907cf136400a85bac5f3d925ffecec8f7acec1b3cb5e03c` |
| 3 | `theorem` | [planeMap_X](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/planemap-x--851447437608fc4aa02f5a7c.md) | 30 | `result-track:851447437608fc4aa02f5a7c14c7f201d68bbae9d459e9a3c1f5d80236662f98` |
| 4 | `theorem` | [planeMap_equation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/planemap-equation--6ab8ac799183020173b94b2d.md) | 34 | `result-track:6ab8ac799183020173b94b2da334fbef7f52d236b890c4ed587f43888e9036b3` |
| 5 | `theorem` | [sectionIdeal_map_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/sectionideal-map-le--e3e273ba71b5336a46512977.md) | 39 | `result-track:e3e273ba71b5336a46512977d452920751c2c663b3d332522b86da5080136eac` |
| 6 | `theorem` | [relations_map_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/relations-map-le--aefa304343168c3a3bfe5c3e.md) | 56 | `result-track:aefa304343168c3a3bfe5c3e966be20c1fd8af598953438bdb27f1015ad0b67d` |
| 7 | `def` | [jetMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/jetmap--d79bdab6bd23d664159254ca.md) | 76 | `declaration-track:d79bdab6bd23d664159254cade22dfb192f36c3ad9ca9dc846868724be0cff45` |
| 8 | `theorem` | [jetMap_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/jetmap-scalar--71b3ce288026617cf5098159.md) | 82 | `result-track:71b3ce288026617cf509815938f9d6cdd7be1e9a73b8955038ea6d67235d4135` |
| 9 | `theorem` | [jetMap_x](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/jetmap-x--e62bb711a856daa9a1b26be2.md) | 86 | `result-track:e62bb711a856daa9a1b26be2653a3410bca6383147002f3708c1394ed5e8983f` |
| 10 | `theorem` | [jetMap_y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/jetmap-y--aca1847ddf1ff0e11580455f.md) | 90 | `result-track:aca1847ddf1ff0e11580455f5935408ea2964809b8af0e7ff73f53ba14ed4a8a` |
| 11 | `theorem` | [jetMap_id](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/jetmap-id--28e68a9100adea2b2dd1259a.md) | 95 | `result-track:28e68a9100adea2b2dd1259aaa45b47f530fd4474d14f7095a49a878b164f440` |
| 12 | `theorem` | [jetMap_comp](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/jetmap-comp--4209613504c3f0b37d46584d.md) | 100 | `result-track:4209613504c3f0b37d46584d1875fcdcfa3d47f634adef88b7606ac20e906641` |
| 13 | `theorem` | [jetMap_truncate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/jetmap-truncate--9fe92107d0bac3eaea39ba19.md) | 106 | `result-track:9fe92107d0bac3eaea39ba199d0d5db4ff5f6ad6d2f17eae2f1872f5711b62b3` |
| 14 | `def` | [parameterMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/parametermap--b6ff17cec9df7f2acbce83e2.md) | 113 | `declaration-track:b6ff17cec9df7f2acbce83e2432d9f1c2e93ffd73234be4543e92dbed378048e` |
| 15 | `theorem` | [parameterMap_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/parametermap-scalar--663e2a99ff663107cb8f1227.md) | 117 | `result-track:663e2a99ff663107cb8f12271d089787b99142d5caa9bb9c72a6decee9af0310` |
| 16 | `theorem` | [parameterMap_parameter](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/parametermap-parameter--467c439bb5a8ecb18aa64613.md) | 121 | `result-track:467c439bb5a8ecb18aa64613fc853bf666c4447dab841256cb5869fcfb9822ee` |
| 17 | `theorem` | [parameterMap_mk](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/parametermap-mk--930a11fa7a2ae91c27fe3ff5.md) | 126 | `result-track:930a11fa7a2ae91c27fe3ff59a5a3c314e4d593c1ae6ed4bd05cfed8ab4bdd34` |
| 18 | `theorem` | [coefficient_parameterMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/coefficient-parametermap--691d6559dee26277e310e86a.md) | 141 | `result-track:691d6559dee26277e310e86a0dbca4bda1b5e927dc6691e95b81d5f41285c0da` |
| 19 | `theorem` | [parameterMap_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/parametermap-injective--133678e4eb0fb4bf48f18428.md) | 150 | `result-track:133678e4eb0fb4bf48f184288edc0a4327d507f674149ca28d6940adf7872e4d` |
| 20 | `theorem` | [mapped_root](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/mapped-root--79389a0f11470bc11b01ec7e.md) | 159 | `result-track:79389a0f11470bc11b01ec7ec538eb00d4528fcf4399067dabd6cc16b27e0e53` |
| 21 | `theorem` | [mapped_inverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/mapped-inverse--f83147003dd85bb8dff632cf.md) | 164 | `result-track:f83147003dd85bb8dff632cfbf5c9665ce9908793e1b66256523d11089a5a826` |
| 22 | `theorem` | [fromParameter_natural](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/fromparameter-natural--b1a79faad9bea2c0b2ac3dda.md) | 170 | `result-track:b1a79faad9bea2c0b2ac3dda34288a6c98dcfc77ef6e35e4569d7b7f0121cba5` |
| 23 | `theorem` | [toParameter_natural](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/toparameter-natural--04f0c57d3bb3e3984eeaf642.md) | 183 | `result-track:04f0c57d3bb3e3984eeaf642e95f72f81bf2a350ef82f19d5991dd2d9aef90c4` |
| 24 | `theorem` | [jetMap_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/declarations/jetmap-injective--cc4a3759841e9c9b198e7817.md) | 210 | `result-track:cc4a3759841e9c9b198e7817c69ef2ef9d0838c381c0ca1ee87327e4c3334d8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
