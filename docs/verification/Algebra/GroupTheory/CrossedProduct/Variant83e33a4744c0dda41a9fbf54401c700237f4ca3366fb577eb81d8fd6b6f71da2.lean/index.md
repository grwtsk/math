# Verification target: GRWTSK.Algebra.GroupTheory.CrossedProduct.Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed76007e560b94ae65d2b57eff07fbd59442ebb3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed76007e560b94ae65d2b57eff07fbd59442ebb3`.

Source path: `GRWTSK/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ConnesBitfield.System` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitfieldAutomorphismAction](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/bitfieldautomorphismaction--e99f539748b37e811d8e0816.md) | 25 | `declaration-track:e99f539748b37e811d8e08167310dd8aa96143ae092e99439ab6ee07dc2285c6` |
| 2 | `abbrev` | [CrossedProductElement](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/crossedproductelement--8200225bb8ab67d27400a3ca.md) | 61 | `declaration-track:8200225bb8ab67d27400a3ca08683098df2a95027c31afe562797a1c2183d91e` |
| 3 | `def` | [crossedProductMultiply](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/crossedproductmultiply--362dfc38bc97ffc6a3bdf62c.md) | 66 | `declaration-track:362dfc38bc97ffc6a3bdf62c798e6553134742682c8268c61a34c1f10fc719a7` |
| 4 | `def` | [crossedProductStar](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/crossedproductstar--529a12e081a72296bd470cde.md) | 84 | `declaration-track:529a12e081a72296bd470cdee94bb37ca8112e4f85bffa732727070e326a65bc` |
| 5 | `def` | [canonicalCrossedProductTrace](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/canonicalcrossedproducttrace--19d29e12aa75efd821a4590c.md) | 102 | `declaration-track:19d29e12aa75efd821a4590c07cca12981eca90c1b69303909682ed5e651ee07` |
| 6 | `structure` | [CrossedProductLawCertificate](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/crossedproductlawcertificate--4a17c613722c0b615d2306f1.md) | 111 | `declaration-track:4a17c613722c0b615d2306f1f6f02ae7910321ca2894bab904759b9dc5b1a47f` |
| 7 | `structure` | [FiniteCrossedProductModel](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/finitecrossedproductmodel--f32d063f6b60c75d192847c9.md) | 148 | `declaration-track:f32d063f6b60c75d192847c9f4768453fb6a2cbddf5d8c717b0e793cbb635680` |
| 8 | `structure` | [EquivariantArithmeticBitfieldEncoding](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/equivariantarithmeticbitfieldencoding--6b8d102c14d156d6c1728f3a.md) | 171 | `declaration-track:6b8d102c14d156d6c1728f3aa4289138616ca039eeb5e075b4d3620dd696a960` |
| 9 | `abbrev` | [SupportedBitfield](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/supportedbitfield--2d5d8e72163111d8ba0fa50e.md) | 197 | `declaration-track:2d5d8e72163111d8ba0fa50e4048b3c7b0e211628f0d51d40c18e4491342a999` |
| 10 | `def` | [supportedBitfieldAct](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/supportedbitfieldact--627d3ce747e76c419a2c07c0.md) | 202 | `declaration-track:627d3ce747e76c419a2c07c06139d328d9a9aba6d28520f2a35523249d66665b` |
| 11 | `abbrev` | [BitfieldHilbertIndex](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/bitfieldhilbertindex--456622090dcc5e59dd546a7a.md) | 212 | `declaration-track:456622090dcc5e59dd546a7a4a25fcb8e708349905b988ea4adc88f40139836e` |
| 12 | `abbrev` | [BitfieldHilbertVector](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/bitfieldhilbertvector--96711e2c9e421e3536bd691d.md) | 217 | `declaration-track:96711e2c9e421e3536bd691d9113bda1fdcf094b24497850c013c26e3a698029` |
| 13 | `def` | [weightedHilbertInner](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/weightedhilbertinner--4f67127082a3750ef5f39a38.md) | 222 | `declaration-track:4f67127082a3750ef5f39a381a53eb239734a032a96c133159cf272134b335c1` |
| 14 | `structure` | [CrossedProductRepresentation](../../../../../mathematics/Algebra/GroupTheory/CrossedProduct/Variant83e33a4744c0dda41a9fbf54401c700237f4ca3366fb577eb81d8fd6b6f71da2.lean/declarations/crossedproductrepresentation--6cf2202092152dc258f2c3cc.md) | 239 | `declaration-track:6cf2202092152dc258f2c3ccad7299a7c3d7daf1fda5588c626eaf6b394909ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
