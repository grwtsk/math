# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.PrimeSieveCovarianceStatements.Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c14ce7c42c3688d218b6187f18e875c38d0631ba",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c14ce7c42c3688d218b6187f18e875c38d0631ba`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SelbergSieve` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_lcm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean/declarations/prime-lcm--4bfca112d8f47263afbe0fb8.md) | 10 | `result-track:4bfca112d8f47263afbe0fb8c319a67d011d9e8ff7f82a5c2987c1b9e32290dd` |
| 2 | `theorem` | [prime_moebius_lcm_identity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean/declarations/prime-moebius-lcm-identity--62fc705e4827ea0b6cbdc26d.md) | 18 | `result-track:62fc705e4827ea0b6cbdc26ddf43a1d08bf428cf319aabc1e5b46699bcc9f574` |
| 3 | `theorem` | [prime_moebius_lcm_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean/declarations/prime-moebius-lcm-le--3ef4056a0120988246fbf714.md) | 64 | `result-track:3ef4056a0120988246fbf714756e40c64e707c0552ef598cc3539581f33aafa7` |
| 4 | `theorem` | [prime_moebius_lcm_le_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean/declarations/prime-moebius-lcm-le-card--ccc31554d25bd0d8da6bd573.md) | 100 | `result-track:ccc31554d25bd0d8da6bd573e229b2e1613df4bcb8bd0edfdd5fd158f37a231c` |
| 5 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean/declarations/example--027eea8f6fa4bb4388dd728f.md) | 120 | `declaration-track:027eea8f6fa4bb4388dd728f43de4e204c9961feca91d53e43dc33f2ab608b2a` |
| 6 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean/declarations/example--2ce58ac0ac0abf4755520410.md) | 128 | `declaration-track:2ce58ac0ac0abf4755520410bba2e0bace511f72bbb73481daedbb9c8f7fde56` |
| 7 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeSieveCovarianceStatements/Variant6f011d4493c4db70b41cfaa6de22a1a7b47df1eecda83ee3cdeb8c26295e66d7.lean/declarations/example--4067aff34bb2e92feadfebfa.md) | 136 | `declaration-track:4067aff34bb2e92feadfebfa4adb9215bec3147b6b1937b29aaff29e57444058` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
