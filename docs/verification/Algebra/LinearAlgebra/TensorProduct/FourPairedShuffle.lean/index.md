# Verification target: GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f078084b847240554202d16fee68d2fe0986411",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/TensorProduct/FourPairedShuffle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f078084b847240554202d16fee68d2fe0986411`.

Source path: `GRWTSK/LinearAlgebra/TensorProduct/FourPairedShuffle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/TensorProduct/FourPairedShuffle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Associator` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Pair](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/pair--87b9dc6bddfdbb03caaa8ddb.md) | 17 | `declaration-track:87b9dc6bddfdbb03caaa8ddbd77bb308bb99ec56dfba9c406e2044fe0db72edf` |
| 2 | `abbrev` | [Two](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/two--5a9cfcf1302f48b32389588a.md) | 18 | `declaration-track:5a9cfcf1302f48b32389588a22a01d60c0b8115f56e436567b6bd5467247236f` |
| 3 | `abbrev` | [Three](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/three--f5ba025d0da18042431d9595.md) | 19 | `declaration-track:f5ba025d0da18042431d95951cf986c0d8e9525bf0a455594fb587597321fa2c` |
| 4 | `abbrev` | [Four](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/four--b71c2182603c45072482f967.md) | 20 | `declaration-track:b71c2182603c45072482f967c214cf70c6c8d0272c280e5ba54151f195d65b77` |
| 5 | `abbrev` | [TwoEntries](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/twoentries--f2aa9b30b6271f7be9cdafd6.md) | 22 | `declaration-track:f2aa9b30b6271f7be9cdafd6457aabbefad1655dcdc2fb54103bc5f58ecfc974` |
| 6 | `abbrev` | [ThreeEntries](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/threeentries--5f087d38eb0fe8988c70c3c9.md) | 23 | `declaration-track:5f087d38eb0fe8988c70c3c955937fcd700411b40cc79bf9c78f81cef82685f6` |
| 7 | `abbrev` | [FourEntries](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/fourentries--ec18c038bb8befcaca6ffd56.md) | 24 | `declaration-track:ec18c038bb8befcaca6ffd563a2d20b54069eed60aa72bd791e038ecf91852f3` |
| 8 | `def` | [shuffleTwo](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/shuffletwo--0850550a30f0eec200b91dee.md) | 27 | `declaration-track:0850550a30f0eec200b91dee6540ba3ddd5c82a62cf9af5523af5c2cace6ce78` |
| 9 | `def` | [shuffleThree](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/shufflethree--8f2e1cc9dd41e58123550295.md) | 32 | `declaration-track:8f2e1cc9dd41e58123550295464f908a3778ec8b624f0fa8e896639a69757806` |
| 10 | `def` | [shuffleFour](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/shufflefour--cf20992018257582626569d0.md) | 41 | `declaration-track:cf20992018257582626569d050c58f6810000dfe52038596bca1ceef57d3d455` |
| 11 | `def` | [pairedPure](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/pairedpure--7b3a7560d3d851eb3780e9b2.md) | 48 | `declaration-track:7b3a7560d3d851eb3780e9b2104fa1707f3e48ff5a6ae797c87acce8400b40e3` |
| 12 | `def` | [separatedPure](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/separatedpure--97dbe4254610ee1d41548c83.md) | 52 | `declaration-track:97dbe4254610ee1d41548c831904ed808bd6a2b1eef9551c99244c249bca0da4` |
| 13 | `theorem` | [shuffleFour_pairedPure](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/shufflefour-pairedpure--cedbe556c435d6abc79acd2a.md) | 58 | `result-track:cedbe556c435d6abc79acd2a6630ab7d77b90a4810a4b0d740acbbad60c4b0bd` |
| 14 | `theorem` | [shuffleFour_unique](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/FourPairedShuffle.lean/declarations/shufflefour-unique--13abb47a62b131f5e64ba8b1.md) | 66 | `result-track:13abb47a62b131f5e64ba8b12a72aec4cf2835606e6f00ce907919664e8a5435` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
