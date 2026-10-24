# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "549089e046ebf32d407d0b191ca19013e593e924",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `549089e046ebf32d407d0b191ca19013e593e924`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.Modify` — import line 11; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [splitOn_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/spliton-nil--17ca4c11583d081d00bbc737.md) | 21 | `result-track:17ca4c11583d081d00bbc737f4badc7f9664d4066593987912960d9a9cfb09fe` |
| 2 | `theorem` | [splitOnP_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-nil--08c4bab9789b06d30e938a04.md) | 25 | `result-track:08c4bab9789b06d30e938a047e9678be4ae32a375218199f58699700df02cbe0` |
| 3 | `theorem` | [splitOnPPrepend_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonpprepend-ne-nil--0f7cea16db619c7b77702d92.md) | 29 | `result-track:0f7cea16db619c7b77702d920c977d2ae91df056588a4aeae68379c3c3a718b9` |
| 4 | `theorem` | [splitOnP.go_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-go-ne-nil--1b5b9d542fb54e1a28f0091f.md) | 33 | `result-track:1b5b9d542fb54e1a28f0091fd61a335180b62fa65d2e84794d3e70640893def7` |
| 5 | `theorem` | [splitOnPPrepend_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonpprepend-nil--f9da40f3780b8632d20f0db7.md) | 36 | `result-track:f9da40f3780b8632d20f0db7b0d46aa28881c60ad207486a4928dc6da25c6a23` |
| 6 | `theorem` | [splitOnPPrepend_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonpprepend-nil-right--9b163a0986b33b3dd31b23bd.md) | 37 | `result-track:9b163a0986b33b3dd31b23bd8001310e547701a511f5f2ba477b46e251746e0a` |
| 7 | `theorem` | [splitOnP_eq_splitOnPPrepend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-eq-splitonpprepend--ed1491018724bf3d13c6bc7a.md) | 38 | `result-track:ed1491018724bf3d13c6bc7a49161846bd385b40c697b3f09390fa9197ef2041` |
| 8 | `theorem` | [splitOnPPrepend_cons_eq_if](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonpprepend-cons-eq-if--a599c17ec58048905b2a6d9f.md) | 40 | `result-track:a599c17ec58048905b2a6d9f49df12cf76d346d8a618785babac63fb397f57fd` |
| 9 | `theorem` | [splitOnPPrepend_cons_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonpprepend-cons-pos--75b5a798e1b054b073ed54c0.md) | 45 | `result-track:75b5a798e1b054b073ed54c09855b8cbca13337ddc5b6160a2158fd7a196ebef` |
| 10 | `theorem` | [splitOnPPrepend_cons_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonpprepend-cons-neg--1cf144aa409818577d6afee0.md) | 49 | `result-track:1cf144aa409818577d6afee04f3a2cbd23b86777d230f0ad366e594c1d50365e` |
| 11 | `theorem` | [splitOnP_cons_eq_if_splitOnPPrepend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-cons-eq-if-splitonpprepend--09002d8de93b36376939c3f1.md) | 53 | `result-track:09002d8de93b36376939c3f1f4c66a38427aad5967f1d8089d392818daff2d35` |
| 12 | `theorem` | [splitOnPPrepend_eq_modifyHead](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonpprepend-eq-modifyhead--1f8ce22010d52334c2e8090f.md) | 57 | `result-track:1f8ce22010d52334c2e8090f84ca4f562dfff22004fe5093f5cd1a8d1f36d500` |
| 13 | `theorem` | [splitOnP.go_acc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-go-acc--3ed5f8aa6cffca2e2221b720.md) | 66 | `result-track:3ed5f8aa6cffca2e2221b7204226b980bca1e9731c3356c184158a044ec35c69` |
| 14 | `theorem` | [splitOnP_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-ne-nil--feb415c102a754a29ac58845.md) | 71 | `result-track:feb415c102a754a29ac5884528e395d55ddf74f056bb76715c01d347b560c273` |
| 15 | `theorem` | [splitOnP_cons_eq_if_modifyHead](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-cons-eq-if-modifyhead--2264742bfbc16f41ea583f44.md) | 74 | `result-track:2264742bfbc16f41ea583f447c6be48aa13f1fc46068c9f25eeb1088631cc38e` |
| 16 | `theorem` | [splitOnP_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-cons--2f0bce48fc7cb45c2459ec48.md) | 80 | `result-track:2f0bce48fc7cb45c2459ec48ee3cea128cf3adeaf73aa0e2b5f3663a130bccb4` |
| 17 | `theorem` | [splitOnP_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-spec--ae98402bc4f9c3322086cfb5.md) | 87 | `result-track:ae98402bc4f9c3322086cfb5bba74896e192f261fa1bdf08df31a5d55021162e` |
| 18 | `theorem` | [splitOnP_eq_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-eq-singleton--529f742f180cd1da4fa28c33.md) | 101 | `result-track:529f742f180cd1da4fa28c333308dc0058e27e69ae7535aa0e700142b1042ad9` |
| 19 | `theorem` | [splitOnP_eq_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-eq-single--93ed845531fbcd9c1f89fc8f.md) | 109 | `result-track:93ed845531fbcd9c1f89fc8f06cbfd80917396c1ac01c379b14976057c709512` |
| 20 | `theorem` | [splitOnP_append_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-append-cons--ac0d676ac7598ef0853f60e6.md) | 114 | `result-track:ac0d676ac7598ef0853f60e672754c0f90d35447b5ce84e70ebb7273ef7a0599` |
| 21 | `theorem` | [splitOnP_append_cons_of_forall_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-append-cons-of-forall-mem--b2a20abdbfd6a5dde0f80710.md) | 124 | `result-track:b2a20abdbfd6a5dde0f8071047916a09961801513a906070a7f4d57be1734fb0` |
| 22 | `theorem` | [splitOnP_first](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/splitonp-first--7c6cf1d5a5d85721054e7c42.md) | 129 | `result-track:7c6cf1d5a5d85721054e7c42f8bb9360dfc6e88b5b00d694126c206f2ad75258` |
| 23 | `theorem` | [splitOn_eq_splitOnP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/spliton-eq-splitonp--d59d6759cc88850bf6cfa3a4.md) | 133 | `result-track:d59d6759cc88850bf6cfa3a41f290fb09f3dd878dbbefd0d66b44818ef2e89c0` |
| 24 | `theorem` | [splitOn_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/spliton-ne-nil--0eaf26c9327ac630947e1557.md) | 137 | `result-track:0eaf26c9327ac630947e155785a9822257dedefb7bd2d7185a2d6851a4667f29` |
| 25 | `theorem` | [splitOn_cons_eq_if_modifyHead](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/spliton-cons-eq-if-modifyhead--34184a03e4133458ed05f218.md) | 140 | `result-track:34184a03e4133458ed05f21877a99300cf55e0d7c1838303338a79ac708cd8e1` |
| 26 | `theorem` | [splitOn_eq_singleton_of_beq_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/spliton-eq-singleton-of-beq-eq-false--cc10d1f92f91ac3cc8c89fb5.md) | 146 | `result-track:cc10d1f92f91ac3cc8c89fb5f5fb69b4838aa19283d3c9991885e09abdfe90ac` |
| 27 | `theorem` | [splitOn_eq_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/spliton-eq-singleton--cadf606eb9dfcc99dbf5960e.md) | 150 | `result-track:cadf606eb9dfcc99dbf5960e547e730dd1e1ef843ed527d1b45bd157875aa648` |
| 28 | `theorem` | [splitOn_append_cons_of_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/spliton-append-cons-of-beq--157b5cfa85c23bd9f666c75b.md) | 157 | `result-track:157b5cfa85c23bd9f666c75b40c5d6d6a7e25f0710820ba264c832eb07f4f596` |
| 29 | `theorem` | [splitOn_append_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/spliton-append-cons-self--ec99f27e7dc83f2d5a1f7932.md) | 163 | `result-track:ec99f27e7dc83f2d5a1f7932dabd03c9cee0b7e968d1239302b38d18fde9114b` |
| 30 | `theorem` | [splitOn_append_cons_of_forall_mem_beq_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/spliton-append-cons-of-forall-mem-beq-eq-false--b2377388c3e149f2c04dba99.md) | 169 | `result-track:b2377388c3e149f2c04dba990876a4125ef1991509a9c31dce0c0c9f44dc0164` |
| 31 | `theorem` | [splitOn_append_cons_self_of_not_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/spliton-append-cons-self-of-not-mem--7258021058414fd2e9973fd3.md) | 176 | `result-track:7258021058414fd2e9973fd36fd53044c3ea48446bb443a38bc9c76ade32e437` |
| 32 | `theorem` | [intercalate_splitOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/intercalate-spliton--7dc0a5feb7cb3cfbd588fe1b.md) | 183 | `result-track:7dc0a5feb7cb3cfbd588fe1b8acd2d519ef169b2e62dc183870b27986b88165a` |
| 33 | `theorem` | [splitOn_intercalate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantba947f8c14eff8e93c4fc54c16b505d06ee68b561e49b507338f6a3de37b1a03.lean/declarations/spliton-intercalate--fe791bdbda880a8a45d7d15a.md) | 196 | `result-track:fe791bdbda880a8a45d7d15aec0cd3de02419290a394396f17c1a27618ef47d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
