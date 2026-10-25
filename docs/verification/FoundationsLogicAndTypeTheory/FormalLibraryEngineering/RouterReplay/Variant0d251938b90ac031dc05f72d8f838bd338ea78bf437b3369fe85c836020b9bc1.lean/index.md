# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RouterReplay.Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cca7fc890dcbc83b25153290633574d6716678a0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cca7fc890dcbc83b25153290633574d6716678a0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Kernel.Core` — import line 10; external provider; requires a separately pinned dependency.
- `Kernel.Router` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linearDag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1.lean/declarations/lineardag--58fa7781bedbd6876c112d29.md) | 20 | `declaration-track:58fa7781bedbd6876c112d2908e747a470927e95fd63eaefc269050d75540462` |
| 2 | `def` | [linearRoute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1.lean/declarations/linearroute--e33f4672db3780968019afdd.md) | 48 | `declaration-track:e33f4672db3780968019afdd74f7a4447bfc7806ac88cbc2be23164fd63d7ba2` |
| 3 | `def` | [testRouter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1.lean/declarations/testrouter--46d0f8f4463dfdf7d3e9f2a5.md) | 52 | `declaration-track:46d0f8f4463dfdf7d3e9f2a5c066715e238711cb095ad7beff2cdf850cd5f064` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
