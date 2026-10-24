# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d624874a3dd03e8265feabde66137472f38b3fe3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d624874a3dd03e8265feabde66137472f38b3fe3`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Torsion` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NoZeroSMulDivisors](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/nozerosmuldivisors--c1509f110a605d0464a4353f.md) | 37 | `declaration-track:c1509f110a605d0464a4353f82f35d7cfd0a9f856d1adc9efca1971de71bab47` |
| 2 | `theorem` | [Function.Injective.noZeroSMulDivisors](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/function-injective-nozerosmuldivisors--1bd34813a5adb7d6a34c2506.md) | 44 | `result-track:1bd34813a5adb7d6a34c25065bb50aaadcf43a9fa49571a4f49b2fe815b693e9` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/instance--ecaee06e1e03188d323ec489.md) | 51 | `declaration-track:ecaee06e1e03188d323ec489642d49b17522f79ac7dd75c72cab5f91113137e2` |
| 4 | `theorem` | [smul_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/smul-ne-zero--11e3f2191957e30c636787d2.md) | 55 | `result-track:11e3f2191957e30c636787d2fd14fd50806180f3ee182e66aa995b301743828b` |
| 5 | `theorem` | [smul_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/smul-eq-zero--2f3672f5b08632a2534cb5c9.md) | 64 | `result-track:2f3672f5b08632a2534cb5c9e3bfd59d53426bd8bd671f50ce35cf656fe27fd0` |
| 6 | `theorem` | [smul_ne_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/smul-ne-zero-iff--723789fc67ec4d0823541cb6.md) | 68 | `result-track:723789fc67ec4d0823541cb68f5db5d109ea9fca8a7aedd1a023d96a84dd1dc9` |
| 7 | `lemma` | [smul_eq_zero_iff_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/smul-eq-zero-iff-left--59b14aebd4fb27e4b5396d20.md) | 70 | `result-track:59b14aebd4fb27e4b5396d2048cad4aa0cfe20f80b02975aa42c96ccf3a84cc0` |
| 8 | `lemma` | [smul_eq_zero_iff_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/smul-eq-zero-iff-right--9328d5b95b819fa18af2c0b6.md) | 71 | `result-track:9328d5b95b819fa18af2c0b6f5e8c5326b07ec477476667f6e090138c890b02f` |
| 9 | `lemma` | [smul_ne_zero_iff_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/smul-ne-zero-iff-left--4fd0a6ac62a17e447096b647.md) | 72 | `result-track:4fd0a6ac62a17e447096b647aebb59c043c067f0d59f2145047d2f765cdca84d` |
| 10 | `lemma` | [smul_ne_zero_iff_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/smul-ne-zero-iff-right--dd1666f8118a37c82aad05a4.md) | 73 | `result-track:dd1666f8118a37c82aad05a416d3c44b55deb4f29f00f82d934ed3581867f1ba` |
| 11 | `instance` | [IsAddTorsionFree.to_noZeroSMulDivisors_nat](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/isaddtorsionfree-to-nozerosmuldivisors-nat--3d25f4d681b142dd030d1888.md) | 77 | `declaration-track:3d25f4d681b142dd030d1888252deee47b19ce1560bcbede2c383e358825316c` |
| 12 | `instance` | [IsAddTorsionFree.to_noZeroSMulDivisors_int](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/isaddtorsionfree-to-nozerosmuldivisors-int--d3c38c37460f80c2bd048eca.md) | 82 | `declaration-track:d3c38c37460f80c2bd048ecaa5e7be6314f23629d45f439b33bb4c73a37ab962` |
| 13 | `lemma` | [noZeroSMulDivisors_nat_iff_isAddTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/nozerosmuldivisors-nat-iff-isaddtorsionfree--5236ea6eef18a3338ff61b80.md) | 88 | `result-track:5236ea6eef18a3338ff61b80dfbb3bc8bf8ba0e734b922395a440e0cecc62115` |
| 14 | `lemma` | [noZeroSMulDivisors_int_iff_isAddTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant25b866e8e99202df4f7f38ef199e7f96c17ce841760143700a7a42c1ea93bdc2.lean/declarations/nozerosmuldivisors-int-iff-isaddtorsionfree--ab2380884a93df02de2f3a8c.md) | 97 | `result-track:ab2380884a93df02de2f3a8ccad6f114cec0eda151b6870700bc7f48b2152e48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
