# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeriveRegExpGenerator.Variantf3d02ba0f435985247a7050d788a20dbd98526928fd2fa25d93fcdd204db8866

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "186c1f25939e7a38bcbf5bc8e7044fc581d5e1f2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantf3d02ba0f435985247a7050d788a20dbd98526928fd2fa25d93fcdd204db8866.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantf3d02ba0f435985247a7050d788a20dbd98526928fd2fa25d93fcdd204db8866.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantf3d02ba0f435985247a7050d788a20dbd98526928fd2fa25d93fcdd204db8866.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `186c1f25939e7a38bcbf5bc8e7044fc581d5e1f2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantf3d02ba0f435985247a7050d788a20dbd98526928fd2fa25d93fcdd204db8866.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantf3d02ba0f435985247a7050d788a20dbd98526928fd2fa25d93fcdd204db8866.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Plausible.Attr` — import line 6; external provider; requires a separately pinned dependency.
- `Plausible.Arbitrary` — import line 7; external provider; requires a separately pinned dependency.
- `Plausible.DeriveArbitrary` — import line 8; external provider; requires a separately pinned dependency.
- `Plausible.Testable` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RegExp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantf3d02ba0f435985247a7050d788a20dbd98526928fd2fa25d93fcdd204db8866.lean/declarations/regexp--280be9b35771e337a20a9209.md) | 23 | `declaration-track:280be9b35771e337a20a9209970c8f26eae95ddb05f8654693f63f9282b1dfdb` |
| 2 | `def` | [neverMatchesAnyString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantf3d02ba0f435985247a7050d788a20dbd98526928fd2fa25d93fcdd204db8866.lean/declarations/nevermatchesanystring--bb173dcb78524d5035846737.md) | 103 | `declaration-track:bb173dcb78524d5035846737f44d2bdcc9a9ef42a4b204008928e1b2254f8843` |
| 3 | `def` | [shrinkRegExp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantf3d02ba0f435985247a7050d788a20dbd98526928fd2fa25d93fcdd204db8866.lean/declarations/shrinkregexp--182187d9a8ea0a92e6310a88.md) | 111 | `declaration-track:182187d9a8ea0a92e6310a8863ae390eb6847d30d8efa1dc93163c770f091bdd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantf3d02ba0f435985247a7050d788a20dbd98526928fd2fa25d93fcdd204db8866.lean/declarations/instance--1543387b3f872900cf1d2750.md) | 119 | `declaration-track:1543387b3f872900cf1d27507e4b83084af1593e3086b9499bca79898186fbfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
