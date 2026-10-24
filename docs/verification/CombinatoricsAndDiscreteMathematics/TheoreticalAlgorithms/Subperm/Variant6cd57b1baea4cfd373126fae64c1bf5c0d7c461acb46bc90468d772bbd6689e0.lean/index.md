# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subperm.Variant6cd57b1baea4cfd373126fae64c1bf5c0d7c461acb46bc90468d772bbd6689e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d05c4cc0d6f2c58c79677084835b9952ad887d28",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant6cd57b1baea4cfd373126fae64c1bf5c0d7c461acb46bc90468d772bbd6689e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant6cd57b1baea4cfd373126fae64c1bf5c0d7c461acb46bc90468d772bbd6689e0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant6cd57b1baea4cfd373126fae64c1bf5c0d7c461acb46bc90468d772bbd6689e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d05c4cc0d6f2c58c79677084835b9952ad887d28`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant6cd57b1baea4cfd373126fae64c1bf5c0d7c461acb46bc90468d772bbd6689e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant6cd57b1baea4cfd373126fae64c1bf5c0d7c461acb46bc90468d772bbd6689e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Pairwise` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Perm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [subperm_iff_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant6cd57b1baea4cfd373126fae64c1bf5c0d7c461acb46bc90468d772bbd6689e0.lean/declarations/subperm-iff-count--c6aa324ede4e46e35d06d88c.md) | 42 | `result-track:c6aa324ede4e46e35d06d88c8dfe65b951cc1845ecac6d576b224ca7c03dc1b1` |
| 2 | `lemma` | [subperm_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant6cd57b1baea4cfd373126fae64c1bf5c0d7c461acb46bc90468d772bbd6689e0.lean/declarations/subperm-iff--dd672a7c2c8f76abbec6e080.md) | 46 | `result-track:dd672a7c2c8f76abbec6e080300c2df738f6927be9667c511f92ebdc47bcc6db` |
| 3 | `lemma` | [subperm_singleton_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant6cd57b1baea4cfd373126fae64c1bf5c0d7c461acb46bc90468d772bbd6689e0.lean/declarations/subperm-singleton-iff--6ce6a8cadfbaf5ff551ba406.md) | 52 | `result-track:6ce6a8cadfbaf5ff551ba406a43d65f3fe345285aba78239184fbf1be75fffbe` |
| 4 | `lemma` | [subperm_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant6cd57b1baea4cfd373126fae64c1bf5c0d7c461acb46bc90468d772bbd6689e0.lean/declarations/subperm-cons-self--b7796e7a3eaa8cfe3075ccf5.md) | 60 | `result-track:b7796e7a3eaa8cfe3075ccf5d86e5b42203bab98ca96f16e671f590cfe68657c` |
| 5 | `theorem` | [cons_subperm_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant6cd57b1baea4cfd373126fae64c1bf5c0d7c461acb46bc90468d772bbd6689e0.lean/declarations/cons-subperm-of-mem--184eff6d243c39e4fbb12416.md) | 65 | `result-track:184eff6d243c39e4fbb12416d101a9c14444402742f2c89e8ecfeb886baf65af` |
| 6 | `theorem` | [Nodup.subperm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subperm/Variant6cd57b1baea4cfd373126fae64c1bf5c0d7c461acb46bc90468d772bbd6689e0.lean/declarations/nodup-subperm--5460c81f1358d090e08ffb89.md) | 69 | `result-track:5460c81f1358d090e08ffb8958cff31fc3635cd408178079ec240571048abcf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
