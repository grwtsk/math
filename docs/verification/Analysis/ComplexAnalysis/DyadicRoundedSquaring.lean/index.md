# Verification target: GRWTSK.Analysis.Complex.DyadicRoundedSquaring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6713ba9d35561eb0b4ba8e8dd1eae1ad81017a7a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/DyadicRoundedSquaring.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6713ba9d35561eb0b4ba8e8dd1eae1ad81017a7a`.

Source path: `GRWTSK/Analysis/Complex/DyadicRoundedSquaring.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/DyadicRoundedSquaring.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.DyadicExponentialEnclosure`](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.Floor.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scale](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/scale--3c78183720cca1394f492bc1.md) | 27 | `declaration-track:3c78183720cca1394f492bc17a8cc5f371a2168566e35a35e91436cd77e42e1e` |
| 2 | `theorem` | [scale_pos](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/scale-pos--f6ec465430e969f7d8665ef2.md) | 29 | `result-track:f6ec465430e969f7d8665ef2027d20db70aa209a5c2d6ed25ac3e91585de595c` |
| 3 | `def` | [down](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/down--2c0415261a8a679fcabc7b90.md) | 31 | `declaration-track:2c0415261a8a679fcabc7b901c856f20af396481adb3e8b5b0c8653a9f596a8f` |
| 4 | `def` | [up](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/up--eab9b476c21fbf81be84fa00.md) | 33 | `declaration-track:eab9b476c21fbf81be84fa0081861fb6e5f736079ed1ba480b2c32e030b3fe26` |
| 5 | `theorem` | [down_bounds](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/down-bounds--970838d0a1105d3e67b32acd.md) | 36 | `result-track:970838d0a1105d3e67b32acd945102bd282cf992c0e70cfad41c1b098f987f2f` |
| 6 | `theorem` | [up_bounds](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/up-bounds--75cc5f4df88fdfef92aca73e.md) | 49 | `result-track:75cc5f4df88fdfef92aca73edfe20b41d2aa619cc749dd0d2d46fad6ded02c67` |
| 7 | `theorem` | [abs_sub_down_le](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/abs-sub-down-le--1ef0361c160691bb567fa27f.md) | 55 | `result-track:1ef0361c160691bb567fa27fb1224347877e504045f16d9c18150bbdb5ce6f24` |
| 8 | `def` | [quantize](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/quantize--9d02c9d021d91a60d96747fe.md) | 61 | `declaration-track:9d02c9d021d91a60d96747feeff96be284158396df95258d5b3dbb711299d470` |
| 9 | `def` | [roundoff](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/roundoff--b785966a0ced07a14c8d9449.md) | 64 | `declaration-track:b785966a0ced07a14c8d9449ce6fc5bffaff667407699b9cdabe95586cce1f42` |
| 10 | `theorem` | [norm_sub_quantize_le](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/norm-sub-quantize-le--f6593303db49040337f5738b.md) | 66 | `result-track:f6593303db49040337f5738b0e9d15fe603c7d94571445d0fac713c541d4e33c` |
| 11 | `theorem` | [down_on_grid](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/down-on-grid--bb8fc701475c7b602b4f445e.md) | 76 | `result-track:bb8fc701475c7b602b4f445ebb95ccbae8be171f67f39d4df86301fc0fb29852` |
| 12 | `theorem` | [up_on_grid](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/up-on-grid--ed34b0d052fb4a8f5f417c66.md) | 80 | `result-track:ed34b0d052fb4a8f5f417c6675efd75a118394b33ed58d01c3df69d1d3d8fa25` |
| 13 | `theorem` | [quantize_on_grid](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/quantize-on-grid--db1de3005b35366c79eabc42.md) | 85 | `result-track:db1de3005b35366c79eabc4267b2a9f7af3864ae23b869b19209b8ac188ab077` |
| 14 | `def` | [roundedValue](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/roundedvalue--c2d47553d294ba8335f9734a.md) | 93 | `declaration-track:c2d47553d294ba8335f9734acc5c2e6d1fb4515b41b28ed490d7ba207f91dedb` |
| 15 | `def` | [roundedError](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/roundederror--d2e7356f29b19e50da481908.md) | 98 | `declaration-track:d2e7356f29b19e50da481908cdcb17b547686fddf867e22b55fdb6b581d904d4` |
| 16 | `theorem` | [rounded_chain_sound](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/rounded-chain-sound--4da351367b5f5261daacc876.md) | 106 | `result-track:4da351367b5f5261daacc8761f1e630e606febebb299e36f807a51de016e4102` |
| 17 | `theorem` | [rounded_state_on_grid](../../../../mathematics/Analysis/ComplexAnalysis/DyadicRoundedSquaring.lean/declarations/rounded-state-on-grid--b3a78b1d55bd1016676671da.md) | 125 | `result-track:b3a78b1d55bd1016676671dad958eb1cf64fc9d352badb74772339add344cfc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
