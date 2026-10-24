# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monad.Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "034485630d31f2d180d914942e1e531a632f4ee4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `034485630d31f2d180d914942e1e531a632f4ee4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMonad](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c.lean/declarations/instmonad--8536643a120efafbc1c219b9.md) | 22 | `declaration-track:8536643a120efafbc1c219b9d2dcf524bcaa72e31967b1481b93a474a8bad911` |
| 2 | `theorem` | [pure_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c.lean/declarations/pure-def--b112ce94f839cc393a2fcd2a.md) | 27 | `result-track:b112ce94f839cc393a2fcd2a6799815fa09f278d99e97e95f514efc04ae993d2` |
| 3 | `instance` | [instLawfulMonad](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c.lean/declarations/instlawfulmonad--4cf3d06e3ad9ebd72cd68ec3.md) | 29 | `declaration-track:4cf3d06e3ad9ebd72cd68ec31720c41a1d67168d02f6afa0008e1a4257644b7c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c.lean/declarations/instance--6e17e89e8811a6d017b9df2f.md) | 35 | `declaration-track:6e17e89e8811a6d017b9df2f31564ca29918dbce8e9952c665e4b20bb014f60d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant71e018d8172d9e038ae0e5224d36433f1c725b298927e345e8442b53729f9a0c.lean/declarations/instance--541f8ae19440f756331658c2.md) | 39 | `declaration-track:541f8ae19440f756331658c2953082589051cb4305c7602e3fd02afea244ee39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
