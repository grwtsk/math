# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3ef1ae265b5b0200aee5697184d2add7556f4b5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3ef1ae265b5b0200aee5697184d2add7556f4b5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Sym` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sym.Sym2.Finsupp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_finsuppSum'](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/declarations/map-finsuppsum--ccee9123ef3cfeff8d98a847.md) | 37 | `result-track:ccee9123ef3cfeff8d98a847dcce9e1f712b5a346a765e79230bbdcabcbdad67` |
| 2 | `theorem` | [apply_linearCombination'](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/declarations/apply-linearcombination--58bfd1c6027035f0d68de3a4.md) | 42 | `result-track:58bfd1c6027035f0d68de3a49b379d180e4a6e3495b53a126ac43449d41dcaac` |
| 3 | `theorem` | [sum_polar_sub_repr_sq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/declarations/sum-polar-sub-repr-sq--dd7c14a1c0773ca92b7ba45e.md) | 51 | `result-track:dd7c14a1c0773ca92b7ba45e7cfc1e458c6d3795eeccfa5c81d8de343927f2ba` |
| 4 | `theorem` | [map_finsuppSum](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/declarations/map-finsuppsum--502dc062d26d9e2249a090c7.md) | 59 | `result-track:502dc062d26d9e2249a090c7a226f4cebfdcf37e4da5a90161d9d36dc78d186f` |
| 5 | `theorem` | [apply_linearCombination](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/declarations/apply-linearcombination--5269921d5708e73c798ad9af.md) | 64 | `result-track:5269921d5708e73c798ad9af9b6ef18fa91f74165c65fd433113b867e6c33e22` |
| 6 | `theorem` | [sum_repr_sq_add_sum_repr_mul_polar](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/declarations/sum-repr-sq-add-sum-repr-mul-polar--7ec62a8365db64b9097480aa.md) | 72 | `result-track:7ec62a8365db64b9097480aa58d63201bff1f85e50f00c591d28bbdd8db539e1` |
| 7 | `def` | [toBilin](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/declarations/tobilin--0c02dfe63b749ece8cc99188.md) | 87 | `declaration-track:0c02dfe63b749ece8cc9918801fe4968bb4b12089a87bf4a63360a71e4136d22` |
| 8 | `theorem` | [toBilin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/declarations/tobilin-apply--c8f1561136f3f7f5d1a70fa6.md) | 92 | `result-track:c8f1561136f3f7f5d1a70fa67fdd15c1dbab3e45c7088bc32bda040f466437a0` |
| 9 | `theorem` | [toQuadraticMap_toBilin](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/declarations/toquadraticmap-tobilin--3bb27394d0aebc011a1b0931.md) | 97 | `result-track:3bb27394d0aebc011a1b0931e32017e40e0ed4d6e216c53c7078b79cf7c8fc01` |
| 10 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.MapFinsuppSumPrime.Variant6149f6c308a6e434ca73b523e1921a6619ce39e0e4cd9c9f9eea4a6cea3f8539.LinearMap.BilinMap.toQuadraticMap_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/declarations/root-grwtsk-algebra-linearalgebra-mapfinsuppsumprime-variant6149f6c308a6--265f4f7aa9623f3408b9ca32.md) | 118 | `result-track:265f4f7aa9623f3408b9ca32401b1a4d12ba99215bea3661ed80371ce232b533` |
| 11 | `lemma` | [add_toBilin](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/declarations/add-tobilin--669186f374665dd612d9f010.md) | 126 | `result-track:669186f374665dd612d9f010078c7a1391f084c42a14ae49d035e8b471e88683` |
| 12 | `lemma` | [smul_toBilin](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/declarations/smul-tobilin--46159320b11e654141d22896.md) | 138 | `result-track:46159320b11e654141d2289624dc42a307074ac05621f7e33cb91747a0c91fb8` |
| 13 | `def` | [toBilinHom](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant892ad9e1f0811c8eb56a012645c367a73d5af111f2b79b7c0b8abad2842745ec.lean/declarations/tobilinhom--c37b9a10f49f730327ca1369.md) | 148 | `declaration-track:c37b9a10f49f730327ca1369469a6daba5df03dfce7feba602b80283891d6530` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
