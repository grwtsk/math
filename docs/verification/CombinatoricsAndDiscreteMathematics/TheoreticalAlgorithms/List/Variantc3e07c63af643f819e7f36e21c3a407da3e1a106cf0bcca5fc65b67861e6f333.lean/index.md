# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantc3e07c63af643f819e7f36e21c3a407da3e1a106cf0bcca5fc65b67861e6f333

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc01d626367fc8b0a8885893022fd30dc496ee90",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantc3e07c63af643f819e7f36e21c3a407da3e1a106cf0bcca5fc65b67861e6f333.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantc3e07c63af643f819e7f36e21c3a407da3e1a106cf0bcca5fc65b67861e6f333.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantc3e07c63af643f819e7f36e21c3a407da3e1a106cf0bcca5fc65b67861e6f333.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc01d626367fc8b0a8885893022fd30dc496ee90`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantc3e07c63af643f819e7f36e21c3a407da3e1a106cf0bcca5fc65b67861e6f333.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantc3e07c63af643f819e7f36e21c3a407da3e1a106cf0bcca5fc65b67861e6f333.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Producers.Monadic.List` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.step_iter_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantc3e07c63af643f819e7f36e21c3a407da3e1a106cf0bcca5fc65b67861e6f333.lean/declarations/list-step-iter-nil--f645854f896eac89611224e6.md) | 27 | `result-track:f645854f896eac89611224e669ae2395c38a7a645718d92390601348753b07a4` |
| 2 | `theorem` | [List.step_iter_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantc3e07c63af643f819e7f36e21c3a407da3e1a106cf0bcca5fc65b67861e6f333.lean/declarations/list-step-iter-cons--2ebfa3407e9fc5f5161366fb.md) | 32 | `result-track:2ebfa3407e9fc5f5161366fbd193b541b8ea33ff3c163d6e3d28ee3b9aad1512` |
| 3 | `theorem` | [List.toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantc3e07c63af643f819e7f36e21c3a407da3e1a106cf0bcca5fc65b67861e6f333.lean/declarations/list-toarray-iter--5b613ace8953f64ddb9be790.md) | 37 | `result-track:5b613ace8953f64ddb9be790b8868a835cbaaea8d074605f61f9558c5e27d76f` |
| 4 | `theorem` | [List.toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantc3e07c63af643f819e7f36e21c3a407da3e1a106cf0bcca5fc65b67861e6f333.lean/declarations/list-tolist-iter--2ed6730a132b0a0f37e1612e.md) | 42 | `result-track:2ed6730a132b0a0f37e1612e79a6fd4375a92c716f51107a49e0d7e3c281966b` |
| 5 | `theorem` | [List.toListRev_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantc3e07c63af643f819e7f36e21c3a407da3e1a106cf0bcca5fc65b67861e6f333.lean/declarations/list-tolistrev-iter--06ed901f4607aa9853b80365.md) | 47 | `result-track:06ed901f4607aa9853b80365d4ed9b3f3316adfb52acb0fe4227635b39892c27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
