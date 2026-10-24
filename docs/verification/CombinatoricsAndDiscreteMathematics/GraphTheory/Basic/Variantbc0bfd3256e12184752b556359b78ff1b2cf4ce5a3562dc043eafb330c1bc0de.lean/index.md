# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Basic.Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f09f2ee7bc9d88cb3f5f9dd4da9d3ca08c007544",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f09f2ee7bc9d88cb3f5f9dd4da9d3ca08c007544`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Operations` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Copy` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsExtremal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/isextremal--77fdd51358bc730096441651.md) | 38 | `declaration-track:77fdd51358bc730096441651c60ce4d8e2548106bb299b2f215b4926a6a8099a` |
| 2 | `lemma` | [IsExtremal.prop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/isextremal-prop--84236f91c3f0d78d319281be.md) | 41 | `result-track:84236f91c3f0d78d319281bec0e1fdbae7810da541250451f07c13236546dfeb` |
| 3 | `theorem` | [exists_isExtremal_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/exists-isextremal-iff-exists--594c2246f68505eff25ddd56.md) | 45 | `result-track:594c2246f68505eff25ddd56c028b88a7eb4be792baa6efe66b621f0438ff110` |
| 4 | `theorem` | [exists_isExtremal_free](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/exists-isextremal-free--c0c9b44fa12739f5088fa251.md) | 55 | `result-track:c0c9b44fa12739f5088fa2510f2ccd58f2165b31fdbe68e49192eec649e639fa` |
| 5 | `def` | [extremalNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/extremalnumber--60397122fe69d0cae1e5426a.md) | 68 | `declaration-track:60397122fe69d0cae1e5426afecff2eb20478cf69862e36cf2bda7cebfa0bffc` |
| 6 | `theorem` | [extremalNumber_of_fintypeCard_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/extremalnumber-of-fintypecard-eq--1a6e6b1f97909e603bd2c1ed.md) | 74 | `result-track:1a6e6b1f97909e603bd2c1ed0c90120b67c310f465eb4f05917ec4670fe913a2` |
| 7 | `theorem` | [card_edgeFinset_le_extremalNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/card-edgefinset-le-extremalnumber--4e9ad37028d17c1d7a373a08.md) | 94 | `result-track:4e9ad37028d17c1d7a373a084094cfac2724387a0fa5e74a10c43ab9c9990083` |
| 8 | `theorem` | [IsContained.of_extremalNumber_lt_card_edgeFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/iscontained-of-extremalnumber-lt-card-edgefinset--b95d9ffefa5af5ee02b5986e.md) | 100 | `result-track:b95d9ffefa5af5ee02b5986e704c08b84a29b61ab61b5557792e1181dd7a9c6f` |
| 9 | `theorem` | [extremalNumber_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/extremalnumber-le-iff--b07b0226eaa3d7f552b2babf.md) | 107 | `result-track:b07b0226eaa3d7f552b2babf70ddc94282d9c3815d5123d13e40dde15a9f163b` |
| 10 | `theorem` | [lt_extremalNumber_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/lt-extremalnumber-iff--6b522653429e82a4416df708.md) | 115 | `result-track:6b522653429e82a4416df708b1b3fa400861eff801d8c22ef9dff35ea52c0012` |
| 11 | `theorem` | [extremalNumber_le_iff_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/extremalnumber-le-iff-of-nonneg--87bb92dcf9fce0c3775db26e.md) | 124 | `result-track:87bb92dcf9fce0c3775db26e4812acb4de069c8c3eb114cf23ba43a324572071` |
| 12 | `theorem` | [lt_extremalNumber_iff_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/lt-extremalnumber-iff-of-nonneg--841e80cb32dbc66d7d66c3fb.md) | 131 | `result-track:841e80cb32dbc66d7d66c3fbe26d458dce1c392590372904ecbab52c81cc277d` |
| 13 | `theorem` | [IsContained.extremalNumber_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/iscontained-extremalnumber-le--700c25871882fbc29eb2cc9d.md) | 138 | `result-track:700c25871882fbc29eb2cc9d4cf07d4919e517312ffa441aeb6a284f13d3c500` |
| 14 | `theorem` | [extremalNumber_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/extremalnumber-congr--61218cd1f98353f4530fbce6.md) | 148 | `result-track:61218cd1f98353f4530fbce63c8f4f902b0b358e0feaf3f092a353175e1b92f2` |
| 15 | `theorem` | [extremalNumber_congr_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/extremalnumber-congr-right--61e2f27e7f28be57610f146d.md) | 164 | `result-track:61e2f27e7f28be57610f146dc8f05239f2038b2f146f1d06242be0ba5c35de16` |
| 16 | `theorem` | [isExtremal_free_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/isextremal-free-iff--903f1abedf3eb7726ca61022.md) | 169 | `result-track:903f1abedf3eb7726ca61022973d1bfda3092934c93a046c5ed9c28bb4aec001` |
| 17 | `lemma` | [card_edgeFinset_of_isExtremal_free](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantbc0bfd3256e12184752b556359b78ff1b2cf4ce5a3562dc043eafb330c1bc0de.lean/declarations/card-edgefinset-of-isextremal-free--ce62a6546a83bd693afb0817.md) | 174 | `result-track:ce62a6546a83bd693afb0817e07371dd755c30d594a8c52c6556098d2b07badb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
