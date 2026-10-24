# Verification target: GRWTSK.Algebra.InjSurj.Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ba3877c42336dffa798db4e2e188605c0002b6c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/index.md) · [Full source](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ba3877c42336dffa798db4e2e188605c0002b6c`.

Source path: `GRWTSK/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Cancel.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderedSemiring](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/declarations/orderedsemiring--f040ca8761cb5b1639a7882f.md) | 37 | `declaration-track:f040ca8761cb5b1639a7882fde43eae52316103726c2a50748f7b4c57813453a` |
| 2 | `def` | [orderedCommSemiring](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/declarations/orderedcommsemiring--47592287c65d1d214f5e5ce1.md) | 60 | `declaration-track:47592287c65d1d214f5e5ce1a4442a1e43d37db4d39b9e4f130c7304294495c2` |
| 3 | `def` | [orderedRing](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/declarations/orderedring--f8e16dcaeaa8145ef4668f83.md) | 72 | `declaration-track:f8e16dcaeaa8145ef4668f83129e104566707109807f3ce860140c03f226b9bc` |
| 4 | `def` | [orderedCommRing](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/declarations/orderedcommring--1e5151fd90b60899b5c7afc1.md) | 90 | `declaration-track:1e5151fd90b60899b5c7afc15c8f64647ab893e9753e131b360769e8a1295588` |
| 5 | `def` | [strictOrderedSemiring](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/declarations/strictorderedsemiring--76ad732c913692f2b22be7c9.md) | 104 | `declaration-track:76ad732c913692f2b22be7c9a81a81083eb29e8b0863ab22d4e5779f985dd246` |
| 6 | `def` | [strictOrderedCommSemiring](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/declarations/strictorderedcommsemiring--40566fb2e910dd37f63ccd2c.md) | 122 | `declaration-track:40566fb2e910dd37f63ccd2c2e2eaca7d9951566d83347cc0239f0c2b752d1cf` |
| 7 | `def` | [strictOrderedRing](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/declarations/strictorderedring--48efbf03a040fd55db3b2ef8.md) | 134 | `declaration-track:48efbf03a040fd55db3b2ef83a1639823a4ddce46ec2bf9f30ff6f32f6f47658` |
| 8 | `def` | [strictOrderedCommRing](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/declarations/strictorderedcommring--5d2d98b788062de5e83b0bf5.md) | 152 | `declaration-track:5d2d98b788062de5e83b0bf56b206cc5063d932ba02748c92ae70b570d8feb36` |
| 9 | `def` | [linearOrderedSemiring](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/declarations/linearorderedsemiring--bafa0b2b761a47771153e95e.md) | 166 | `declaration-track:bafa0b2b761a47771153e95e9d3e2a0412fb75135ef79ef8c3dbc38f6571c82b` |
| 10 | `def` | [linearOrderedCommSemiring](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/declarations/linearorderedcommsemiring--652257ab6577fae5455d2a73.md) | 180 | `declaration-track:652257ab6577fae5455d2a73d0d606b3030eecec66ab26d22bc46ff312786c2c` |
| 11 | `def` | [linearOrderedRing](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/declarations/linearorderedring--e7bdfb1baa7b3d4262b95d96.md) | 194 | `declaration-track:e7bdfb1baa7b3d4262b95d961b1c13145ef31121c47ed82bdf5191bfed2606cb` |
| 12 | `def` | [linearOrderedCommRing](../../../../mathematics/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/declarations/linearorderedcommring--1db2966f756bdc2b09da8f64.md) | 210 | `declaration-track:1db2966f756bdc2b09da8f64f21144f74352a34311b192d13fe120479eb05501` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
