# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ac30dcca4a7597e139f68990832270d2e664e34",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ac30dcca4a7597e139f68990832270d2e664e34`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean.json)

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
| 1 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace--2ccff7ab9d24f9449c43341a.md) | 53 | `declaration-track:2ccff7ab9d24f9449c43341a48807d4363e0bae1345e08f00417e282a69bf93b` |
| 2 | `lemma` | [trace_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-diagonal--a192b2505c78ca8bffc06d36.md) | 56 | `result-track:a192b2505c78ca8bffc06d36833d6866269d1fbcf26785b7eab5e11bd85c34dd` |
| 3 | `theorem` | [trace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-zero--593d62d0f2047a120f5c949f.md) | 63 | `result-track:593d62d0f2047a120f5c949fc012ed5d1bdafafe1fe52d9c089be42cfde0aa84` |
| 4 | `lemma` | [trace_eq_zero_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-eq-zero-of-isempty--7295e160cf827291d5fe1ae5.md) | 69 | `result-track:7295e160cf827291d5fe1ae530be45296d025760309e14985ef550d3c2bcb74a` |
| 5 | `theorem` | [trace_add](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-add--0456c91423dec05b84e489b1.md) | 72 | `result-track:0456c91423dec05b84e489b1553b0998cf1a4ba9c163a56df2131e1cd9a7f1b4` |
| 6 | `theorem` | [trace_smul](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-smul--065fd60099d688374c6761b1.md) | 76 | `result-track:065fd60099d688374c6761b19709dbe4cd0c2d2b5b7270350dc2851090bf00b5` |
| 7 | `theorem` | [trace_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-transpose--a5ca55d60c71a2d01e405e79.md) | 81 | `result-track:a5ca55d60c71a2d01e405e79f55a027af07f75783ce6c206e115261672cc57eb` |
| 8 | `theorem` | [trace_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-conjtranspose--74b9c0ca59fc687bb26df5d0.md) | 85 | `result-track:74b9c0ca59fc687bb26df5d05c6f27228a9c35d708d8a57d752e604207fdf450` |
| 9 | `def` | [traceAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/traceaddmonoidhom--6d6f2392c3e01cf689131fe3.md) | 92 | `declaration-track:6d6f2392c3e01cf689131fe3b38b178a4a850d4130b63e00057f9eaf664f11fd` |
| 10 | `def` | [traceLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/tracelinearmap--55315b32bb0db6dcc561c1ed.md) | 99 | `declaration-track:55315b32bb0db6dcc561c1edbca36a890a08f2a3141b2b01be48a7a457eb6f97` |
| 11 | `theorem` | [trace_list_sum](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-list-sum--9238876cef9cbd9a78e6cd9e.md) | 107 | `result-track:9238876cef9cbd9a78e6cd9ed4b4b1fd14b17bb806a6e5776c8a9cedf373ba14` |
| 12 | `theorem` | [trace_multiset_sum](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-multiset-sum--81cc011a35b1c771265f203a.md) | 111 | `result-track:81cc011a35b1c771265f203a4d6132d7d3ea219ff85e59d6d45296137ac86c45` |
| 13 | `theorem` | [trace_sum](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-sum--73c2b4a603eae8fe1878bbaf.md) | 115 | `result-track:73c2b4a603eae8fe1878bbaf187de9317ad5c2bc71dc92907aebe3fa513eba70` |
| 14 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Trace.Variant27b5170c8474528a839f99cf17989aecc165a1fe72b7d84288d7aaccda1740c2.AddMonoidHom.map_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/root-grwtsk-algebra-linearalgebra-trace-variant27b5170c8474528a839f99cf1--ab69e6304160e333972175bf.md) | 119 | `result-track:ab69e6304160e333972175bf793332b991767ada9f8587a112f1a0a370c298ed` |
| 15 | `lemma` | [trace_blockDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-blockdiagonal--f558bc054bda46580ad7e32a.md) | 124 | `result-track:f558bc054bda46580ad7e32a63402593b1f0da7c60df9b0a286edfc77a505e68` |
| 16 | `lemma` | [trace_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-blockdiagonal--ac07aeb9629d6ae5bf04f5ff.md) | 128 | `result-track:ac07aeb9629d6ae5bf04f5ff617956afea210ef73b7a91cae6943aa05976bfee` |
| 17 | `theorem` | [trace_sub](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-sub--9f731130b5d2307203be135a.md) | 140 | `result-track:9f731130b5d2307203be135aed378c875d9863dc4625a10dc9e63faeb667042e` |
| 18 | `theorem` | [trace_neg](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-neg--047fee0df47d28788912959f.md) | 144 | `result-track:047fee0df47d28788912959f59cf99d7ba375803d1c33ab402bf404e1ac411cc` |
| 19 | `theorem` | [trace_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-one--5d5fa0dadcd01950e858b07e.md) | 154 | `result-track:5d5fa0dadcd01950e858b07e87fada8a0465c50fdd81a1bbe7e78e9e0f2d1888` |
| 20 | `theorem` | [trace_transpose_mul](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-transpose-mul--0c612e754fe255d66dd0685d.md) | 162 | `result-track:0c612e754fe255d66dd0685d55dc16775055f859f7e32866cc7f06f3c756cf7c` |
| 21 | `theorem` | [trace_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-mul-comm--0f55e3e7481beae8b88de833.md) | 166 | `result-track:0f55e3e7481beae8b88de833c341ac84e409b7739b4663c04bcaaf543faafd01` |
| 22 | `theorem` | [trace_mul_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-mul-cycle--028657fb7c1d1bc44f02326d.md) | 169 | `result-track:028657fb7c1d1bc44f02326dc8d8fe5020a9231fa4cb9f617fb2a2bb20343e39` |
| 23 | `theorem` | [trace_mul_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-mul-cycle--619eff262ca170284296f0ee.md) | 173 | `result-track:619eff262ca170284296f0eede384a89bc83bfd02881fab9b252373d4a26b9e9` |
| 24 | `theorem` | [trace_replicateCol_mul_replicateRow](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-replicatecol-mul-replicaterow--bd9d22552457e242d8733a74.md) | 178 | `result-track:bd9d22552457e242d8733a74d090b58dbb870ef931edc2f41a6194420ad6e27f` |
| 25 | `theorem` | [trace_vecMulVec](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-vecmulvec--8e1bedee0c32a2bd21d6203b.md) | 184 | `result-track:8e1bedee0c32a2bd21d6203be528e81155ee8962588f03a42fe3df85fb54baf5` |
| 26 | `lemma` | [trace_submatrix_succ](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-submatrix-succ--5abc3fb872a7dc6b07c2a3aa.md) | 190 | `result-track:5abc3fb872a7dc6b07c2a3aa3c2d607dafe1e284d46916d48e8dfdf8ed908ee3` |
| 27 | `theorem` | [trace_units_conj](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-units-conj--ad0ab4b194aaed36abdc4719.md) | 202 | `result-track:ad0ab4b194aaed36abdc47197fda155121bb3840a07e26d5b9ee98787e961605` |
| 28 | `theorem` | [trace_units_conj'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-units-conj--93f47e0f3f1ca9cb17749b3e.md) | 208 | `result-track:93f47e0f3f1ca9cb17749b3e88c7da616e0db077b8a955e5d5641d2e1d35de44` |
| 29 | `theorem` | [trace_fin_zero](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-fin-zero--2b9705882227f4c67ca0c16e.md) | 222 | `result-track:2b9705882227f4c67ca0c16e6f54a62d0843fb583637428491d874796d4f2c53` |
| 30 | `theorem` | [trace_fin_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-fin-one--2a2c9adc43175e2c14dd9160.md) | 225 | `result-track:2a2c9adc43175e2c14dd916062948b34385944e0e98dddd3b50ab24ae692e8ca` |
| 31 | `theorem` | [trace_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-fin-two--c4e28bf319737e6eb371f86e.md) | 228 | `result-track:c4e28bf319737e6eb371f86ed22749d84dd4c11ab745890c56dad8cc5feaaf52` |
| 32 | `theorem` | [trace_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-fin-three--2869c99943455788df1a0b0c.md) | 231 | `result-track:2869c99943455788df1a0b0cbeca5528ea6e392dd9a623d003fdec2ec847fe60` |
| 33 | `theorem` | [trace_fin_one_of](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-fin-one-of--0023e3e572829418e4025e4c.md) | 236 | `result-track:0023e3e572829418e4025e4c526b3975129e6bb09c48d690be9fb2eb3aaf76a5` |
| 34 | `theorem` | [trace_fin_two_of](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-fin-two-of--a3e151dfc97d30c79cf36812.md) | 240 | `result-track:a3e151dfc97d30c79cf36812d9a05a911e0def2f956ec451836d4874522dd900` |
| 35 | `theorem` | [trace_fin_three_of](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-fin-three-of--0b6314fb8afc98dfd8196c95.md) | 244 | `result-track:0b6314fb8afc98dfd8196c95d0c85ffcff2882db64878efb1cc1e60f9f53d136` |
| 36 | `theorem` | [trace_single_eq_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-single-eq-of-ne--e1cb39a69b39290e9a4bc8d4.md) | 256 | `result-track:e1cb39a69b39290e9a4bc8d46b1947b8859f1fce55d8d76d8ef55c47d4c73e85` |
| 37 | `theorem` | [trace_single_eq_same](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-single-eq-same--349ee48d071558d200b673b3.md) | 260 | `result-track:349ee48d071558d200b673b3415280474fc913d75f73913a93a70b8469da7f4a` |
| 38 | `theorem` | [trace_single_mul](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-single-mul--f4c73bf512001d1b42e10b5d.md) | 263 | `result-track:f4c73bf512001d1b42e10b5defa95af812c1a95632bcc1679f7332347d3a49ea` |
| 39 | `theorem` | [trace_mul_single](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-mul-single--f583734aa106dc805f814f3b.md) | 268 | `result-track:f583734aa106dc805f814f3bc9ad5d86f371737a983396d71753c63d9cdad8ca` |
| 40 | `theorem` | [trace_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/trace-surjective--7e62cae8032a6dcd9ba5bd10.md) | 275 | `result-track:7e62cae8032a6dcd9ba5bd100ffbb48c2b47e9e4a227888dcb54a7400181720b` |
| 41 | `theorem` | [ext_iff_trace_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/ext-iff-trace-mul-left--78855b04d4c5b82b646a3a01.md) | 282 | `result-track:78855b04d4c5b82b646a3a01b727246a91e1fcf48a29a7178e55ff5ffca9ed40` |
| 42 | `theorem` | [ext_iff_trace_mul_right](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant9988c9509bad04b8e45d257e5981fa11b4a160494df82d46aee6c8e3f61aee60.lean/declarations/ext-iff-trace-mul-right--c1aecd9585403e0317bb1765.md) | 290 | `result-track:c1aecd9585403e0317bb1765b994bfb7292683bdfe45e07633ec0cd5408f60dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
