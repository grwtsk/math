# Verification target: GRWTSK.Algebra.UniversalAlgebra.Canonical.Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b3ebb5292d37909acd9803250b5ec8d09bac23c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b3ebb5292d37909acd9803250b5ec8d09bac23c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Parity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicallyOrderedCommSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/canonicallyorderedcommsemiring--9b277688c6bbad894cb11f49.md) | 28 | `declaration-track:9b277688c6bbad894cb11f491beea439a4c00f95395a484f215d47d69253e30a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/instance--c331124ce0a2e4e2a1805c11.md) | 36 | `declaration-track:c331124ce0a2e4e2a1805c113d8315d1081dea3ff0d733fc1fbc966f65daa02d` |
| 3 | `lemma` | [Odd.pos](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/odd-pos--197aec28efe6878a76e86596.md) | 42 | `result-track:197aec28efe6878a76e8659681833ba6c0e392d4c6a00e1a6508ae0ad5991bad` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/instance--0e1963aac80febb1f2f517b6.md) | 49 | `declaration-track:0e1963aac80febb1f2f517b656bc7f8c95d040469f77af6cd715151f95160389` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/instance--7861ec819475fc96c125d506.md) | 58 | `declaration-track:7861ec819475fc96c125d50693c41a666d1c027c397f9a5d9d924d66223db684` |
| 6 | `lemma` | [toIsOrderedMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/toisorderedmonoid--87a097dafe0467dea8762393.md) | 69 | `result-track:87a097dafe0467dea876239394d9b6d73689af85f1619acb6eddfa322d42a755` |
| 7 | `lemma` | [toIsOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/toisorderedring--5063113fba6bc5c99c65d9fd.md) | 73 | `result-track:5063113fba6bc5c99c65d9fd996e4633511b100de74c8102c3c9aad994e8cb50` |
| 8 | `theorem` | [mul_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/mul-pos--ea908fca3806ede9845db608.md) | 80 | `result-track:ea908fca3806ede9845db60882fcf2a5ceaaf6f5725d0277deb15227e6d20caf` |
| 9 | `lemma` | [pow_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/pow-pos--bae44ce136a0731e58b29267.md) | 84 | `result-track:bae44ce136a0731e58b292670d82d94fd188b7ae7df4a24f67e53236ae790c0f` |
| 10 | `lemma` | [mul_lt_mul_of_lt_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/mul-lt-mul-of-lt-of-lt--1acbeb24625cd0952e946f45.md) | 87 | `result-track:1acbeb24625cd0952e946f452a577fa552bc14bc8a8f916724969a60af68cdaa` |
| 11 | `theorem` | [mul_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/mul-tsub--2b396b05baad19415e0c401c.md) | 108 | `result-track:2b396b05baad19415e0c401c03d225472772b4caaef3bc94550846a5052658e9` |
| 12 | `theorem` | [tsub_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/tsub-mul--1865d2e31dae685fe51d6cc3.md) | 115 | `result-track:1865d2e31dae685fe51d6cc38ad0b6de6e779e78abccf9c26fd72b519efc6d51` |
| 13 | `theorem` | [mul_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/mul-tsub--2bcb2b8e0e49dbe7da883d61.md) | 126 | `result-track:2bcb2b8e0e49dbe7da883d610cdc7ec91ae0c522d8cfe65e2d8eab04a6a5c71d` |
| 14 | `theorem` | [tsub_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/tsub-mul--6d4d01d0a0ab534029ddba92.md) | 129 | `result-track:6d4d01d0a0ab534029ddba92dda665b125dc179d5d29bb71fb114f3ba341733e` |
| 15 | `lemma` | [mul_tsub_one](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/mul-tsub-one--238324c0428c49ab956e5064.md) | 140 | `result-track:238324c0428c49ab956e5064ea1a38e183f8c38f6bf7e4f595b5bcfc29bc7a2a` |
| 16 | `lemma` | [tsub_one_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/tsub-one-mul--00d50407b25f7331dcc5cb3d.md) | 142 | `result-track:00d50407b25f7331dcc5cb3de1e8beda85d4c11ddd4fbd00186fe09f1d31b6c6` |
| 17 | `theorem` | [mul_self_tsub_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/mul-self-tsub-mul-self--ecf2e6eddc2f04920a9d9d67.md) | 153 | `result-track:ecf2e6eddc2f04920a9d9d67f744c2736ac81caca656592c2dd5b1d40e8bc0d2` |
| 18 | `theorem` | [sq_tsub_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/sq-tsub-sq--19e3d210620622bcbde4720b.md) | 158 | `result-track:19e3d210620622bcbde4720b2a3db1a5948f7fd42728b8a74b13bac9c77998ac` |
| 19 | `theorem` | [mul_self_tsub_one](../../../../../mathematics/Algebra/UniversalAlgebra/Canonical/Variantb7db62ceb2284076429421b6c04a2f0261fde7116173746e1277e7801eaa92c0.lean/declarations/mul-self-tsub-one--7fb1a4513b2b6136014d185b.md) | 161 | `result-track:7fb1a4513b2b6136014d185bfe5bb5a7e72c11687d8eab32361d1580a8b67838` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
