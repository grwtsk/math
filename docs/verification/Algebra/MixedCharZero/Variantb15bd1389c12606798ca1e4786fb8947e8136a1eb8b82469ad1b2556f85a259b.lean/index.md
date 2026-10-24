# Verification target: GRWTSK.Algebra.MixedCharZero.Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b7e50c2b392c5230908212a84908ede818c323e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/index.md) · [Full source](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b7e50c2b392c5230908212a84908ede818c323e`.

Source path: `GRWTSK/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.LocalRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/mixedcharzero--eae81c4c76a709834fd00244.md) | 80 | `declaration-track:eae81c4c76a709834fd00244720bbf074ef1f4b0c8f896537544a6ca836acee4` |
| 2 | `theorem` | [reduce_to_p_prime](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/reduce-to-p-prime--1cdc935e1b454219ae80b113.md) | 90 | `result-track:1cdc935e1b454219ae80b11377293cffa673f0d78936866252ee614945f6b896` |
| 3 | `theorem` | [reduce_to_maximal_ideal](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/reduce-to-maximal-ideal--66c92d4a757df45560e331be.md) | 116 | `result-track:66c92d4a757df45560e331befe2bbd75d8a39afcc46aaf23c3a7d980d0e2b56c` |
| 4 | `theorem` | [of_algebraRat](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/of-algebrarat--37ae1e9341f14186a847aa92.md) | 161 | `result-track:37ae1e9341f14186a847aa92d9cb7f8d6356be7c595f2dce9faae13de5e4b1a2` |
| 5 | `theorem` | [PNat.isUnit_natCast](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/pnat-isunit-natcast--35b10d8561520e268a898e5c.md) | 176 | `result-track:35b10d8561520e268a898e5c22921754b675052376861a5464d58f959ec5b4c8` |
| 6 | `def` | [pnatCast](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/pnatcast--57333f1a8574449a6b6e9c0c.md) | 190 | `declaration-track:57333f1a8574449a6b6e9c0cab02a5bc71cecaa14471c53033223df40f32eafd` |
| 7 | `instance` | [coePNatUnits](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/coepnatunits--a34b6e6bd167afe652406b01.md) | 194 | `declaration-track:a34b6e6bd167afe652406b018b73b189824dd8fdc864d0838808c3268ec4ae61` |
| 8 | `theorem` | [pnatCast_one](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/pnatcast-one--2332a45028974b4c5dc82b75.md) | 200 | `result-track:2332a45028974b4c5dc82b758226b1a48e75e2fc427f2075651233e522c85269` |
| 9 | `theorem` | [pnatCast_eq_natCast](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/pnatcast-eq-natcast--9ec5623d5fc922892eeeaa37.md) | 209 | `result-track:9ec5623d5fc922892eeeaa37d5d30517f29a7a9fabd93d99cc874e3aaa5f2d79` |
| 10 | `def` | [algebraRat](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/algebrarat--43a1da0b3f575fdaeeebf11e.md) | 215 | `declaration-track:43a1da0b3f575fdaeeebf11e862ca991d4974cc0d59bddd4c0d815b03b28fe96` |
| 11 | `theorem` | [of_not_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/of-not-mixedcharzero--9c4a15df56d13f7bd372ac7c.md) | 242 | `result-track:9c4a15df56d13f7bd372ac7c6b69848fd44486ba10ae94d73cafbfd6121f6eac` |
| 12 | `theorem` | [to_not_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/to-not-mixedcharzero--f4132921d66dfb83c0041a9d.md) | 255 | `result-track:f4132921d66dfb83c0041a9dfe304b7465184b8ca2f5e08ec6a456684de12de5` |
| 13 | `theorem` | [iff_not_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/iff-not-mixedcharzero--05f2547da8809d3cfff3c979.md) | 267 | `result-track:05f2547da8809d3cfff3c979adcd4a96700c0c53f234cf29e4652a98d7d1951e` |
| 14 | `theorem` | [nonempty_algebraRat_iff](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/nonempty-algebrarat-iff--821421f86f37d048b6c9e272.md) | 272 | `result-track:821421f86f37d048b6c9e27296574718d1ad2039b5abc39e159de28310e87abe` |
| 15 | `theorem` | [isEmpty_algebraRat_iff_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/isempty-algebrarat-iff-mixedcharzero--0654c50ef5ec256f4cbc2bf1.md) | 287 | `result-track:0654c50ef5ec256f4cbc2bf19ec8962c8e59950be2f9f8685b189bdabe2f2b3f` |
| 16 | `theorem` | [split_equalCharZero_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/split-equalcharzero-mixedcharzero--cc050ff8174e4f03540ec647.md) | 309 | `result-track:cc050ff8174e4f03540ec6479272c06e8eb4ab465c6357c4a6a610b2f237b635` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/example--14001b7ecb3db213a91f849c.md) | 319 | `declaration-track:14001b7ecb3db213a91f849cae7ed19c620ba70b71f33f4c84332fd55f5a02fd` |
| 18 | `theorem` | [split_by_characteristic](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/split-by-characteristic--b95425c39eb4f69b4c53a7f7.md) | 328 | `result-track:b95425c39eb4f69b4c53a7f7184d6f86850b725892205c69941ece281754acbc` |
| 19 | `theorem` | [split_by_characteristic_domain](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/split-by-characteristic-domain--38ee27373b91a9bfbdcde51d.md) | 344 | `result-track:38ee27373b91a9bfbdcde51d2be606b3bd152b0b19d971709e26be42a06aef4e` |
| 20 | `theorem` | [split_by_characteristic_localRing](../../../../mathematics/Algebra/MixedCharZero/Variantb15bd1389c12606798ca1e4786fb8947e8136a1eb8b82469ad1b2556f85a259b.lean/declarations/split-by-characteristic-localring--00f1d2ebf9fc766a5b202f7b.md) | 357 | `result-track:00f1d2ebf9fc766a5b202f7b975788933180990ff6944fd377eeac298bde71d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
