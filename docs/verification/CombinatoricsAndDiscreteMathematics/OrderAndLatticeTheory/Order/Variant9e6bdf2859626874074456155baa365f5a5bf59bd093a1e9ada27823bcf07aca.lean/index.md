# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a1b6003a28d2b5aaedae77ccccabc59237169b1",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a1b6003a28d2b5aaedae77ccccabc59237169b1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sigma.Lex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Notation3` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/le--bbc2942add7fb239e5c0aac4.md) | 52 | `declaration-track:bbc2942add7fb239e5c0aac4c52d64170c787e60680fc8c74771992586262ac4` |
| 2 | `inductive` | [LT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/lt--781008227f2fdef9b88525c8.md) | 56 | `declaration-track:781008227f2fdef9b88525c8aa7165815200bf68edb89ebcc451b9ad7cc51bbf` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/instance--7d42f3d92ce0467db93dd8b2.md) | 59 | `declaration-track:7d42f3d92ce0467db93dd8b2c476f7baa617c13d1f61bda15d3b6b379222886b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/instance--d35ecdc2817b14b0dc67f464.md) | 62 | `declaration-track:d35ecdc2817b14b0dc67f4644b37ac377785af0db8014476e994d80587508cb8` |
| 5 | `theorem` | [mk_le_mk_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/mk-le-mk-iff--c4e64ec68a500b568264fc72.md) | 66 | `result-track:c4e64ec68a500b568264fc72c59dcd381d1d2ba5a54c03f4da4755b737d83037` |
| 6 | `theorem` | [mk_lt_mk_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/mk-lt-mk-iff--8ddbdcf76f57d469a3a087ee.md) | 70 | `result-track:8ddbdcf76f57d469a3a087ee36996fc17fcb9281472bb6099ad80464bf0ffa73` |
| 7 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/le-def--853abebf78f8e5f52c4547b5.md) | 73 | `result-track:853abebf78f8e5f52c4547b5663c764cb80c6360403ccf7b6f58c43ef1ff1be4` |
| 8 | `theorem` | [lt_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/lt-def--6abc37593bedeb3fe7159a9c.md) | 82 | `result-track:6abc37593bedeb3fe7159a9c36e17bece8b6bcec2f75db01340abb69dc5a4659` |
| 9 | `instance` | [preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/preorder--9280a42f01d2e6e1b6d9e2f5.md) | 91 | `declaration-track:9280a42f01d2e6e1b6d9e2f5f291f8a039bd7bbd1c01b05628bbd4a581d51efe` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/instance--5bba33a6e20a2cfea456e26d.md) | 104 | `declaration-track:5bba33a6e20a2cfea456e26d99c63894bad189dd3e3c44b8b406f9c9aa88b806` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/instance--654cd2fd04869b4ebdac3efe.md) | 110 | `declaration-track:654cd2fd04869b4ebdac3efed6aaaca5229c1d01d6b9510e541073951b7729a4` |
| 12 | `instance` | [LE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/le--3a52ad4f9f038f038fcfd465.md) | 124 | `declaration-track:3a52ad4f9f038f038fcfd465b6ff3dc28bfbf0ae178e150155e063fadcb0e0f9` |
| 13 | `instance` | [LT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/lt--cb1a50a5a78e76bfdc977f22.md) | 128 | `declaration-track:cb1a50a5a78e76bfdc977f2207348da867fc7c5261d2e2369810cd7b8d3e7047` |
| 14 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/le-def--7b4896c1759f0f93c54f8994.md) | 131 | `result-track:7b4896c1759f0f93c54f89945c43e46cdd5696f22d991f03ca13f8db15c2c805` |
| 15 | `theorem` | [lt_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/lt-def--740a89a1f6561eb3c39711c9.md) | 135 | `result-track:740a89a1f6561eb3c39711c9322a7a862ae5893bdf361c686c272e4a87df5b2b` |
| 16 | `instance` | [preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/preorder--f369892a8599a780075250ad.md) | 140 | `declaration-track:f369892a8599a780075250ad5061c77642bbe827633eec0a404d1b2147fdeb1a` |
| 17 | `instance` | [partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/partialorder--13bd2817bb66159d06bd7193.md) | 156 | `declaration-track:13bd2817bb66159d06bd7193863d9d766bc44d20096463f8bb14b2e83bbed72b` |
| 18 | `instance` | [linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/linearorder--1143ba962d41b1d457346891.md) | 164 | `declaration-track:1143ba962d41b1d4573468910086fae038a27b6a28019a27f43e2d5cb02277b4` |
| 19 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/orderbot--81bf94c5c7203946fb065010.md) | 173 | `declaration-track:81bf94c5c7203946fb06501006882e2f31492014392bd4778d6b079cb8a79ead` |
| 20 | `instance` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/ordertop--57bc4e9cb2e98976816e33a4.md) | 182 | `declaration-track:57bc4e9cb2e98976816e33a4405d4a41883e61f58e2351f2a9efa1789d4f1f3f` |
| 21 | `instance` | [boundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/boundedorder--90cb0ad7a91d2c33b48cc923.md) | 191 | `declaration-track:90cb0ad7a91d2c33b48cc92313b964daf30127e11df967de79d20a00a388cfd1` |
| 22 | `instance` | [denselyOrdered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/denselyordered--215a759545d1eff1df42cf0d.md) | 195 | `declaration-track:215a759545d1eff1df42cf0dd8431f483b392e35f7b8f6f4485f8bfc8ea548d3` |
| 23 | `instance` | [denselyOrdered_of_noMaxOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/denselyordered-of-nomaxorder--d8f98f9ff8bab35c44b3386c.md) | 205 | `declaration-track:d8f98f9ff8bab35c44b3386c026eb0ef6ff19e1aebf197e71aa20c8792caa7ec` |
| 24 | `instance` | [denselyOrdered_of_noMinOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/denselyordered-of-nominorder--a6adcdda01b1fce3bed1f0b9.md) | 215 | `declaration-track:a6adcdda01b1fce3bed1f0b91966d875648181cd309dfb7e6dda09d76219f7f1` |
| 25 | `instance` | [noMaxOrder_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/nomaxorder-of-nonempty--f1bb2dac999e44cf8f8a360b.md) | 225 | `declaration-track:f1bb2dac999e44cf8f8a360bae11fb9b063738f7a00139fdc0fbdddcf93e1a69` |
| 26 | `instance` | [noMinOrder_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/nominorder-of-nonempty--19a2be56adebd13b10972d81.md) | 233 | `declaration-track:19a2be56adebd13b10972d812222f4a2ca9f15ceb23309f78bee0069d096cede` |
| 27 | `instance` | [noMaxOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/nomaxorder--b3c66615fd7920046df19559.md) | 241 | `declaration-track:b3c66615fd7920046df1955909c25cc7a31f093b29dca18d88af066e622fc007` |
| 28 | `instance` | [noMinOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant9e6bdf2859626874074456155baa365f5a5bf59bd093a1e9ada27823bcf07aca.lean/declarations/nominorder--beaa9aa4a4def44820897b06.md) | 248 | `declaration-track:beaa9aa4a4def44820897b0691304343907eee86047715d1b43983f5b36c626b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
