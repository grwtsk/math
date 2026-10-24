# Verification target: GRWTSK.Algebra.Opposite.Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d571a15857aa45256679cc4328d8106797a83259",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/index.md) · [Full source](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d571a15857aa45256679cc4328d8106797a83259`.

Source path: `GRWTSK/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNNRatCast](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/instnnratcast--2746644dac2c056f764cfa6d.md) | 28 | `declaration-track:2746644dac2c056f764cfa6dceddbe88a142338bda64fa3e9fb43eb02117bcce` |
| 2 | `instance` | [instRatCast](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/instratcast--fb047b45cbb35d1c87c9da99.md) | 29 | `declaration-track:fb047b45cbb35d1c87c9da99c2d8272101db94c6ca66c8373233dfeb5b0ed092` |
| 3 | `lemma` | [op_nnratCast](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/op-nnratcast--3fc1d609f273a51609aa2815.md) | 32 | `result-track:3fc1d609f273a51609aa2815f66a2d741f3e18867b2e4870ebeaeb0b149fe921` |
| 4 | `lemma` | [unop_nnratCast](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/unop-nnratcast--14809e904dc1bad067312a3e.md) | 35 | `result-track:14809e904dc1bad067312a3e56efdb08ba78324f279cca610f0232f8a54cc321` |
| 5 | `lemma` | [op_ratCast](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/op-ratcast--25eb4aa70b3b45a093e6dc02.md) | 38 | `result-track:25eb4aa70b3b45a093e6dc023801f771a862ac9b111613ca812d07fae3916356` |
| 6 | `lemma` | [unop_ratCast](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/unop-ratcast--b35049e502f9ebfeba2eb17f.md) | 41 | `result-track:b35049e502f9ebfeba2eb17f189edc2cd98c8f9f802bb1daea78115b90a20aa6` |
| 7 | `instance` | [instDivisionSemiring](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/instdivisionsemiring--526ed816905454c48f4f4192.md) | 43 | `declaration-track:526ed816905454c48f4f419222c9ea7d05ef9b367107d89dae28ca93d80128d8` |
| 8 | `instance` | [instDivisionRing](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/instdivisionring--dc6b7df773559843f7a09fbd.md) | 51 | `declaration-track:dc6b7df773559843f7a09fbda009a581ce5f9b6405a0b68945b70e7d0f1bf50c` |
| 9 | `instance` | [instSemifield](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/instsemifield--ddfca8858888f5dd5ef1dde8.md) | 59 | `declaration-track:ddfca8858888f5dd5ef1dde88b6d575d269c5078535a5f6e1c8efb3da9667e7d` |
| 10 | `instance` | [instField](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/instfield--9c2b5d08ee35eedcab09fad6.md) | 63 | `declaration-track:9c2b5d08ee35eedcab09fad6363c1ce8f8ab3e4c805e10129e0115fad6684308` |
| 11 | `instance` | [instDivisionSemiring](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/instdivisionsemiring--034a61686a5e4b9d90659483.md) | 71 | `declaration-track:034a61686a5e4b9d9065948352d358e72092e21858063da60e9142ddcd23431c` |
| 12 | `instance` | [instDivisionRing](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/instdivisionring--4f71c0d33f57e9dfd11687e6.md) | 79 | `declaration-track:4f71c0d33f57e9dfd11687e649cf458825cad71af2a0ac93184f89c3691f67b8` |
| 13 | `instance` | [instSemifield](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/instsemifield--3bb5d5ce6b06d1222203adda.md) | 87 | `declaration-track:3bb5d5ce6b06d1222203adda5c970672ea1eae7480acddd414d4fc485a8c4b96` |
| 14 | `instance` | [instField](../../../../mathematics/Algebra/Opposite/Variant330a100061e3d47fa4c291c9340a71534619958102892cb485c3ec4ce94f68fb.lean/declarations/instfield--478b95d3cd009eea2470bc99.md) | 91 | `declaration-track:478b95d3cd009eea2470bc994bb4e2a9ffece8d08c0e98cbf9ee09ea0088e9f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
