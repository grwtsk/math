# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Length.Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4fb4fb2e7e8d771b3f9972aa73573d29ad1604a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4fb4fb2e7e8d771b3f9972aa73573d29ad1604a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Char.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/declarations/length--c675bc7ba944fbb1561df01e.md) | 33 | `declaration-track:c675bc7ba944fbb1561df01e50afeb4613d0fa621b491d0a9f404ae68373b7b2` |
| 2 | `theorem` | [Internal.size_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/declarations/internal-size-toarray--9b54f6c344d62cc876d74e4b.md) | 37 | `result-track:9b54f6c344d62cc876d74e4bc44c06ef38171a675bc12e8421b69b48b8731feb` |
| 3 | `theorem` | [length_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/declarations/length-tolist--fa454199eaabfdf0c84ff2a5.md) | 40 | `result-track:fa454199eaabfdf0c84ff2a591e7a6e0b83ab7f3fc7d1688fef8a6117261475e` |
| 4 | `theorem` | [length_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/declarations/length-data--77d2f026af661982e6661fd7.md) | 43 | `result-track:77d2f026af661982e6661fd767046877951023bdffce7382bf256c986a4bf091` |
| 5 | `theorem` | [length_ofList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/declarations/length-oflist--da65465a549de855d4ca9288.md) | 46 | `result-track:da65465a549de855d4ca9288568f664f7d6c070962ab019639d2231a41c45b82` |
| 6 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Length.Variant20966f34a8df5ac810d2e1dd8fa38fd7583cd4925f3dafa2606c845854d9bab3.List.length_asString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-le--ccec1ce2c4b97b4234eba867.md) | 50 | `result-track:ccec1ce2c4b97b4234eba867d62b3e67c6fb892e76edb6497929ff16383da271` |
| 7 | `theorem` | [length_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/declarations/length-empty--bc8d6b08e5f9d1dba715d370.md) | 53 | `result-track:bc8d6b08e5f9d1dba715d3704e1ef9e4106a7b87d16b596d98cae2fea5060f81` |
| 8 | `theorem` | [length_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/declarations/length-singleton--94f563b07458ac217b96731f.md) | 56 | `result-track:94f563b07458ac217b96731fa8feb0ddb2316cfea430fd8f24dd3ebe60ffd3db` |
| 9 | `theorem` | [length_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/declarations/length-push--908f534a7cb3e08a1ed92e2b.md) | 59 | `result-track:908f534a7cb3e08a1ed92e2bb9f43cd0065b1b31977d79aa205d12fa09145284` |
| 10 | `theorem` | [length_pushn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/declarations/length-pushn--982ec631197f9304d106b1f3.md) | 62 | `result-track:982ec631197f9304d106b1f385799d215e66f442027e099674aa82503196ec74` |
| 11 | `theorem` | [length_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/declarations/length-append--1325804dfdfd407787d2b772.md) | 65 | `result-track:1325804dfdfd407787d2b772696707ad9649cfb0f93739354fde70205094f8e9` |
| 12 | `theorem` | [length_toString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant305e54d88d67a0e96bb5cd38b4360d33e744a40b710dd74cf28257a99f2d60dd.lean/declarations/length-tostring--a6399bd0e1bfad2c935724c0.md) | 73 | `result-track:a6399bd0e1bfad2c935724c0120db6e57e684d0318b9ced532802b3f2e0d8a37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
