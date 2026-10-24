# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Productive.Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a886c2cecec6d9af940e0fcc542fccabde43e435",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a886c2cecec6d9af940e0fcc542fccabde43e435`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.WSeq.Relation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Productive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean/declarations/productive--1b778a730233b4832b9e4914.md) | 27 | `declaration-track:1b778a730233b4832b9e4914aa23121d7d7172c32753171178cbcd57b6d9cf70` |
| 2 | `theorem` | [productive_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean/declarations/productive-iff--4160ece99c7be789680a0e92.md) | 30 | `result-track:4160ece99c7be789680a0e921e154c32e88d75bb18aa3d34585977f2c3cdb0fc` |
| 3 | `instance` | [get?_terminates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean/declarations/get-terminates--4c3ee9effee8aba687820a03.md) | 33 | `declaration-track:4c3ee9effee8aba687820a031516860b572202d6f1d1bb5b182e0b15b14f0986` |
| 4 | `instance` | [head_terminates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean/declarations/head-terminates--717db8a6c1872dcc69f470ea.md) | 36 | `declaration-track:717db8a6c1872dcc69f470ea3c14c65314ebccdc8972ff7ac71450356f7485f8` |
| 5 | `instance` | [productive_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean/declarations/productive-tail--f59a54564120ba466f5bc6a6.md) | 39 | `declaration-track:f59a54564120ba466f5bc6a610952c9e54bbcc126030eb7d69920b6f15a70ea6` |
| 6 | `instance` | [productive_dropn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean/declarations/productive-dropn--e91fea93ad9fb1da63649cf4.md) | 42 | `declaration-track:e91fea93ad9fb1da63649cf4d97d838188e6364ef03a0272b411ee184c42c6e3` |
| 7 | `instance` | [productive_ofSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean/declarations/productive-ofseq--4dffd834357a90c2c91350e6.md) | 47 | `declaration-track:4dffd834357a90c2c91350e60897da4fedfa35360adfa1d69052cfedf83bb73f` |
| 8 | `theorem` | [productive_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean/declarations/productive-congr--d10ffee37416ff05edaa9440.md) | 50 | `result-track:d10ffee37416ff05edaa94408b9c4b04fb886b4768a08fb7621d4f7e423049c1` |
| 9 | `def` | [toSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean/declarations/toseq--b2a63db6c12598e2a427bfec.md) | 55 | `declaration-track:b2a63db6c12598e2a427bfec2477694d7ed131595eb9d06393fd249ce7c373cf` |
| 10 | `theorem` | [toSeq_ofSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Productive/Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e.lean/declarations/toseq-ofseq--25d5658ef82bb902c4ef36a3.md) | 66 | `result-track:25d5658ef82bb902c4ef36a35146793c30ca9fcec15f2522874065b2245411d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
