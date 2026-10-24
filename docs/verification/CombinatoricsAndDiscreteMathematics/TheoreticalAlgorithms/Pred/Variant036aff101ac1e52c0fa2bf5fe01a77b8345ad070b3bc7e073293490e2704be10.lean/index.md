# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pred.Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6033f1d972967805d4e6e685f62c46c220478ba6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6033f1d972967805d4e6e685f62c46c220478ba6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Termination` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Combinators.FilterMap` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Split.Basic` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Pred` — import line 24; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 25; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 26; external provider; requires a separately pinned dependency.
- `Init.Data.List.SplitOn.Lemmas` — import line 27; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toList_splitToSubslice_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/declarations/tolist-splittosubslice-bool--a17b711ff2f34b5ac0bdf9f4.md) | 41 | `result-track:a17b711ff2f34b5ac0bdf9f432557241fd9d8c5141e9852563ea6c105b738bd0` |
| 2 | `theorem` | [toList_split_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/declarations/tolist-split-bool--35b25bbba9c6744fe4eeb4cc.md) | 65 | `result-track:35b25bbba9c6744fe4eeb4cca593b34ba509b2da5c45e7982ce6e2466d028758` |
| 3 | `theorem` | [Pattern.Model.split_bool_eq_internal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/declarations/pattern-model-split-bool-eq-internal--de50a297e5002fc24060b050.md) | 73 | `result-track:de50a297e5002fc24060b050634099c9d70363ef780afbd3f4cb331d8d9d609b` |
| 4 | `theorem` | [Pattern.Model.split_eq_split_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/declarations/pattern-model-split-eq-split-decide--aaf7186819b52a97de77efdf.md) | 96 | `result-track:aaf7186819b52a97de77efdf0f29497ce45d3a363e62aca7c1f058638e20f4a5` |
| 5 | `theorem` | [toList_splitToSubslice_prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/declarations/tolist-splittosubslice-prop--b98dcd08562d707136fc5ff5.md) | 110 | `result-track:b98dcd08562d707136fc5ff53c7637f4af82d4fb99813112451e90abd116025b` |
| 6 | `theorem` | [toList_split_prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/declarations/tolist-split-prop--1c65ffbd4a66195190346f9b.md) | 118 | `result-track:1c65ffbd4a66195190346f9b8e24ee430c52c45540be89869fa004e81a85c3eb` |
| 7 | `theorem` | [toList_split_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/declarations/tolist-split-bool--3df4d023ada33b7d673cdbe2.md) | 126 | `result-track:3df4d023ada33b7d673cdbe245d87119771f37af0288a2e54968d62560570c80` |
| 8 | `theorem` | [toList_split_prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/declarations/tolist-split-prop--06ba989cf022f33c2a65f96d.md) | 130 | `result-track:06ba989cf022f33c2a65f96dfb726c59548fb8a1309c2e9ceccb6bf7326598db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
