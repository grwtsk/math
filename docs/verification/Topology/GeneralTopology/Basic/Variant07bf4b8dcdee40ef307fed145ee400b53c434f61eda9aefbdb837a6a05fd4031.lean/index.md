# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e546e922140aa5bf429dd7a9c8cf89f9489bf3cc",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e546e922140aa5bf429dd7a9c8cf89f9489bf3cc`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Grpd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reflTransSymmAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/refltranssymmaux--ab241f8db09b914d2b7fba90.md) | 41 | `declaration-track:ab241f8db09b914d2b7fba900f05f7bfcbfde4ecdedaf3407ce0e4533b0f8639` |
| 2 | `theorem` | [continuous_reflTransSymmAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/continuous-refltranssymmaux--66f6413bd6aaf2161462d094.md) | 46 | `result-track:66f6413bd6aaf2161462d09409edc739b6086da7d7e1a061afc068c4a29ca3aa` |
| 3 | `theorem` | [reflTransSymmAux_mem_I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/refltranssymmaux-mem-i--c9efaf32bcf5271423180824.md) | 56 | `result-track:c9efaf32bcf5271423180824836f855b2fa95f8acfe7436babce67cc5ae486e8` |
| 4 | `def` | [reflTransSymm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/refltranssymm--abbd5e3e2dea06ca784f8ead.md) | 85 | `declaration-track:abbd5e3e2dea06ca784f8eada28b07aa30338c1507a7139d1e4eb7561c3b6439` |
| 5 | `def` | [reflSymmTrans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/reflsymmtrans--82e11ea5022f3f0ba2c5a638.md) | 116 | `declaration-track:82e11ea5022f3f0ba2c5a638b2e718221f257861d22fb4962518dbfad6d2be09` |
| 6 | `def` | [transReflReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/transreflreparamaux--42b4b4b00236d957197ccebf.md) | 125 | `declaration-track:42b4b4b00236d957197ccebffa82b723ef2feded2f029a8db096102c09e4f847` |
| 7 | `theorem` | [continuous_transReflReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/continuous-transreflreparamaux--95265d96b868ea76355cb64a.md) | 130 | `result-track:95265d96b868ea76355cb64ac46d846f831694bfde53b7625faa8c2f98a481b6` |
| 8 | `theorem` | [transReflReparamAux_mem_I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/transreflreparamaux-mem-i--c4120aa757a6d072de7c52a3.md) | 137 | `result-track:c4120aa757a6d072de7c52a384021351c7d40ef67af46e3de330776833f83331` |
| 9 | `theorem` | [transReflReparamAux_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/transreflreparamaux-zero--ca06cf301f74b91210c3b971.md) | 143 | `result-track:ca06cf301f74b91210c3b971a39246a9b0510d48c9871309db3fd7d42a0e8b7b` |
| 10 | `theorem` | [transReflReparamAux_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/transreflreparamaux-one--f6400ddd0bd0cd77c0b80eaf.md) | 147 | `result-track:f6400ddd0bd0cd77c0b80eaf8271201ebbccb79d40ef3d1f1c8f3de319c28957` |
| 11 | `theorem` | [trans_refl_reparam](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/trans-refl-reparam--3174472039b3a9ef9dee98f4.md) | 151 | `result-track:3174472039b3a9ef9dee98f4f2e7fd5a4ddd3c32613e3b02a7e232c69305f1ab` |
| 12 | `def` | [transRefl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/transrefl--62373d64543a4504df6c2c97.md) | 166 | `declaration-track:62373d64543a4504df6c2c975132f7ee392a8c4d9504b968d1fdaca2aa34197e` |
| 13 | `def` | [reflTrans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/refltrans--9c96f10e0cc6970f8b4a7a1d.md) | 174 | `declaration-track:9c96f10e0cc6970f8b4a7a1d37eff412cdac4d6664a7b7321b13a96a63218248` |
| 14 | `def` | [transAssocReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/transassocreparamaux--bab90fddd0d119104c6b7f28.md) | 183 | `declaration-track:bab90fddd0d119104c6b7f280a6a31e6decbfb8af17cdc2cfcefb6b62cf8fc62` |
| 15 | `theorem` | [continuous_transAssocReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/continuous-transassocreparamaux--cb74749015661cf4ff574fc6.md) | 188 | `result-track:cb74749015661cf4ff574fc6f377ff21da7d4da4c8d1bdfab25dd551e471ed28` |
| 16 | `theorem` | [transAssocReparamAux_mem_I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/transassocreparamaux-mem-i--40b284316ef3e4f3c644dc70.md) | 198 | `result-track:40b284316ef3e4f3c644dc70198ee8b9ac51221c1807d466e2c516dd00d91166` |
| 17 | `theorem` | [transAssocReparamAux_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/transassocreparamaux-zero--cbb480710746e4d18bee72bb.md) | 204 | `result-track:cbb480710746e4d18bee72bb1d579b2160eebdf3ecb56757f1f6257d3405908e` |
| 18 | `theorem` | [transAssocReparamAux_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/transassocreparamaux-one--8bc215fa7bfae69b3a45b0e5.md) | 208 | `result-track:8bc215fa7bfae69b3a45b0e55b2e1d883c104cb6160fd04b5e974cfaf0643880` |
| 19 | `theorem` | [trans_assoc_reparam](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/trans-assoc-reparam--9697763f451c238b588f2010.md) | 212 | `result-track:9697763f451c238b588f2010a39d8495a2e5e4b5e4c76a7cdba0bfd7597f16b7` |
| 20 | `def` | [transAssoc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/transassoc--754b7f8f90e3534a967ce3b3.md) | 255 | `declaration-track:754b7f8f90e3534a967ce3b3d998435c05927d5df470c18365c719e3c05b44e7` |
| 21 | `def` | [FundamentalGroupoid](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/fundamentalgroupoid--258d5c78872caf8a4cd10845.md) | 271 | `declaration-track:258d5c78872caf8a4cd10845a094c77ec3220c2829b280aa9537cee6a5234b47` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/instance--54fec5d5fe1afe12ac79c949.md) | 276 | `declaration-track:54fec5d5fe1afe12ac79c949778e853f066a918ff39c0a33540693b78ba22fc6` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/instance--516f53a0c00ddbe086e8d275.md) | 282 | `declaration-track:516f53a0c00ddbe086e8d2757245617acce32d108b1e590455e2b0f965d130fd` |
| 24 | `theorem` | [comp_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/comp-eq--0747276ff2d6608b360781f8.md) | 313 | `result-track:0747276ff2d6608b360781f85ffba97c53f32aff0ee40bdd5c89ef93a323bc7b` |
| 25 | `theorem` | [id_eq_path_refl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/id-eq-path-refl--8176944d9cddf0eaf784183e.md) | 316 | `result-track:8176944d9cddf0eaf784183e01b7478d635ca69dfd2bb7969e0d406c774b7562` |
| 26 | `def` | [fundamentalGroupoidFunctor](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/fundamentalgroupoidfunctor--767c34fb884784d8062163eb.md) | 320 | `declaration-track:767c34fb884784d8062163eb4f1ea7101a19b4174a5474684a7b454b925232c7` |
| 27 | `theorem` | [map_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/map-eq--49d4a07cb2e7798be35c693f.md) | 350 | `result-track:49d4a07cb2e7798be35c693f840de7d3cc814d268a083a9d965669dce55a18cd` |
| 28 | `def` | [toTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/totop--f803141f11a5a1f992e988e0.md) | 357 | `declaration-track:f803141f11a5a1f992e988e0216c2134f3c3f35b98d438ebc404eb7bbc75aa1b` |
| 29 | `def` | [fromTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/fromtop--d0a74782a4c645d92de9a413.md) | 363 | `declaration-track:d0a74782a4c645d92de9a413910f4de7fbfe710dba51bc80cf98ca84a6577b9e` |
| 30 | `def` | [toPath](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/topath--0825fcc6b11bd3ad2f828dcc.md) | 370 | `declaration-track:0825fcc6b11bd3ad2f828dccb8719715442fe6f001e30465668052da772f0e6a` |
| 31 | `def` | [fromPath](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean/declarations/frompath--dedf89e25d8fff701806260f.md) | 376 | `declaration-track:dedf89e25d8fff701806260f2e4849491235437c31ad4e13051422718d1a9715` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
