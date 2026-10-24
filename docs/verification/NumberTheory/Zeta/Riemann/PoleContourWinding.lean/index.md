# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PoleContourWinding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d6ea916b59b9caf2477e5215b3b40abb7fe5280",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PoleContourWinding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d6ea916b59b9caf2477e5215b3b40abb7fe5280`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PoleContourWinding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PoleContourWinding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ExponentialLoopIndex`](../../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PoleContourHomotopy`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourHomotopy.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceLift](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/declarations/sourcelift--ded23e5ccfe3f4dcfe1402fc.md) | 29 | `declaration-track:ded23e5ccfe3f4dcfe1402fc846783a44de0cbc974a55010a2d36fdf19b0cb9e` |
| 2 | `def` | [imageLift](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/declarations/imagelift--620fa5b81f9fd53b18c8df2f.md) | 37 | `declaration-track:620fa5b81f9fd53b18c8df2fe1b17a329a5a280352ab024eef60250a21268a0b` |
| 3 | `theorem` | [source_value](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/declarations/source-value--1bdc0bbd1b90b388217ecfb9.md) | 45 | `result-track:1bdc0bbd1b90b388217ecfb91784c792df9005c66d1312a204550e0b041bd7aa` |
| 4 | `theorem` | [image_value](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/declarations/image-value--3889f5f57840bdc8f51ae221.md) | 49 | `result-track:3889f5f57840bdc8f51ae221bc9a28fef9bbc032baea498f580b05554b1e436a` |
| 5 | `theorem` | [source_closed](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/declarations/source-closed--2874b9b3ad1122820e4bffcc.md) | 53 | `result-track:2874b9b3ad1122820e4bffcc0033cb413500669f21228f853c1585409a56a0f3` |
| 6 | `theorem` | [image_closed](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/declarations/image-closed--6b2d351b9f050593d936af58.md) | 62 | `result-track:6b2d351b9f050593d936af582b00a6465c231a34e4a27f661bfffc951dae63b8` |
| 7 | `def` | [sourceIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/declarations/sourceindex--124ccb4987c32075b34394cd.md) | 71 | `declaration-track:124ccb4987c32075b34394cd11d537ed7f0975707e8c185ca261f62c2553ae4c` |
| 8 | `def` | [imageIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/declarations/imageindex--8249d2c20801ace7d094771e.md) | 76 | `declaration-track:8249d2c20801ace7d094771ea772b1bcb3af0b5b90d9f559a3ad02c18985e78d` |
| 9 | `theorem` | [sourceIndex_eq_imageIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/declarations/sourceindex-eq-imageindex--f2e9cd5d2ff1b090eb25ca0f.md) | 82 | `result-track:f2e9cd5d2ff1b090eb25ca0f4ce29397e0ce5a486496905e6cf8cc423e49ef89` |
| 10 | `theorem` | [sourceIndex_eq_of_image](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/declarations/sourceindex-eq-of-image--32f1bd9330d467540095888d.md) | 90 | `result-track:32f1bd9330d467540095888d3a72e160630646bd4a3a13cecb5c406eb8d06194` |
| 11 | `theorem` | [imageIndex_zero_of_constant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/declarations/imageindex-zero-of-constant--680fdf9f8b3ec215753ac485.md) | 96 | `result-track:680fdf9f8b3ec215753ac485271fa016d2f4f14326f3f7579a3dd74c538220c9` |
| 12 | `theorem` | [sourceIndex_zero_of_constant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/declarations/sourceindex-zero-of-constant--21f37357aefdcf0f71493034.md) | 107 | `result-track:21f37357aefdcf0f71493034b270d610e86f3f65bb0e05be5912526fc0055912` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
