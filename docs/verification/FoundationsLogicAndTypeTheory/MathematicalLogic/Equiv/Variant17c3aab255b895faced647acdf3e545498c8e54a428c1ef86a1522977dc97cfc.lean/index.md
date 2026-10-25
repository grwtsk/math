# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "765559adb09467d35d9891e9491e7b619a099b89",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `765559adb09467d35d9891e9491e7b619a099b89`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Traversable.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/map--5a015d555003073b71e01b36.md) | 45 | `declaration-track:5a015d555003073b71e01b361e67c1849070d835ee0a24fba155b653448e0f3f` |
| 2 | `def` | [functor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/functor--bcc9de6a7f362e1a543e010a.md) | 51 | `declaration-track:bcc9de6a7f362e1a543e010a27c57329666c281f8e1674dd5a9ff6ae21260a41` |
| 3 | `theorem` | [id_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/id-map--3d1504c609b34312f04cff22.md) | 57 | `result-track:3d1504c609b34312f04cff225e24221bb4d6ef76a87c7ed63282f326d1e2b737` |
| 4 | `theorem` | [comp_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/comp-map--5eccad5eb369bcddf5ed60bf.md) | 61 | `result-track:5eccad5eb369bcddf5ed60bf7dbb3c9cbe54eec9d28a67af6492534d6ac1a584` |
| 5 | `theorem` | [lawfulFunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/lawfulfunctor--4de2dc1fb40c3d6cdd2dc9b0.md) | 66 | `result-track:4de2dc1fb40c3d6cdd2dc9b04d93bd08c7368d636e1aa06c9b6a7bd469668486` |
| 6 | `theorem` | [lawfulFunctor'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/lawfulfunctor--fc40e2f4f8851831bf2bb734.md) | 74 | `result-track:fc40e2f4f8851831bf2bb734602ef64552788df392cd3fed97851747102b6c81` |
| 7 | `def` | [traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/traverse--fde99feeaac1f27893e26777.md) | 101 | `declaration-track:fde99feeaac1f27893e267779d44653ba28d30ef68e9aae28aebdf2377c03f2b` |
| 8 | `def` | [traversable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/traversable--4a39343f36b7c37f66614e93.md) | 107 | `declaration-track:4a39343f36b7c37f66614e931c27caf3983c69a6f99f718a60a226f95f2bdbad` |
| 9 | `theorem` | [id_traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/id-traverse--3ace1b42ebb887dd02feafbe.md) | 133 | `result-track:3ace1b42ebb887dd02feafbe82238aec997b9cc7959d91d52ae3398ea0182b1a` |
| 10 | `theorem` | [traverse_eq_map_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/traverse-eq-map-id--284d837305db3fd8e566160b.md) | 138 | `result-track:284d837305db3fd8e566160b7375752e6cffe36e48d393e62230b74243537f20` |
| 11 | `theorem` | [comp_traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/comp-traverse--edbea50ea0cc5789f4d76c0c.md) | 143 | `result-track:edbea50ea0cc5789f4d76c0c76898b3008b33b7c4afa027ef33d9940274e87e9` |
| 12 | `theorem` | [naturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/naturality--c27684cf3226d3355a347b3d.md) | 149 | `result-track:c27684cf3226d3355a347b3dc4136da3c7fd3ec28bc59ccf817b1dd738bb182f` |
| 13 | `theorem` | [isLawfulTraversable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/islawfultraversable--53b3c3cdd829603503ac2578.md) | 157 | `result-track:53b3c3cdd829603503ac25780de208f1ac3c2f85ab542f64e4e115576e414bb4` |
| 14 | `theorem` | [isLawfulTraversable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant17c3aab255b895faced647acdf3e545498c8e54a428c1ef86a1522977dc97cfc.lean/declarations/islawfultraversable--750e33b91ae79c584e764312.md) | 172 | `result-track:750e33b91ae79c584e7643121416bc8f3bdf0dfca3082b385ec655d866c9de36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
