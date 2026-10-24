# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TruthTable.Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cc47a4a35fd76e7661d8bf61af982419dd7c4e4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cc47a4a35fd76e7661d8bf61af982419dd7c4e4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.Hypercube` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Tree.SOP` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TruthTable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59.lean/declarations/truthtable--a8f3fa211a7213604e83797a.md) | 7 | `declaration-track:a8f3fa211a7213604e83797afb7fda46037b331fb60ac7d0e1a06d1ead745934` |
| 2 | `def` | [TruthTable.rows](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59.lean/declarations/truthtable-rows--c916942b3cb12e0db597bb6d.md) | 11 | `declaration-track:c916942b3cb12e0db597bb6de3f7bee0b3e20cef8f1fdd2b0432b37234b60a8a` |
| 3 | `def` | [TruthTable.toMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59.lean/declarations/truthtable-tomatrix--24db2a7443fbd07a6b11cf41.md) | 21 | `declaration-track:24db2a7443fbd07a6b11cf41cc25bdc3aedf4c2693ed7eb84283bfa91cfd8edb` |
| 4 | `def` | [TruthTable.minterm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59.lean/declarations/truthtable-minterm--b1668fa6f8ed8562cf6b5664.md) | 30 | `declaration-track:b1668fa6f8ed8562cf6b5664fac22d4a002b56433553f043097b5f4d1e5f04e2` |
| 5 | `def` | [TruthTable.trueInputs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59.lean/declarations/truthtable-trueinputs--70f7d7034a802abe87f45e3d.md) | 39 | `declaration-track:70f7d7034a802abe87f45e3d2f4cda0ea2e3c7b6ff8643392f21a4851a719274` |
| 6 | `def` | [TruthTable.toSOP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59.lean/declarations/truthtable-tosop--540955b0c085773fc8a9b3bf.md) | 49 | `declaration-track:540955b0c085773fc8a9b3bfd4752ab6ca9277ea778db15921ee56af67f03fe1` |
| 7 | `def` | [TruthTable.toTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59.lean/declarations/truthtable-totree--78e5a769f719bcac88238032.md) | 54 | `declaration-track:78e5a769f719bcac88238032353d33d22479673346bb800bea4e6f1fdeaae5f8` |
| 8 | `def` | [TruthTable.toSOPMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TruthTable/Variant9eafbeec72d3b2e05948963ad3088967c2ac48fc715fb0be24d8240c514ccd59.lean/declarations/truthtable-tosopmatrix--3d715c9fecef5681d768d928.md) | 59 | `declaration-track:3d715c9fecef5681d768d9283e85849a5c2082954eb91e7ffdc704c6f3a99171` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
