# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bit.Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2ff327ba492dc03af7d55ffacf99001d66fd1ed",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2ff327ba492dc03af7d55ffacf99001d66fd1ed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7.lean/declarations/bit--0af744892efa2162f0d4a04b.md) | 19 | `declaration-track:0af744892efa2162f0d4a04b9bbadd712bebe369beda19c615665f7f999d047a` |
| 2 | `def` | [zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7.lean/declarations/zero--8bc306b84a69d6f465293a7b.md) | 23 | `declaration-track:8bc306b84a69d6f465293a7b99bd1ded0da97e4e534df1deeab3a9d79ae21109` |
| 3 | `def` | [one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7.lean/declarations/one--937abcbb6c556ccc21be22ac.md) | 24 | `declaration-track:937abcbb6c556ccc21be22ace3f1bb5afc69b583b318f867628c64e0645bc4b7` |
| 4 | `def` | [flip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7.lean/declarations/flip--f463fa2a77d9cac16dec9739.md) | 25 | `declaration-track:f463fa2a77d9cac16dec9739b6553e4cd8887bc13f80bd9924ddd155dd3e29d6` |
| 5 | `theorem` | [flip_ne_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7.lean/declarations/flip-ne-self--44a9168ea461afcf38567b0a.md) | 28 | `result-track:44a9168ea461afcf38567b0a9efacc0c958619777f62d8b273cc4d1bee886811` |
| 6 | `theorem` | [flip_flip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bit/Variantaf45a827a95c67ba200b7e4ca5e73717296069050970fd073f9740369e475ae7.lean/declarations/flip-flip--807c09fe38e59dd1a57a7dfb.md) | 36 | `result-track:807c09fe38e59dd1a57a7dfba4f499000605facdd3f7a8de698ebb0095bd6449` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
