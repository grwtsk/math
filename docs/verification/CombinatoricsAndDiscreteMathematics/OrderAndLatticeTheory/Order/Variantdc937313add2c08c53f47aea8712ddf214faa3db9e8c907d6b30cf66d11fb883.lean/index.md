# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c56dcb9735ea04157930497dde80e3515010262d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c56dcb9735ea04157930497dde80e3515010262d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sigma.Lex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Mathport.Notation` — import line 8; external provider; requires a separately pinned dependency.
- `Init.NotationExtra` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/le--72a9d761723da25a2f8195ad.md) | 45 | `declaration-track:72a9d761723da25a2f8195adca727ed3b97d56b0b35dde87693d5a4e779c6446` |
| 2 | `instance` | [lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/lt--a92547677bf6f683924b19bc.md) | 50 | `declaration-track:a92547677bf6f683924b19bcb564294f1b7412e115f6f482167786bee01a2a46` |
| 3 | `instance` | [preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/preorder--e5507fc35e0d09433902646e.md) | 54 | `declaration-track:e5507fc35e0d09433902646e0aa2db23503c9c292dbe197fe029d0379b18fbf0` |
| 4 | `instance` | [partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/partialorder--510c92e34be48617d90af44a.md) | 82 | `declaration-track:510c92e34be48617d90af44a17c551ed7bd8a71127e8bc48f7e5bc93489252d7` |
| 5 | `instance` | [linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/linearorder--da6ef032082e4c4778030dfa.md) | 93 | `declaration-track:da6ef032082e4c4778030dfad8f1962dfb09be88cea1ff94e832cec8cf761cef` |
| 6 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/orderbot--fde7e96f5d0454b57ba70458.md) | 108 | `declaration-track:fde7e96f5d0454b57ba70458051f87764c37eef8f0f7dcc145ccbc6b22708ae8` |
| 7 | `instance` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/ordertop--485461764dfc9b45114b0f84.md) | 118 | `declaration-track:485461764dfc9b45114b0f84df17de9474f6a897d46ae41707f9ddb9429e534b` |
| 8 | `instance` | [boundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/boundedorder--9e124bad463d84f7f78b6fdd.md) | 128 | `declaration-track:9e124bad463d84f7f78b6fdd700c7108202d0ca543ededa19a7916ad381ed381` |
| 9 | `instance` | [denselyOrdered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/denselyordered--71d04084ff19a6fe1e110a8f.md) | 133 | `declaration-track:71d04084ff19a6fe1e110a8fd8ca7ba9f1f710b34321cbab6a1b3072d6eb3eec` |
| 10 | `instance` | [denselyOrdered_of_noMaxOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/denselyordered-of-nomaxorder--c6d961ebc4afd04bbf61e36c.md) | 144 | `declaration-track:c6d961ebc4afd04bbf61e36c44d8a18e3ff440da78c040fc6cbb5bc3bae6f788` |
| 11 | `instance` | [densely_ordered_of_noMinOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/densely-ordered-of-nominorder--9d5984abd9b779d776058268.md) | 154 | `declaration-track:9d5984abd9b779d776058268f48d0a7961f65c178f7c0e690f2d36ee8dd9581e` |
| 12 | `instance` | [noMaxOrder_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/nomaxorder-of-nonempty--1b5764100825e3aa85e6eee5.md) | 164 | `declaration-track:1b5764100825e3aa85e6eee539da652b428c584a70848da481e5224ac3e81334` |
| 13 | `instance` | [noMinOrder_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/nominorder-of-nonempty--737ef13c7856ee0c89fd55b3.md) | 174 | `declaration-track:737ef13c7856ee0c89fd55b35c7abddcdb089d0727ee987c4b8a1917d5edeecc` |
| 14 | `instance` | [noMaxOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/nomaxorder--a5ec8124628705991f725cc8.md) | 183 | `declaration-track:a5ec8124628705991f725cc8690dad0e5da15c98053a0899bb5cc56b78f7da13` |
| 15 | `instance` | [noMinOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantdc937313add2c08c53f47aea8712ddf214faa3db9e8c907d6b30cf66d11fb883.lean/declarations/nominorder--ea902b78fe00bf978a884b03.md) | 191 | `declaration-track:ea902b78fe00bf978a884b0371fde0d106f72eaec696cc4772cd902bd139774e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
