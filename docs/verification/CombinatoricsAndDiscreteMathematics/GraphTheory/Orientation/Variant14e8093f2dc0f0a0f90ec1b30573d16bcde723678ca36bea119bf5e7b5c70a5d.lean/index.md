# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Orientation.Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0344ea92d59b18a39fddaa0dc280277a451a99ed",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0344ea92d59b18a39fddaa0dc280277a451a99ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Digraph.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toSimpleGraphInclusive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean/declarations/tosimplegraphinclusive--1e8453ba5d49416cb588c129.md) | 55 | `declaration-track:1e8453ba5d49416cb588c129daf56637ad3f718192a8f7e3eba4dec153a9bdee` |
| 2 | `def` | [toSimpleGraphStrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean/declarations/tosimplegraphstrict--133fd0a3ec95f6b5aa81dbe2.md) | 61 | `declaration-track:133fd0a3ec95f6b5aa81dbe214b08e9ee76d3a2b9ab9c2114af4a6ede7ba31da` |
| 3 | `lemma` | [toSimpleGraphStrict_subgraph_toSimpleGraphInclusive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean/declarations/tosimplegraphstrict-subgraph-tosimplegraphinclusive--f972cdc56d26a1b531c66829.md) | 66 | `result-track:f972cdc56d26a1b531c6682924e0da6171b4071904b3dbac70b024edd15afe21` |
| 4 | `lemma` | [toSimpleGraphInclusive_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean/declarations/tosimplegraphinclusive-mono--b244228e39849cc66d3c5127.md) | 71 | `result-track:b244228e39849cc66d3c51277a0a889603c3127744250180e1de91c1f6a08f5e` |
| 5 | `lemma` | [toSimpleGraphStrict_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean/declarations/tosimplegraphstrict-mono--3f49436bc1c94f2afd52d1f2.md) | 79 | `result-track:3f49436bc1c94f2afd52d1f20ad5dea3c00469757b0ecf3411204994909d1f4d` |
| 6 | `lemma` | [toSimpleGraphInclusive_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean/declarations/tosimplegraphinclusive-top--f58c2ffe0f9df4d267c77f53.md) | 83 | `result-track:f58c2ffe0f9df4d267c77f53a7666ce33357a7d297a7eb7e3ff990d95c5ca14d` |
| 7 | `lemma` | [toSimpleGraphStrict_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean/declarations/tosimplegraphstrict-top--a1d1072e33cfbd89590c8530.md) | 87 | `result-track:a1d1072e33cfbd89590c8530e956d14e6dc0da91a15c2c3cd414c1baadd4efa9` |
| 8 | `lemma` | [toSimpleGraphInclusive_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean/declarations/tosimplegraphinclusive-bot--6c516e71ebdd6160a04bc58f.md) | 91 | `result-track:6c516e71ebdd6160a04bc58f72d3bb1db4a73c2dce3277bf2157af6f6762cc23` |
| 9 | `lemma` | [toSimpleGraphStrict_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Orientation/Variant14e8093f2dc0f0a0f90ec1b30573d16bcde723678ca36bea119bf5e7b5c70a5d.lean/declarations/tosimplegraphstrict-bot--e9d0c67291aa553f1e00bef9.md) | 95 | `result-track:e9d0c67291aa553f1e00bef94ae6d342d1b5e15ffd83f6874632597d22780766` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
