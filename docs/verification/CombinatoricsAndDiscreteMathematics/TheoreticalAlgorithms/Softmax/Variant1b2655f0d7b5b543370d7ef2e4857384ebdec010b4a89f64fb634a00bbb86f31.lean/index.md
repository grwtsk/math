# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Softmax.Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54dccc291f0be57076562be279f113b8e1fa7e9f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54dccc291f0be57076562be279f113b8e1fa7e9f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.IntervalVector` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.TaylorModel` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expVector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/declarations/expvector--f8c2868a1e105b140276bcdc.md) | 43 | `declaration-track:f8c2868a1e105b140276bcdc5cad2bb8143daeb1e6a335cbac2927c143af6237` |
| 2 | `def` | [logSumExp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/declarations/logsumexp--41a517f708a59773ec400054.md) | 57 | `declaration-track:41a517f708a59773ec4000541fa23794dbd2a4082ffabde4350145dc75ec57ba` |
| 3 | `def` | [softmaxComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/declarations/softmaxcomponent--252003a223b3ea57dc28439d.md) | 92 | `declaration-track:252003a223b3ea57dc28439d39bcd5ffa7ac275fa50e3ea210ced43498ce1577` |
| 4 | `def` | [softmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/declarations/softmax--eb9c96291ca335499d15032a.md) | 122 | `declaration-track:eb9c96291ca335499d15032a91605241ee944475bb87816996d6129642258eba` |
| 5 | `theorem` | [mem_foldl_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/declarations/mem-foldl-add--7889dd9f3cf258fd4db0f67a.md) | 132 | `result-track:7889dd9f3cf258fd4db0f67ae7040c7e5a2ed10e0bbd80bcc07f59750a89d8e9` |
| 6 | `def` | [Real.softmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/declarations/real-softmax--116f8ac33b015258aeb02114.md) | 162 | `declaration-track:116f8ac33b015258aeb02114f624ab9c53f3553a35218188207f63e163212e1a` |
| 7 | `theorem` | [softmax_algebraic_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/declarations/softmax-algebraic-identity--7a747c3e29c95138666e8106.md) | 176 | `result-track:7a747c3e29c95138666e8106aefd3de82c05e2230bf56a091fee7ba1e054c677` |
| 8 | `theorem` | [mem_softmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant1b2655f0d7b5b543370d7ef2e4857384ebdec010b4a89f64fb634a00bbb86f31.lean/declarations/mem-softmax--cbb199a459ffa1820e5efcf7.md) | 211 | `result-track:cbb199a459ffa1820e5efcf7dd2f610475d6c774f5219fb4fe1a99de0194b710` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
