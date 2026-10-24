# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Cut.Variant836442b57fad3332e219fa04252a50db2e274a49dbc88d1fc00fdb0f388a1e15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b1d93e0604a1b71760c47184debd6f3b7d4f87c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cut/Variant836442b57fad3332e219fa04252a50db2e274a49dbc88d1fc00fdb0f388a1e15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant836442b57fad3332e219fa04252a50db2e274a49dbc88d1fc00fdb0f388a1e15.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant836442b57fad3332e219fa04252a50db2e274a49dbc88d1fc00fdb0f388a1e15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b1d93e0604a1b71760c47184debd6f3b7d4f87c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Cut/Variant836442b57fad3332e219fa04252a50db2e274a49dbc88d1fc00fdb0f388a1e15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Cut/Variant836442b57fad3332e219fa04252a50db2e274a49dbc88d1fc00fdb0f388a1e15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Kind` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InvocationCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant836442b57fad3332e219fa04252a50db2e274a49dbc88d1fc00fdb0f388a1e15.lean/declarations/invocationcut--9dc3ec2f58eacab5333ca78f.md) | 23 | `declaration-track:9dc3ec2f58eacab5333ca78f63aa6e9a8a1bf522f1535f9245013f559533b853` |
| 2 | `structure` | [CutValidator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant836442b57fad3332e219fa04252a50db2e274a49dbc88d1fc00fdb0f388a1e15.lean/declarations/cutvalidator--271a4419e9e3c14324829ae9.md) | 46 | `declaration-track:271a4419e9e3c14324829ae9c410508426b26513fb0129d5c204afabd5c1558f` |
| 3 | `structure` | [CommittedCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Cut/Variant836442b57fad3332e219fa04252a50db2e274a49dbc88d1fc00fdb0f388a1e15.lean/declarations/committedcut--a4611be844a67c60b909a14d.md) | 59 | `declaration-track:a4611be844a67c60b909a14dae390e85aa1e2dceb4a895b3a0407a80911d92c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
