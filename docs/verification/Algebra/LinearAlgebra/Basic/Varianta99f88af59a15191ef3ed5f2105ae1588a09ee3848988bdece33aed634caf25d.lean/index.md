# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1642df53c966feb6622bec1a53140c1cecc9e1ff",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1642df53c966feb6622bec1a53140c1cecc9e1ff`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.StdBasis` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FinsuppVectorSpace` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProductBasis` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module.Free](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/module-free--bdf2b0e28a85d7da8dfd4eae.md) | 49 | `declaration-track:bdf2b0e28a85d7da8dfd4eaeb3450bec3ff371c841dbc5b6f79efc67310200b6` |
| 2 | `theorem` | [Module.free_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/module-free-def--a87ace580a480f6df660b86d.md) | 58 | `result-track:a87ace580a480f6df660b86dae2dbfec1435e111cfa5b5bfa9b5c1222146f2ba` |
| 3 | `theorem` | [Module.free_iff_set](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/module-free-iff-set--10dbd64a54a71517c18288db.md) | 69 | `result-track:10dbd64a54a71517c18288db482f42ebb0db43ac0b7686eece179cec27355320` |
| 4 | `theorem` | [Module.Free.of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/module-free-of-basis--e9e0184841466c4c5789fb43.md) | 76 | `result-track:e9e0184841466c4c5789fb4389e7d280cadbf035c0f7d6ee2ae6489166d06374` |
| 5 | `def` | [ChooseBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/choosebasisindex--776e5fef3e1b6375c0d86315.md) | 92 | `declaration-track:776e5fef3e1b6375c0d86315f9c6cbb257ee35ba61f86f41e0f6369ca1fa1406` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/instance--89ff022faea32345c795eeaa.md) | 98 | `declaration-track:89ff022faea32345c795eeaa88633e50f2b60115907b48350234cb2441aa55f9` |
| 7 | `def` | [chooseBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/choosebasis--dab084191ddea71515e68e23.md) | 102 | `declaration-track:dab084191ddea71515e68e2324f289c597cebc5f0517c9856845d853172cb8b9` |
| 8 | `def` | [repr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/repr--137945ba9e57666292236818.md) | 107 | `declaration-track:137945ba9e57666292236818b844e8a7970a4e783742f429332dceff68bf1c7e` |
| 9 | `def` | [constr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/constr--af13b1dbf3116a1f83661294.md) | 119 | `declaration-track:af13b1dbf3116a1f83661294f40cea860a4b10221a52e7ddcd055eb5cc0155fc` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/instance--162052e0ab31b8bf2b4b10ad.md) | 124 | `declaration-track:162052e0ab31b8bf2b4b10ad345085560ad703b29df37fd2eb262c99fe6ffad8` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/instance--591b0453ebac6beb49c9c130.md) | 129 | `declaration-track:591b0453ebac6beb49c9c130a0a32dd69be3ddbb56a571e3447f637d448755ef` |
| 12 | `theorem` | [of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/of-equiv--dd2ed6c41b332c155796e5c9.md) | 134 | `result-track:dd2ed6c41b332c155796e5c9539f76d4ffddc9649c45d4652399ac667538da76` |
| 13 | `theorem` | [of_equiv'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/of-equiv--3c72015a8118c20a33b668b3.md) | 140 | `result-track:3c72015a8118c20a33b668b3ec7bf45de7ccf55b162469b74b4b7a7ef6ddcf3b` |
| 14 | `instance` | [self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/self--2f2a038a2a5863cf516f2ffb.md) | 148 | `declaration-track:2f2a038a2a5863cf516f2ffb65d8e64cfefa8c8a1b546fecb79f24cefa965f02` |
| 15 | `instance` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/prod--301ad52323f9ac71cd53e0cb.md) | 152 | `declaration-track:301ad52323f9ac71cd53e0cb9b8f98341dfffd8430d7bc00c6e611f9c4899cc4` |
| 16 | `instance` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/pi--21f9ed12182d2acc7b3f8454.md) | 157 | `declaration-track:21f9ed12182d2acc7b3f845415306c617a864241b5071e2ef8564d7963ca645c` |
| 17 | `instance` | [matrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/matrix--a69e681efc3181c1d6554451.md) | 164 | `declaration-track:a69e681efc3181c1d655445131e64efa6a6e0d9801fe68016006642c67de8b3d` |
| 18 | `instance` | [function](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/function--4ab6138547e3e5882d2eedec.md) | 172 | `declaration-track:4ab6138547e3e5882d2eedec986a3c9411f9345104a1761ddaa621c76c0dc902` |
| 19 | `instance` | [finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/finsupp--33a2c4917e1d3e8bf12d411a.md) | 176 | `declaration-track:33a2c4917e1d3e8bf12d411a9022343f46b6e441e71d5e98af38bc207ad4bea3` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/instance--ea642fb9256e20f44178bd7e.md) | 182 | `declaration-track:ea642fb9256e20f44178bd7e4cab7ed1e98db1a162d00a3ce45dad71e4091704` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/instance--d57bfc36de3d722c970aef53.md) | 186 | `declaration-track:d57bfc36de3d722c970aef53559352c9c43f0709880dd2008367ad443100a1ae` |
| 22 | `instance` | [dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/dfinsupp--7cf378ea53cbe12b21b7449e.md) | 191 | `declaration-track:7cf378ea53cbe12b21b7449ef09c0a81a5ac7fd4c9f373c0896aca4d8526651a` |
| 23 | `instance` | [directSum](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/directsum--0e01d8825725156ae559fa4b.md) | 196 | `declaration-track:0e01d8825725156ae559fa4b77c8a5f12a9b258e844ce2b6ba45fd716220f37f` |
| 24 | `instance` | [tensor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta99f88af59a15191ef3ed5f2105ae1588a09ee3848988bdece33aed634caf25d.lean/declarations/tensor--2b27253dc95c5264a6a3951f.md) | 209 | `declaration-track:2b27253dc95c5264a6a3951f5ba99016a9ed3526788bd1388969785f1dc71832` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
