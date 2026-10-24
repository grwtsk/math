# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TaylorSeries.Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c42a63d4f7ecb7fae126fe4f598ae85889490169",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c42a63d4f7ecb7fae126fe4f598ae85889490169`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean.json)

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
| 1 | `lemma` | [hasSum_taylorSeries_on_ball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean/declarations/hassum-taylorseries-on-ball--161f2310932dced57b4b1467.md) | 53 | `result-track:161f2310932dced57b4b14678cb692c6f9c17209a23525888aa94fcee4bc52fc` |
| 2 | `lemma` | [taylorSeries_eq_on_ball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean/declarations/taylorseries-eq-on-ball--03fba7f55f0fdd773178bc9d.md) | 73 | `result-track:03fba7f55f0fdd773178bc9d3fc9796ac21e36a8d9b20e2653fd1a84736dfd6b` |
| 3 | `lemma` | [taylorSeries_eq_on_ball'](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean/declarations/taylorseries-eq-on-ball--eed77a0389df6da361462199.md) | 80 | `result-track:eed77a0389df6da361462199e7b19f1713f31e18c0496c639659ece447dbc05c` |
| 4 | `lemma` | [hasSum_taylorSeries_on_eball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean/declarations/hassum-taylorseries-on-eball--00ed680b4b7335a20b8119bf.md) | 95 | `result-track:00ed680b4b7335a20b8119bffb957a7db7bee261d09638fa8d04f36b9abfa7bc` |
| 5 | `lemma` | [taylorSeries_eq_on_eball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean/declarations/taylorseries-eq-on-eball--f703ef58185c8880593fea5e.md) | 107 | `result-track:f703ef58185c8880593fea5e97537bfe6a56669597d13e8f96b5cb4eba4e35ce` |
| 6 | `lemma` | [taylorSeries_eq_on_eball'](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean/declarations/taylorseries-eq-on-eball--5dad940478c03cad72087ae6.md) | 114 | `result-track:5dad940478c03cad72087ae69632261224a41710219a3348ab8f1601e26aa33a` |
| 7 | `lemma` | [hasSum_taylorSeries_of_entire](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean/declarations/hassum-taylorseries-of-entire--94562208d66a4884855873a7.md) | 128 | `result-track:94562208d66a4884855873a7e1a1acd5ba4e6887717070adf91f9817c0e0d15e` |
| 8 | `lemma` | [taylorSeries_eq_of_entire](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean/declarations/taylorseries-eq-of-entire--c669a0794526ac6e023e038b.md) | 136 | `result-track:c669a0794526ac6e023e038b666277c7bafed042f83ecd8cac7088104da2732d` |
| 9 | `lemma` | [taylorSeries_eq_of_entire'](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant9078300526195f1285711777a20209197e541e2464e416c5fd37364bf11240fd.lean/declarations/taylorseries-eq-of-entire--0c4ca60d274f5518e0fd649a.md) | 142 | `result-track:0c4ca60d274f5518e0fd649a66fc3288a2ae001ef0b883b49764f4ed526069f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
