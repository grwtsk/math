# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ShellFiltration.Variant728584f8008c77b559b6d0cd6971ef5ed217ae129ffcbb19548bbf2db17cd7c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c34ab4364f2d205643f3c936fd188dbeb28d7c8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant728584f8008c77b559b6d0cd6971ef5ed217ae129ffcbb19548bbf2db17cd7c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant728584f8008c77b559b6d0cd6971ef5ed217ae129ffcbb19548bbf2db17cd7c7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant728584f8008c77b559b6d0cd6971ef5ed217ae129ffcbb19548bbf2db17cd7c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c34ab4364f2d205643f3c936fd188dbeb28d7c8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant728584f8008c77b559b6d0cd6971ef5ed217ae129ffcbb19548bbf2db17cd7c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant728584f8008c77b559b6d0cd6971ef5ed217ae129ffcbb19548bbf2db17cd7c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Cellular.Cube` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsBoundaryCell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant728584f8008c77b559b6d0cd6971ef5ed217ae129ffcbb19548bbf2db17cd7c7.lean/declarations/isboundarycell--b12aea9747dcaba45d45b35a.md) | 27 | `declaration-track:b12aea9747dcaba45d45b35a3a928257382ac89523f2bfc46af3998be2460176` |
| 2 | `def` | [IsInteriorCell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant728584f8008c77b559b6d0cd6971ef5ed217ae129ffcbb19548bbf2db17cd7c7.lean/declarations/isinteriorcell--7bf3ec85586ca38e62b4dfe2.md) | 33 | `declaration-track:7bf3ec85586ca38e62b4dfe296edfa35e06b9fdc33937eed3ba3b45f9488cdf5` |
| 3 | `abbrev` | [BoundaryShell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant728584f8008c77b559b6d0cd6971ef5ed217ae129ffcbb19548bbf2db17cd7c7.lean/declarations/boundaryshell--9e8ac5fe1be8d7339d1647fd.md) | 39 | `declaration-track:9e8ac5fe1be8d7339d1647fdf0732f5d1b4c8593ffb5e87e40df3816cef077b7` |
| 4 | `def` | [IsNewChildCell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant728584f8008c77b559b6d0cd6971ef5ed217ae129ffcbb19548bbf2db17cd7c7.lean/declarations/isnewchildcell--9050166609e5282b7c38e0ae.md) | 42 | `declaration-track:9050166609e5282b7c38e0ae210dbf2db9a70e38db00c3b1e54cfb79a91381c6` |
| 5 | `theorem` | [boundary_or_not_boundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant728584f8008c77b559b6d0cd6971ef5ed217ae129ffcbb19548bbf2db17cd7c7.lean/declarations/boundary-or-not-boundary--e0372868f0833635b8a79cec.md) | 47 | `result-track:e0372868f0833635b8a79cec80aaae23951fbb59968da0e8e5336876c5eb6bd3` |
| 6 | `theorem` | [not_interior_of_boundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant728584f8008c77b559b6d0cd6971ef5ed217ae129ffcbb19548bbf2db17cd7c7.lean/declarations/not-interior-of-boundary--16cd46784db919337b85c4ae.md) | 54 | `result-track:16cd46784db919337b85c4aed8d73d8aebaa9da4b3e7790b7ab09cc2ea37737e` |
| 7 | `theorem` | [all_boundary_level_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellFiltration/Variant728584f8008c77b559b6d0cd6971ef5ed217ae129ffcbb19548bbf2db17cd7c7.lean/declarations/all-boundary-level-zero--7bfbc4df735b3af85e64e7bc.md) | 65 | `result-track:7bfbc4df735b3af85e64e7bc4d53b9248181968c3ca04161f929ef4825e88ff7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
