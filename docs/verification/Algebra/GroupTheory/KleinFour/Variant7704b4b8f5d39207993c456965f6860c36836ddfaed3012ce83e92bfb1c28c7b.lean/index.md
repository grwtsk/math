# Verification target: GRWTSK.Algebra.GroupTheory.KleinFour.Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7364c02d6a12bedd382ecd64b4ec98586263c328",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7364c02d6a12bedd382ecd64b4ec98586263c328`.

Source path: `GRWTSK/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean.json)

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
| 1 | `def` | [kleinFour](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/kleinfour--865cd62d7d8622a7cb79369d.md) | 66 | `declaration-track:865cd62d7d8622a7cb79369d7a4d8647ca2a70e562ba9abfa224ace22b4d2d5b` |
| 2 | `theorem` | [mem_kleinFour_of_order_two_pow](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/mem-kleinfour-of-order-two-pow--7388d3ec37f0f4fb18e92ea2.md) | 69 | `result-track:7388d3ec37f0f4fb18e92ea2ec45abdd79d269c0c1e51ee1470f1a2a5cf264a9` |
| 3 | `theorem` | [card_of_card_eq_four](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/card-of-card-eq-four--2d1b3d9b607884c1940adcdd.md) | 95 | `result-track:2d1b3d9b607884c1940adcddbcfdea8d10dda0c91857e5e18e3a7c30b74bb127` |
| 4 | `theorem` | [card_two_sylow_of_card_eq_four](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/card-two-sylow-of-card-eq-four--ab3508dc1f75c4fa2fe1718f.md) | 103 | `result-track:ab3508dc1f75c4fa2fe1718f60a8aca171cf2b037d67d5065751d6ea94efee99` |
| 5 | `theorem` | [coe_two_sylow_of_card_eq_four](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/coe-two-sylow-of-card-eq-four--3b6064bc49f28e062ca2a51a.md) | 112 | `result-track:3b6064bc49f28e062ca2a51a66dba5e9f59b5d3f03d26b8b616953d1f41008c7` |
| 6 | `theorem` | [two_sylow_eq_kleinFour_of_card_eq_four](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/two-sylow-eq-kleinfour-of-card-eq-four--19bca57a83f9718e838f1877.md) | 131 | `result-track:19bca57a83f9718e838f1877fb124c096a9ec5ce2073800b5c510ecab43a1af2` |
| 7 | `theorem` | [subsingleton_two_sylow](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/subsingleton-two-sylow--b2b8592979e1ce6f8321fdb4.md) | 138 | `result-track:b2b8592979e1ce6f8321fdb4a6292f2bbe9b820d5447274dabb3224f7c2874ce` |
| 8 | `theorem` | [characteristic_kleinFour](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/characteristic-kleinfour--5a60a5c60408afa7c30f1326.md) | 144 | `result-track:5a60a5c60408afa7c30f1326441dd5c457c313202a24b6df1f94fd026f1d8cef` |
| 9 | `theorem` | [normal_kleinFour](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/normal-kleinfour--4b17bd3da2491d057cf69e3f.md) | 151 | `result-track:4b17bd3da2491d057cf69e3f776eb867155ba2aa18543d260c6f369046de5d49` |
| 10 | `theorem` | [kleinFour_card_of_card_eq_four](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/kleinfour-card-of-card-eq-four--9c12c5cf1ecb1f3c3cec2a14.md) | 156 | `result-track:9c12c5cf1ecb1f3c3cec2a140b96de166e5e418737bcf3b1c56ffe6eac674d0b` |
| 11 | `theorem` | [coe_kleinFour_of_card_eq_four](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/coe-kleinfour-of-card-eq-four--55182ea2c03455cbac4db839.md) | 161 | `result-track:55182ea2c03455cbac4db8394fe634dd6296b858947618cb2f5f5791d22f5d5b` |
| 12 | `theorem` | [exponent_kleinFour_of_card_eq_four](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/exponent-kleinfour-of-card-eq-four--f80acb03a632ab16e1d97fef.md) | 168 | `result-track:f80acb03a632ab16e1d97fefa505c81ff511f3203ca2a73589f8c3d555dca778` |
| 13 | `theorem` | [kleinFour_isKleinFour](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/kleinfour-iskleinfour--4f690e0e02806fca9083b9ed.md) | 187 | `result-track:4f690e0e02806fca9083b9edb22e230d5b9076a0b7febb7f7a92479f6690612c` |
| 14 | `theorem` | [kleinFour_eq_commutator](../../../../../mathematics/Algebra/GroupTheory/KleinFour/Variant7704b4b8f5d39207993c456965f6860c36836ddfaed3012ce83e92bfb1c28c7b.lean/declarations/kleinfour-eq-commutator--aa81fc8ea4e9d4275ac7f6ed.md) | 192 | `result-track:aa81fc8ea4e9d4275ac7f6eda60bdf80afc0f0719635368e330466fac4cccfa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
