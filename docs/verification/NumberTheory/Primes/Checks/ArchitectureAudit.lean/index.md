# Verification target: GRWTSK.NumberTheory.Prime.Checks.ArchitectureAudit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb69693d1362dcc5ea5f6ca496190e5c434a07b0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Prime/Checks/ArchitectureAudit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/ArchitectureAudit.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/ArchitectureAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb69693d1362dcc5ea5f6ca496190e5c434a07b0`.

Source path: `GRWTSK/NumberTheory/Prime/Checks/ArchitectureAudit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Prime/Checks/ArchitectureAudit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Prime.LeastPrime`](../../../../../mathematics/NumberTheory/Primes/LeastPrime.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/NumberTheory/Primes/Checks/ArchitectureAudit.lean/declarations/example--19f1b08b6cfd5ab394981513.md) | 4 | `declaration-track:19f1b08b6cfd5ab394981513240e0b7ebd697331548ca25809a50d3e17c60925` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/NumberTheory/Primes/Checks/ArchitectureAudit.lean/declarations/example--e0e8f6641a7f5619db06b629.md) | 6 | `declaration-track:e0e8f6641a7f5619db06b6299b4c294a4edc226c538135caafcac87a1aa997b9` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/NumberTheory/Primes/Checks/ArchitectureAudit.lean/declarations/example--ed863fa045bbd247c947f8a5.md) | 9 | `declaration-track:ed863fa045bbd247c947f8a50ea463ea82d81ee31bdac6259f4a8baf2cc5d95a` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/NumberTheory/Primes/Checks/ArchitectureAudit.lean/declarations/example--3528c0aeabe0221b437d8255.md) | 12 | `declaration-track:3528c0aeabe0221b437d8255aaf255ff675e3dc015f4175deac26bd29acc6358` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
