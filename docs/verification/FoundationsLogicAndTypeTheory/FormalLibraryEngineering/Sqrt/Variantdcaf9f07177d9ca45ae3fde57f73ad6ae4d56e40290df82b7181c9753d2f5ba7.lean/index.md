# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sqrt.Variantdcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "085727bc7de5065f41f5678d7dab9e019de1d7ff",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variantdcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variantdcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variantdcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `085727bc7de5065f41f5678d7dab9e019de1d7ff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variantdcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variantdcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Sqrt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variantdcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7.lean/declarations/sqrt--bfeed036d0999992211bbf64.md) | 23 | `declaration-track:bfeed036d0999992211bbf641307c97c5df579f5539fdc153d539e2641b08fee` |
| 2 | `theorem` | [sqrt_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variantdcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7.lean/declarations/sqrt-eq--60b606948400f01984020d93.md) | 26 | `result-track:60b606948400f01984020d93d1a02232f2a4fd4e37caa72bffc51365e3bd97d2` |
| 3 | `theorem` | [exists_mul_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variantdcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7.lean/declarations/exists-mul-self--0eec486116c1a31bbdd30957.md) | 29 | `result-track:0eec486116c1a31bbdd30957d3c987ad957c7ea6167b242ab32d75aad570e651` |
| 4 | `theorem` | [sqrt_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variantdcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7.lean/declarations/sqrt-nonneg--8bc6404c9c9e232bf40c213e.md) | 32 | `result-track:8bc6404c9c9e232bf40c213ec5fc9f445b05faa62ff86dea1490b106a4cc0848` |
| 5 | `theorem` | [sqrt_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variantdcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7.lean/declarations/sqrt-natcast--685da11c1941f6423bc87e3f.md) | 36 | `result-track:685da11c1941f6423bc87e3f7a726634829c108e9b2097166f109d31f361ef55` |
| 6 | `theorem` | [sqrt_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variantdcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7.lean/declarations/sqrt-ofnat--d52b5a7a603aa402fa96c7b7.md) | 39 | `result-track:d52b5a7a603aa402fa96c7b7d329b314d0924e5d1dbf60f722222d3ecfb09197` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
