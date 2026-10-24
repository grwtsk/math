# Verification target: GRWTSK.Algebra.ULift.Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac66cd7129530a4cb80065f26ad25078a41b05b6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/index.md) · [Full source](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac66cd7129530a4cb80065f26ad25078a41b05b6`.

Source path: `GRWTSK/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [mulZeroClass](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/mulzeroclass--946716f11161da24995f1acc.md) | 37 | `declaration-track:946716f11161da24995f1acc7460fd41af0b3304fd2ac1cfc6c73ded8d597b31` |
| 2 | `instance` | [distrib](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/distrib--3a114c483042a1ea921a8ee1.md) | 42 | `declaration-track:3a114c483042a1ea921a8ee16c179aeb1ab98c8e88352c6daa97699c8aeacac5` |
| 3 | `instance` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/nonunitalnonassocsemiring--9fdf27bf939d9e9ea068e8b0.md) | 48 | `declaration-track:9fdf27bf939d9e9ea068e8b0b027aaba65e552a439f30cdba9c122222ab59e54` |
| 4 | `instance` | [nonAssocSemiring](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/nonassocsemiring--dd069d2d00508e30631a397d.md) | 57 | `declaration-track:dd069d2d00508e30631a397d107f85d64f048744bce2c458529cc0b1e15350c5` |
| 5 | `instance` | [nonUnitalSemiring](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/nonunitalsemiring--f3af8f14e4a1c645ee79032d.md) | 64 | `declaration-track:f3af8f14e4a1c645ee79032d576d726c14d98061f09091b9f05fe149169799da` |
| 6 | `instance` | [semiring](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/semiring--fa3f6f0f4f44d5b89cfdfc59.md) | 71 | `declaration-track:fa3f6f0f4f44d5b89cfdfc598d4b03cc8f6514f053d6bdd92e0119cedc60f59d` |
| 7 | `def` | [ringEquiv](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/ringequiv--b0340d471f2bb054e8d3ea40.md) | 80 | `declaration-track:b0340d471f2bb054e8d3ea404055a5ebec44fa96efbb737927f64b8c56a57cd0` |
| 8 | `instance` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/nonunitalcommsemiring--54c743364da285077614cadc.md) | 89 | `declaration-track:54c743364da285077614cadcdcf220e432e8b54307f789c9daf4089e81e66d93` |
| 9 | `instance` | [commSemiring](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/commsemiring--59b61d1c19af31f5d26ffcc4.md) | 96 | `declaration-track:59b61d1c19af31f5d26ffcc44ada34a941364a8411317664fec7e5aaa017c2c9` |
| 10 | `instance` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/nonunitalnonassocring--b88f509767c59fb9d7d64de4.md) | 102 | `declaration-track:b88f509767c59fb9d7d64de49c6cd4c255981b89f142ffcf3c9e2d4957922747` |
| 11 | `instance` | [nonUnitalRing](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/nonunitalring--7f3f3715657580780d5339d6.md) | 112 | `declaration-track:7f3f3715657580780d5339d62170703bf84e0a62fc7bf22c1613e4ffae2e20a6` |
| 12 | `instance` | [nonAssocRing](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/nonassocring--c78c3c1ee33143e1f0a09fb4.md) | 122 | `declaration-track:c78c3c1ee33143e1f0a09fb4a30d27a521137db906d6d4c9a9b3db2360313ba0` |
| 13 | `instance` | [ring](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/ring--2dd96dee8c61e14010ec1e3b.md) | 136 | `declaration-track:2dd96dee8c61e14010ec1e3bf6cb3a13bc1477ab0b6278e8a38cffda7e6cdb9e` |
| 14 | `instance` | [nonUnitalCommRing](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/nonunitalcommring--1df120019e33ecaa47f03e9f.md) | 149 | `declaration-track:1df120019e33ecaa47f03e9febd3533312c1f0b5243c6bb4efea0a45a91f2bd3` |
| 15 | `instance` | [commRing](../../../../mathematics/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/declarations/commring--93b0d28467a13c656eb01505.md) | 160 | `declaration-track:93b0d28467a13c656eb015059b989a2f8f32a8de14f1d5bb60b45fd94fb06e05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
