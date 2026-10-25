# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalOpt.Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a5bc8e864e9fac79885b6f8a049ffebf9fc92f6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a5bc8e864e9fac79885b6f8a049ffebf9fc92f6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Optimization.Global` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkGlobalLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean/declarations/checkgloballowerbound--5377e9ee2347dc9249900688.md) | 45 | `declaration-track:5377e9ee2347dc924990068818ff0bcd27a22d054d531d87649d1e6e1e1074e5` |
| 2 | `def` | [checkGlobalUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean/declarations/checkglobalupperbound--9bb1f9b9dc462d89dc8860a9.md) | 55 | `declaration-track:9bb1f9b9dc462d89dc8860a9f8a9c88cd84b2a1af542301525870f8fa7fd87b1` |
| 3 | `def` | [checkGlobalBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean/declarations/checkglobalbounds--0be25ef592a9578109afc70a.md) | 60 | `declaration-track:0be25ef592a9578109afc70a26187833e7ddb8c6a1b316c31699233021ee1a14` |
| 4 | `theorem` | [verify_global_lower_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean/declarations/verify-global-lower-bound--a487c78b511c394de36bc076.md) | 74 | `result-track:a487c78b511c394de36bc076ca46d89b4557187ad37f27d1da10627bc6cb0859` |
| 5 | `theorem` | [verify_global_upper_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean/declarations/verify-global-upper-bound--be5f396e6fb61a2d4484f4a3.md) | 97 | `result-track:be5f396e6fb61a2d4484f4a303b7c0ff0d32ae753a12d74aecfb5963895d0442` |
| 6 | `theorem` | [verify_global_bounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalOpt/Variant1b1ec35d27032d0c85b0ad0752e957225cae2bc85da5b25bbd5d851088e823ce.lean/declarations/verify-global-bounds--628b25996f7b0d506bd3349f.md) | 125 | `result-track:628b25996f7b0d506bd3349f800f19724d1135850795de6e3d6dded6fd57f733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
