# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Context.Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "601f4f17b0b0ad688a8b87b448b89cfad65808b9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `601f4f17b0b0ad688a8b87b448b89cfad65808b9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Context/Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Cut` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.Identity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProtectedDistinction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259.lean/declarations/protecteddistinction--44b71d61dae311989d3634d0.md) | 16 | `declaration-track:44b71d61dae311989d3634d0afd5741e99b9de51084a522fb776e36ae37bf973` |
| 2 | `def` | [requiredProtectedDistinctions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259.lean/declarations/requiredprotecteddistinctions--a0020bee616ba2a78d3fdd6c.md) | 31 | `declaration-track:a0020bee616ba2a78d3fdd6cac036412b60770f176cbcf5dcae61139eda712b2` |
| 3 | `structure` | [ContextEnvelope](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259.lean/declarations/contextenvelope--b0f6de72a9d7e0edae6ec007.md) | 48 | `declaration-track:b0f6de72a9d7e0edae6ec00700e4b357f1dd780479607893035537273a00c801` |
| 4 | `def` | [ContextEnvelope.preservesRequired](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259.lean/declarations/contextenvelope-preservesrequired--ac545c7fe9903c41381651cd.md) | 62 | `declaration-track:ac545c7fe9903c41381651cd00427c6f845ed5b315fa7eede7f5b209d5273dab` |
| 5 | `structure` | [ContextBoundCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Context/Variantb49cfa4727089cb744fc6a8a7b14652df8cf761ea0ef1b3ee12019b3f21fe259.lean/declarations/contextboundcut--c8d06e934453d280eccf0bb5.md) | 67 | `declaration-track:c8d06e934453d280eccf0bb5b972c2c02e578037b94c3a9f6fdd697b68387fa2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
