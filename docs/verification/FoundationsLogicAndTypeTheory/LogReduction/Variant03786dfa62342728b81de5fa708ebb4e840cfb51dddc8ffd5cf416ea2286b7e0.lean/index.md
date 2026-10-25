# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.LogReduction.Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5387fe54fbecca509a1e12474561b9ffe393bf5c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5387fe54fbecca509a1e12474561b9ffe393bf5c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 10; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Expr` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reductionExponent](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/declarations/reductionexponent--8cb78fc5bd48032f7656dd68.md) | 43 | `declaration-track:8cb78fc5bd48032f7656dd685e063e33ab14887e085569d732308532eac368f0` |
| 2 | `def` | [reduceMantissa](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/declarations/reducemantissa--4e1e249496f6f963c782ddb3.md) | 51 | `declaration-track:4e1e249496f6f963c782ddb3498be4c78784eac17efa7ab511ecec90acf42608` |
| 3 | `theorem` | [reconstruction_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/declarations/reconstruction-eq--2336ce3e6c82855668afe572.md) | 58 | `result-track:2336ce3e6c82855668afe572693f28fdc410dc80c3f4b6e18f834de4200d1b73` |
| 4 | `theorem` | [reduced_bounds_weak](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/declarations/reduced-bounds-weak--9b5d7edc291b9d262baa8a29.md) | 70 | `result-track:9b5d7edc291b9d262baa8a29c4bab05c74f7f1e03312952ac4a4a10d4a787820` |
| 5 | `theorem` | [reduced_bounds](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/declarations/reduced-bounds--f39d0c0c566f25b3783132c6.md) | 135 | `result-track:f39d0c0c566f25b3783132c6d35d00302f6f2e278da65a48bcbd87f0e9bae8cb` |
| 6 | `theorem` | [reduced_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/declarations/reduced-pos--07611ed99fa8addd7b6dc539.md) | 197 | `result-track:07611ed99fa8addd7b6dc5392012b5c0f23c4ae67cc78d48cfbe49c12c68fec3` |
| 7 | `theorem` | [log_reduction](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/declarations/log-reduction--12a79275d362536954ba8af9.md) | 206 | `result-track:12a79275d362536954ba8af953108f5559de737e25776afc0e931c735ba250f4` |
| 8 | `theorem` | [atanh_arg_bounds](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/declarations/atanh-arg-bounds--60534ae73fe755c06fc3984a.md) | 222 | `result-track:60534ae73fe755c06fc3984a4a64cbf044c6b9c498938c49a9bef2ae5bb3b247` |
| 9 | `theorem` | [log_via_atanh](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/declarations/log-via-atanh--89e455cf8732393b52d3eb9a.md) | 243 | `result-track:89e455cf8732393b52d3eb9a365a553f4db8bc9449c14be871240cebbedd3796` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
