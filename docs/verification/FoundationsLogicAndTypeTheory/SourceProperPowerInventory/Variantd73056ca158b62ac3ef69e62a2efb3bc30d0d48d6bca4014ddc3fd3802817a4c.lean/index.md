# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SourceProperPowerInventory.Variantd73056ca158b62ac3ef69e62a2efb3bc30d0d48d6bca4014ddc3fd3802817a4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60a965bae16b22c40f9e55302663a02197a3cfc6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variantd73056ca158b62ac3ef69e62a2efb3bc30d0d48d6bca4014ddc3fd3802817a4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variantd73056ca158b62ac3ef69e62a2efb3bc30d0d48d6bca4014ddc3fd3802817a4c.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variantd73056ca158b62ac3ef69e62a2efb3bc30d0d48d6bca4014ddc3fd3802817a4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60a965bae16b22c40f9e55302663a02197a3cfc6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variantd73056ca158b62ac3ef69e62a2efb3bc30d0d48d6bca4014ddc3fd3802817a4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variantd73056ca158b62ac3ef69e62a2efb3bc30d0d48d6bca4014ddc3fd3802817a4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceProperPowerCell` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Pow` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tailProperMass](../../../../mathematics/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variantd73056ca158b62ac3ef69e62a2efb3bc30d0d48d6bca4014ddc3fd3802817a4c.lean/declarations/tailpropermass--e323f46f9535759977bbb7cb.md) | 18 | `declaration-track:e323f46f9535759977bbb7cbf10dd56947e72c91de41dacef5bc30ba4b13070b` |
| 2 | `def` | [properExponentInventory](../../../../mathematics/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variantd73056ca158b62ac3ef69e62a2efb3bc30d0d48d6bca4014ddc3fd3802817a4c.lean/declarations/properexponentinventory--f0ac656df48dce10147c1a8a.md) | 22 | `declaration-track:f0ac656df48dce10147c1a8adce523c8294927e71e1384b8b40470a9c36fb3ee` |
| 3 | `theorem` | [tailProperMass_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variantd73056ca158b62ac3ef69e62a2efb3bc30d0d48d6bca4014ddc3fd3802817a4c.lean/declarations/tailpropermass-nonneg--4def975981a760ab486b955c.md) | 25 | `result-track:4def975981a760ab486b955cd5d100dbe4ae02f2a1f479fddaa984451ecc48e8` |
| 4 | `theorem` | [tailProperMass_eq_exponent_sum](../../../../mathematics/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variantd73056ca158b62ac3ef69e62a2efb3bc30d0d48d6bca4014ddc3fd3802817a4c.lean/declarations/tailpropermass-eq-exponent-sum--cd38f8e606544962bc4abb4b.md) | 30 | `result-track:cd38f8e606544962bc4abb4bc9d3d142141a8ec44f07277ae118be994a3294bb` |
| 5 | `theorem` | [finite_geometric_proper_le](../../../../mathematics/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variantd73056ca158b62ac3ef69e62a2efb3bc30d0d48d6bca4014ddc3fd3802817a4c.lean/declarations/finite-geometric-proper-le--2dd0448af1947caced8fd1df.md) | 93 | `result-track:2dd0448af1947caced8fd1df8227b577b22d6a1ec9f364555633c1af0a9452d3` |
| 6 | `theorem` | [tailProperMass_le_budget](../../../../mathematics/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variantd73056ca158b62ac3ef69e62a2efb3bc30d0d48d6bca4014ddc3fd3802817a4c.lean/declarations/tailpropermass-le-budget--8550b41161ec0efb62963497.md) | 137 | `result-track:8550b41161ec0efb62963497fa4317defa0b893b2d1fe0f1b63d544a4ac550a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
