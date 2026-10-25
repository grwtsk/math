# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AbstractS.Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f8f33bd00a0f8a442b33eca5b229fcd423a2530",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f8f33bd00a0f8a442b33eca5b229fcd423a2530`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.ReplaceS` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [abstractFVarsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean/declarations/abstractfvarscore--f78a48105c8b9102de92528a.md) | 17 | `declaration-track:f78a48105c8b9102de92528ab0011aa1946c51e48369f29437fd5bb30c9f7f85` |
| 2 | `def` | [abstractFVarsRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean/declarations/abstractfvarsrange--ff79d10a44e7e8ef4051efb2.md) | 64 | `declaration-track:ff79d10a44e7e8ef4051efb2e9b5f3f96848958d1f2ca9c8ed165121b5ed7f64` |
| 3 | `abbrev` | [abstractFVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean/declarations/abstractfvars--db2abaf7e81761580e074274.md) | 85 | `declaration-track:db2abaf7e81761580e074274743ead3fc0780965ac3ea7874e30f2c313000ffc` |
| 4 | `def` | [mkLambdaFVarsS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean/declarations/mklambdafvarss--be90c36e854477cbf2c883b5.md) | 92 | `declaration-track:be90c36e854477cbf2c883b5a32401bcb2c0dfed830a194eb3c80fe9a3969e82` |
| 5 | `def` | [mkForallFVarsS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variant40541ae3797225cb4691dd99272c0afc2a1b53be08e0bfadb69ab52951a79220.lean/declarations/mkforallfvarss--57e0bcfe5e68b271ce8afe9a.md) | 104 | `declaration-track:57e0bcfe5e68b271ce8afe9a6a474a850b32775e8ec9723e480674dc89d4d2b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
