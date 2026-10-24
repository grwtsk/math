# Verification target: GRWTSK.Algebra.UniversalAlgebra.GoldenRatio.Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41db3ba203218dcfda3ffe99d8d3b170e9bc7a9c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41db3ba203218dcfda3ffe99d8d3b170e9bc7a9c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean.json)

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
| 1 | `abbrev` | [goldenRatio](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenratio--6d72e5b0347ab13b22e7eb18.md) | 37 | `declaration-track:6d72e5b0347ab13b22e7eb18800021c002e37c0c41fe547cf8a76f799b63c3bc` |
| 2 | `abbrev` | [goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenconj--0fb435707c7d70a5ab9d5159.md) | 40 | `declaration-track:0fb435707c7d70a5ab9d51593f9a46d17b4bb305b05ff427c40aa40f08e7d16c` |
| 3 | `theorem` | [inv_goldenRatio](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/inv-goldenratio--376382cab5101dfe1b55a149.md) | 48 | `result-track:376382cab5101dfe1b55a149c23d6249089943fed1379d5177615c962910d85d` |
| 4 | `theorem` | [inv_goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/inv-goldenconj--4776fd7d39c7b1c4defae51a.md) | 52 | `result-track:4776fd7d39c7b1c4defae51adfa8494ab49e0c8b1852896ee14f19517920cfa4` |
| 5 | `theorem` | [goldenRatio_mul_goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenratio-mul-goldenconj--cd2a0a613e8b97d6b3c7719d.md) | 57 | `result-track:cd2a0a613e8b97d6b3c7719deabe866a2a1eb297b2b1381e0f5cd04d155d2787` |
| 6 | `theorem` | [goldenConj_mul_goldenRatio](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenconj-mul-goldenratio--46eeaf9d2cd620024984e219.md) | 61 | `result-track:46eeaf9d2cd620024984e219cdc55b722f454397e9ff6e2e8c7daa50c1fd8df9` |
| 7 | `theorem` | [goldenRatio_add_goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenratio-add-goldenconj--d11d88b1692b51a362887c51.md) | 66 | `result-track:d11d88b1692b51a362887c512b0a296a11fe093d8cc7850e3222e2ed3a20e5aa` |
| 8 | `theorem` | [one_sub_goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/one-sub-goldenconj--8dc8a30f4f5cbf9e453e433e.md) | 70 | `result-track:8dc8a30f4f5cbf9e453e433eb0e84d356c8e3940cee8d813bb781fa9e9d89753` |
| 9 | `theorem` | [one_sub_goldenRatio](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/one-sub-goldenratio--f2a1a8eab6055e89a2538ef3.md) | 73 | `result-track:f2a1a8eab6055e89a2538ef38a3dcdc5b48ee443d97fa2f4a23a15a6c83879d8` |
| 10 | `theorem` | [goldenRatio_sub_goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenratio-sub-goldenconj--4714d775a255c11745a7406b.md) | 77 | `result-track:4714d775a255c11745a7406b7d421ea9c7f920a79eb9609faf2880f79bb748f6` |
| 11 | `theorem` | [goldenRatio_pow_sub_goldenRatio_pow](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenratio-pow-sub-goldenratio-pow--30eecd991879554b25200182.md) | 79 | `result-track:30eecd991879554b2520018279537c500500a8274a49725eca62fe2b09c6b3e4` |
| 12 | `theorem` | [goldenRatio_sq](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenratio-sq--1dbe1f805d1217f39bb5adb2.md) | 83 | `result-track:1dbe1f805d1217f39bb5adb2debeab77ae09b9b35e882c554f4256be720d0c0a` |
| 13 | `theorem` | [goldenConj_sq](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenconj-sq--8d2f94257e3eeb5431c3f323.md) | 87 | `result-track:8d2f94257e3eeb5431c3f323174433db7edca1799f52c1aa6438abc78b9474af` |
| 14 | `theorem` | [goldenRatio_pos](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenratio-pos--3bc51a7ca06ec8ea187dcc7f.md) | 90 | `result-track:3bc51a7ca06ec8ea187dcc7f432ebeb024ab7c06241dd2d1e253227d48107e90` |
| 15 | `theorem` | [goldenRatio_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenratio-ne-zero--2616db0bec523a9aec2eaa98.md) | 93 | `result-track:2616db0bec523a9aec2eaa98c162db375bc114a73376f0bc69a58f1022035521` |
| 16 | `theorem` | [one_lt_goldenRatio](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/one-lt-goldenratio--9df8876af5d11902388a0771.md) | 96 | `result-track:9df8876af5d11902388a07719fbbcc893bce8a56b5f4cb407dab709b41484e02` |
| 17 | `theorem` | [goldenRatio_lt_two](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenratio-lt-two--4f3821c499e6866aa67a45c3.md) | 100 | `result-track:4f3821c499e6866aa67a45c361308c350c52b04e97b100a98ecceb9c7be75b7c` |
| 18 | `theorem` | [goldenConj_neg](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenconj-neg--e97421e6d5d02a37e72c585a.md) | 104 | `result-track:e97421e6d5d02a37e72c585a1a397cb097d91478de5e590852ecb4c3069adfc6` |
| 19 | `theorem` | [goldenConj_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenconj-ne-zero--411589e9e43317c630712e89.md) | 107 | `result-track:411589e9e43317c630712e8914e70552f0529cbbfe229cf7371b1b5f22d0affe` |
| 20 | `theorem` | [neg_one_lt_goldenConj](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/neg-one-lt-goldenconj--cba2470fe11b6aa730699502.md) | 110 | `result-track:cba2470fe11b6aa730699502c3a04c31961ee75da5d08a3468db6343da815462` |
| 21 | `theorem` | [goldenRatio_irrational](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenratio-irrational--4201f47cf85b3db63d709b75.md) | 120 | `result-track:4201f47cf85b3db63d709b75952f875f9ca6970888e9403e11d9e6e5e1000b9a` |
| 22 | `theorem` | [goldenConj_irrational](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenconj-irrational--8a132397c4d1f44226aa2f30.md) | 128 | `result-track:8a132397c4d1f44226aa2f3025bcf3c1d97fe0b4c74a8e1941e6d59f260556e6` |
| 23 | `def` | [fibRec](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/fibrec--c5d9eff0549123e85d5b0481.md) | 144 | `declaration-track:c5d9eff0549123e85d5b048156eb2c6fc3981cbe18b23f3c8ff8749b540be056` |
| 24 | `theorem` | [fibRec_charPoly_eq](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/fibrec-charpoly-eq--12c2477a17a7bb15e6fa4b92.md) | 153 | `result-track:12c2477a17a7bb15e6fa4b920cefe9beac1430b85cdcc14000fb75c3fedbb783` |
| 25 | `theorem` | [fib_isSol_fibRec](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/fib-issol-fibrec--4bfa0c23e08ac7227814e00f.md) | 161 | `result-track:4bfa0c23e08ac7227814e00fae4e0a29ca740bfbb95aedbe133909857721ef71` |
| 26 | `theorem` | [geom_goldenRatio_isSol_fibRec](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/geom-goldenratio-issol-fibrec--840660fbe7220b1e3fa7622c.md) | 169 | `result-track:840660fbe7220b1e3fa7622cffc212c31ce3f9d094d2ca6b00f7292d5c8b5aba` |
| 27 | `theorem` | [geom_goldenConj_isSol_fibRec](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/geom-goldenconj-issol-fibrec--d42d2636bdcb3cbd96433416.md) | 174 | `result-track:d42d2636bdcb3cbd9643341646e6850f2ab07b4cae7044b98edba4bdefca3d7d` |
| 28 | `theorem` | [coe_fib_eq'](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/coe-fib-eq--466aa217b395fac044b6bf78.md) | 181 | `result-track:466aa217b395fac044b6bf78f6ce7cac4cccfc313e1acd23b8472466a13bd1f9` |
| 29 | `theorem` | [coe_fib_eq](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/coe-fib-eq--f5d7cb6e463160d5aa650de7.md) | 198 | `result-track:f5d7cb6e463160d5aa650de75b9e52d1c07194ebc57160e6734b4d2c2ed19c8a` |
| 30 | `theorem` | [coe_intFib_eq](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/coe-intfib-eq--21ee30807086e66f7525f207.md) | 202 | `result-track:21ee30807086e66f7525f2079236c4a6c0ec5201612cfe8fc933649c00600456` |
| 31 | `theorem` | [fib_succ_sub_goldenRatio_mul_fib](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/fib-succ-sub-goldenratio-mul-fib--794c61f400117e1e8cab7652.md) | 211 | `result-track:794c61f400117e1e8cab7652a709277153d8af632876d3d6762c8b6662af316b` |
| 32 | `lemma` | [goldenConj_mul_fib_succ_add_fib](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenconj-mul-fib-succ-add-fib--3d6721320f21091a5c7c1177.md) | 220 | `result-track:3d6721320f21091a5c7c117715e3233c0d48212dc3a6b739f413738e5a4f49ae` |
| 33 | `lemma` | [goldenRatio_mul_fib_succ_add_fib](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/goldenratio-mul-fib-succ-add-fib--7c567419298dc57a4a29bba5.md) | 224 | `result-track:7c567419298dc57a4a29bba504feef5dec47b4368a20d7b88c7144812b2e6ddc` |
| 34 | `theorem` | [fib_succ_sub_goldenConj_mul_fib](../../../../../mathematics/Algebra/UniversalAlgebra/GoldenRatio/Variant89ee6d1ea9f6d6a5c614b77a9fc4c598aff19d5c6d36d293fe9ee5689b02313b.lean/declarations/fib-succ-sub-goldenconj-mul-fib--144f233cc1b4e09c9c19a896.md) | 237 | `result-track:144f233cc1b4e09c9c19a89618633ad8223d705777645cbfe0d3bc206217558f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
