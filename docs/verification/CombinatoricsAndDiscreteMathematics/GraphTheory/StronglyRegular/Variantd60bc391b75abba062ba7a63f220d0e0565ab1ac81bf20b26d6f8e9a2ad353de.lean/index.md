# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.StronglyRegular.Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba6718795cc77b500fee8eb959c9fd00b92743f0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba6718795cc77b500fee8eb959c9fd00b92743f0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean.json)

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
| 1 | `structure` | [IsSRGWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/issrgwith--ef2da1a0887957205fbb36aa.md) | 58 | `declaration-track:ef2da1a0887957205fbb36aaa5dc4993a8c9cbf18a45debbbbfde2f02b231cfa` |
| 2 | `theorem` | [bot_strongly_regular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/bot-strongly-regular--2325e09011bbacbe745386ba.md) | 68 | `result-track:2325e09011bbacbe745386ba1280da7659776debf376e90dfababb1c505b7f1d` |
| 3 | `theorem` | [IsSRGWith.ediam_eq_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/issrgwith-ediam-eq-two--0e5bcdaa8c7ba7b97b8e5fb8.md) | 77 | `result-track:0e5bcdaa8c7ba7b97b8e5fb8c39fe10c1121d96958cddb9bee379540dc6b92ac` |
| 4 | `theorem` | [IsSRGWith.top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/issrgwith-top--0586fdc50cc8dec46c6a4004.md) | 94 | `result-track:0586fdc50cc8dec46c6a4004376c65cb9eae827f64187279e3e2a937fb9ec09d` |
| 5 | `theorem` | [IsSRGWith.card_neighborFinset_union_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/issrgwith-card-neighborfinset-union-eq--1864b0a8df75afe49f6594de.md) | 102 | `result-track:1864b0a8df75afe49f6594de16b0d6cdf5e7f214299c03f52588dbc6f8cff833` |
| 6 | `theorem` | [IsSRGWith.card_neighborFinset_union_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/issrgwith-card-neighborfinset-union-of-not-adj--8d33d3e595eec3e06058506a.md) | 115 | `result-track:8d33d3e595eec3e06058506a392d978f70fe6a7ca5247606facddc412b1d231c` |
| 7 | `theorem` | [IsSRGWith.card_neighborFinset_union_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/issrgwith-card-neighborfinset-union-of-adj--81a0454d7020364acc68dae7.md) | 121 | `result-track:81a0454d7020364acc68dae77d1cf1fded9be3a2936221c2c40ff2564c45d68d` |
| 8 | `theorem` | [compl_neighborFinset_sdiff_inter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/compl-neighborfinset-sdiff-inter-eq--406eb00e1b6457658846f3ce.md) | 126 | `result-track:406eb00e1b6457658846f3ce343e65599395378b29c54f24a604ec890df4068d` |
| 9 | `theorem` | [sdiff_compl_neighborFinset_inter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/sdiff-compl-neighborfinset-inter-eq--2279290767835c1d88e962cf.md) | 131 | `result-track:2279290767835c1d88e962cf00fc53bea6587740a7aefc25a6b12ee5ea73a7e6` |
| 10 | `theorem` | [IsSRGWith.compl_is_regular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/issrgwith-compl-is-regular--1cb3530e88a3b19216be16c5.md) | 136 | `result-track:1cb3530e88a3b19216be16c530fea704cd7c961de529890043942b465679de4a` |
| 11 | `theorem` | [IsSRGWith.card_commonNeighbors_eq_of_adj_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/issrgwith-card-commonneighbors-eq-of-adj-compl--b023d9826226a0d20a13cdff.md) | 141 | `result-track:b023d9826226a0d20a13cdff3b88edd2d157b16d93a778b78f7b256ea20cf771` |
| 12 | `theorem` | [IsSRGWith.card_commonNeighbors_eq_of_not_adj_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/issrgwith-card-commonneighbors-eq-of-not-adj-compl--8bd7c66f4407671077265edb.md) | 156 | `result-track:8bd7c66f4407671077265edb5e5e7bcb708360ca8da20f9c50476bf01411aebd` |
| 13 | `theorem` | [IsSRGWith.compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/issrgwith-compl--6c710907379d08c3bff0f380.md) | 167 | `result-track:6c710907379d08c3bff0f380c7c73e30809ef534013cd965241fdbab5545235d` |
| 14 | `theorem` | [IsSRGWith.param_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/issrgwith-param-eq--04bd70f774fccfcef2345f63.md) | 176 | `result-track:04bd70f774fccfcef2345f63587eb4b7fe7979e62045f5a73db86a4575c36da0` |
| 15 | `theorem` | [IsSRGWith.matrix_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantd60bc391b75abba062ba7a63f220d0e0565ab1ac81bf20b26d6f8e9a2ad353de.lean/declarations/issrgwith-matrix-eq--fad2c07635be1e017c191655.md) | 213 | `result-track:fad2c07635be1e017c1916550a65135c2fc5b208ae65e441190a426cf35a2063` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
