# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AbstractS.Variantc492eba4529341ac6c729a1d3a472d8c4bbee297414a5c8da3114f3032aa3ca1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "017308252db99d5f6b44e24a3d2f515f1c3bc839",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variantc492eba4529341ac6c729a1d3a472d8c4bbee297414a5c8da3114f3032aa3ca1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variantc492eba4529341ac6c729a1d3a472d8c4bbee297414a5c8da3114f3032aa3ca1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variantc492eba4529341ac6c729a1d3a472d8c4bbee297414a5c8da3114f3032aa3ca1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `017308252db99d5f6b44e24a3d2f515f1c3bc839`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variantc492eba4529341ac6c729a1d3a472d8c4bbee297414a5c8da3114f3032aa3ca1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variantc492eba4529341ac6c729a1d3a472d8c4bbee297414a5c8da3114f3032aa3ca1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.ReplaceS` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [abstractFVarsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variantc492eba4529341ac6c729a1d3a472d8c4bbee297414a5c8da3114f3032aa3ca1.lean/declarations/abstractfvarscore--29c8646d26aa0f105c193277.md) | 25 | `declaration-track:29c8646d26aa0f105c1932773bf4bb1642a7d314d45c5d508d8b6016c5bbff27` |
| 2 | `def` | [abstractFVarsRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variantc492eba4529341ac6c729a1d3a472d8c4bbee297414a5c8da3114f3032aa3ca1.lean/declarations/abstractfvarsrange--a04321bdc41e68bb6aa47f4f.md) | 72 | `declaration-track:a04321bdc41e68bb6aa47f4f5a0423b95d793d23725332d534e91c8e05afde4f` |
| 3 | `abbrev` | [abstractFVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variantc492eba4529341ac6c729a1d3a472d8c4bbee297414a5c8da3114f3032aa3ca1.lean/declarations/abstractfvars--72d08f132b15f040a51f45b6.md) | 93 | `declaration-track:72d08f132b15f040a51f45b6e121c4ace28a9d0ad06b4dc84e817486db85009e` |
| 4 | `def` | [mkLambdaFVarsS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variantc492eba4529341ac6c729a1d3a472d8c4bbee297414a5c8da3114f3032aa3ca1.lean/declarations/mklambdafvarss--2810826edba444d3e0f63087.md) | 100 | `declaration-track:2810826edba444d3e0f63087daddc82bcb60a45b770b08765f599040c1d5b497` |
| 5 | `def` | [mkForallFVarsS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractS/Variantc492eba4529341ac6c729a1d3a472d8c4bbee297414a5c8da3114f3032aa3ca1.lean/declarations/mkforallfvarss--b127988874e9dd48aab29aa9.md) | 112 | `declaration-track:b127988874e9dd48aab29aa95f9baff1cf9388d021810bc0dff5d35881fba49e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
