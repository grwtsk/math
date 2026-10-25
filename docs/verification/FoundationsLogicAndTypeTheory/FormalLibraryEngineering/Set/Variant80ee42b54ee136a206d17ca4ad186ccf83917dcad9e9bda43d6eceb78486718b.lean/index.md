# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Set.Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "383a526faba8b14cf07bdd9882abbb597bf3b4b0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `383a526faba8b14cf07bdd9882abbb597bf3b4b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Loop` — import line 17; external provider; requires a separately pinned dependency.
- `Std.Data.ExtHashSet.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Std.Data.ExtTreeSet.Lemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.toHashSet_eq_fold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b.lean/declarations/iterm-tohashset-eq-fold--c7a842ce81d1b762f513ff25.md) | 29 | `result-track:c7a842ce81d1b762f513ff251a2b2a0bb8ae32ddf394152c07d006629e3f48e0` |
| 2 | `theorem` | [IterM.toExtHashSet_eq_ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b.lean/declarations/iterm-toexthashset-eq-oflist--b6499456dc777ebecf51a054.md) | 34 | `result-track:b6499456dc777ebecf51a05455952ef78899e16a2a3e05fbd9f9b887c174f569` |
| 3 | `theorem` | [IterM.toTreeSet_eq_fold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b.lean/declarations/iterm-totreeset-eq-fold--ca07506133b0008404433378.md) | 40 | `result-track:ca07506133b0008404433378ae4bc88a3297839c2c7e187224feb09e5c6a8b8d` |
| 4 | `theorem` | [IterM.toExtTreeSet_eq_ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant80ee42b54ee136a206d17ca4ad186ccf83917dcad9e9bda43d6eceb78486718b.lean/declarations/iterm-toexttreeset-eq-oflist--b72a9efc8b82065e945c7a71.md) | 45 | `result-track:b72a9efc8b82065e945c7a7148c8cc75656b70b55cdb066c30f2a0565e2d806e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
