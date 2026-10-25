# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SchroederBernstein.Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eba03ea7cd8d80b994784a694945688ee2830653",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eba03ea7cd8d80b994784a694945688ee2830653`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Piecewise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.FixedPoints` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Zorn` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [schroeder_bernstein](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean/declarations/schroeder-bernstein--0aa18550f1979b46ea64b87b.md) | 51 | `result-track:0aa18550f1979b46ea64b87bc0cad5c6c62fd86e3a4ad4c604536d7b4b34f8d0` |
| 2 | `theorem` | [antisymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean/declarations/antisymm--87824fd9920e7c64b44d2924.md) | 84 | `result-track:87824fd9920e7c64b44d29247f433bc285bbfc07ff9507e4648f17d90e5730b7` |
| 3 | `abbrev` | [sets](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean/declarations/sets--0740778aeba8b4b60dd419d9.md) | 96 | `declaration-track:0740778aeba8b4b60dd419d93a5c5ebe6993078e512b7da7a2db49a47812e0fb` |
| 4 | `theorem` | [min_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean/declarations/min-injective--11cb4aa348ce1ccebb3b151e.md) | 102 | `result-track:11cb4aa348ce1ccebb3b151e73656b3d0e033e2f245ff45df4533c21e9ab01fb` |
| 5 | `theorem` | [total](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SchroederBernstein/Variant3ef2955d91086f6e47127650dce8df1b8f0fc186a9215460d87d047abd0ac594.lean/declarations/total--7a1e40511cd4be3efb090f72.md) | 134 | `result-track:7a1e40511cd4be3efb090f72ed887f152a3c7f804621f16ef5f1144f5d731596` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
