# Verification target: GRWTSK.Topology.AlgebraicTopology.InducedMaps.Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49a237b4cede0ee0e7c24f97693e7805ede89786",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49a237b4cede0ee0e7c24f97693e7805ede89786`.

Source path: `GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Equivalence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.Product` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [path01](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/path01--525c3b965e3dcd794cc0faad.md) | 58 | `declaration-track:525c3b965e3dcd794cc0faad3194d71f2cc5381ab100cd8e80310723f2c37e1c` |
| 2 | `def` | [upath01](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/upath01--818baadd90e545090af83dd6.md) | 65 | `declaration-track:818baadd90e545090af83dd6ee4f225f34ff526da28ae5e73edef9ea062e85e1` |
| 3 | `def` | [uhpath01](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/uhpath01--78ba0626d50a090d0abfad0b.md) | 74 | `declaration-track:78ba0626d50a090d0abfad0b3e4d297d02d197300b556e98711f986fafdda2ad` |
| 4 | `abbrev` | [hcast](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/hcast--f2a918b40b155c4589f7c467.md) | 89 | `declaration-track:f2a918b40b155c4589f7c467ae9c95003399b663b33d91d56e7694c1a0456ec7` |
| 5 | `theorem` | [hcast_def](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/hcast-def--e01b92eed16da671c5881442.md) | 94 | `result-track:e01b92eed16da671c5881442c878ca71f182ba75855faf0f32bd2a4c4e67073a` |
| 6 | `theorem` | [heq_path_of_eq_image](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/heq-path-of-eq-image--bcead3ce0f170b028510d49b.md) | 103 | `result-track:bcead3ce0f170b028510d49bccaa7676221e701efea049a299b1c656e7acb4e2` |
| 7 | `theorem` | [start_path](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/start-path--acdd3814b1b41f65cf563730.md) | 107 | `result-track:acdd3814b1b41f65cf56373058e8b727a12afc0f70fccfc25a508569404fe73f` |
| 8 | `theorem` | [end_path](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/end-path--8806ca475cdbd40db91291cd.md) | 109 | `result-track:8806ca475cdbd40db91291cda19ed92a303b2493f6043d14c8673f05f13ee764` |
| 9 | `theorem` | [eq_path_of_eq_image](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/eq-path-of-eq-image--0962bd20e09739ae10792e7b.md) | 111 | `result-track:0962bd20e09739ae10792e7b4a61d932421073e35a94f799ebaee5a6a30bf86e` |
| 10 | `def` | [uliftMap](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/uliftmap--77d46a8de507cb5ad182a132.md) | 148 | `declaration-track:77d46a8de507cb5ad182a132d4e078459586cb8639bff53a5f77610df3a3e5ea` |
| 11 | `theorem` | [ulift_apply](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/ulift-apply--a342b57169cce5782e2845a2.md) | 154 | `result-track:a342b57169cce5782e2845a279a360b0ae0ca9c625c6ef0b477ff55763eca769` |
| 12 | `abbrev` | [prodToProdTopI](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/prodtoprodtopi--4275b42d75ff01909a69f9e2.md) | 160 | `declaration-track:4275b42d75ff01909a69f9e256c21a4135528a2877cdb974026b696410ddd74d` |
| 13 | `def` | [diagonalPath](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/diagonalpath--35e94815b430b063bd0b93c1.md) | 167 | `declaration-track:35e94815b430b063bd0b93c189dd1d7f2a00730a0ca055bfe509e3161850eb67` |
| 14 | `def` | [diagonalPath'](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/diagonalpath--cb11748a77d4b9b336d1d977.md) | 172 | `declaration-track:cb11748a77d4b9b336d1d9770998e6f4d268b7e49568dc4e7a72851b0e702b46` |
| 15 | `theorem` | [apply_zero_path](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/apply-zero-path--6a801139144d56f67dba99f5.md) | 177 | `result-track:6a801139144d56f67dba99f55bfa7f0aacf741ad5d9145508907906c76ec3ff1` |
| 16 | `theorem` | [apply_one_path](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/apply-one-path--c0e6ed518bd9b4c05da70f3e.md) | 186 | `result-track:c0e6ed518bd9b4c05da70f3ea5b22ef07b882f5ee81b58482808b809cbad7bd4` |
| 17 | `theorem` | [evalAt_eq](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/evalat-eq--88d446a6909fecbc4211f0a9.md) | 195 | `result-track:88d446a6909fecbc4211f0a97686ff5aee9a0c82a5e976b091ad3bd15f372c75` |
| 18 | `theorem` | [eq_diag_path](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/eq-diag-path--c1adcfc64c2f803e33f43c2c.md) | 205 | `result-track:c1adcfc64c2f803e33f43c2c7b28a9fd3ad665961fae294c725dc3920b66f40a` |
| 19 | `def` | [homotopicMapsNatIso](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/homotopicmapsnatiso--fa689ebfc4ea721a668aa3af.md) | 232 | `declaration-track:fa689ebfc4ea721a668aa3af403f81f44e233f21c0c95dcfe626324f49fca407` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/instance--25023ca96f35c4188bd535be.md) | 238 | `declaration-track:25023ca96f35c4188bd535be0336cce4391344c063f05f219d2575e33a123b03` |
| 21 | `def` | [equivOfHomotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean/declarations/equivofhomotopyequiv--9175cda619f65cf4807b76c7.md) | 243 | `declaration-track:9175cda619f65cf4807b76c71d96e4b03ee28fe3605778cca0ae49f10b0458bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
