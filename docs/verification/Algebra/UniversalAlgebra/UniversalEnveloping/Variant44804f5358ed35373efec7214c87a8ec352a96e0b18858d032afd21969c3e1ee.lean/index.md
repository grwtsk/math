# Verification target: GRWTSK.Algebra.UniversalAlgebra.UniversalEnveloping.Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "158f66dbad71aceaf8879ca11d90db9afb376412",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `158f66dbad71aceaf8879ca11d90db9afb376412`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.RingQuot` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/rel--1e2e94624c036add6ebd7670.md) | 51 | `declaration-track:1e2e94624c036add6ebd76705e25dc9060913adecdb1225fb4f414717d3084f6` |
| 2 | `def` | [UniversalEnvelopingAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/universalenvelopingalgebra--0c3f42fd5bbbdc75cef6c11c.md) | 57 | `declaration-track:0c3f42fd5bbbdc75cef6c11ccfea238e43c877b3092c76d08824a94ebec44c55` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/instinhabited--da63c959be748d439259f244.md) | 64 | `declaration-track:da63c959be748d439259f244326c89129167fec504e07bc48688cbd5127efa57` |
| 4 | `instance` | [instRing](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/instring--725023bc485b25b5270ab091.md) | 67 | `declaration-track:725023bc485b25b5270ab09177e693840ec2bff325aaa96bd61b697d3603aeff` |
| 5 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/instalgebra--4650ea10ac8a7a10791a20eb.md) | 70 | `declaration-track:4650ea10ac8a7a10791a20ebe6b7822858d9818ad5ab2af069a50e1d8765b043` |
| 6 | `def` | [mkAlgHom](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/mkalghom--1934da9c12b08e8deca39688.md) | 76 | `declaration-track:1934da9c12b08e8deca396880c90e3a608e5a16fb6fbec34c67feceb6c9c94c6` |
| 7 | `def` | [ι](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/anonymous--c5cf78ea66eaec74054d8455.md) | 83 | `declaration-track:c5cf78ea66eaec74054d84555cd1856f837a50a56c4ad4273284d3e03d3981b6` |
| 8 | `def` | [lift](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/lift--b076064d0486ac3103d642dd.md) | 94 | `declaration-track:b076064d0486ac3103d642dd60cf5032b3af6af9910a84068c24ab6e53fcfc90` |
| 9 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/lift-symm-apply--670fec164330212a2639362b.md) | 126 | `result-track:670fec164330212a2639362bdf214bb3e3a8ebd9f23f9677c4bc482ef5d9e2bf` |
| 10 | `theorem` | [ι_comp_lift](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/comp-lift--4e7782c2cd48281c42056981.md) | 131 | `result-track:4e7782c2cd48281c4205698124942e8e08b92d7d1aeb210474f084bdd1b24b74` |
| 11 | `theorem` | [lift_ι_apply](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/lift-apply--183d9e703fdbf66c2a30fecc.md) | 135 | `result-track:183d9e703fdbf66c2a30fecc7d2c394e6127288ec8d7a91b166341776015f04c` |
| 12 | `theorem` | [lift_ι_apply'](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/lift-apply--94acc89a53d90a3966ba3112.md) | 139 | `result-track:94acc89a53d90a3966ba3112b34aea5818e5b004727e830f53df95577620c314` |
| 13 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/lift-unique--b1536b2621862efdeffd3715.md) | 143 | `result-track:b1536b2621862efdeffd37150c28aa24c68268969aa0fd95e308698c596dd073` |
| 14 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/UniversalEnveloping/Variant44804f5358ed35373efec7214c87a8ec352a96e0b18858d032afd21969c3e1ee.lean/declarations/hom-ext--309b18e610df86f00e40556d.md) | 149 | `result-track:309b18e610df86f00e40556d871180122399573264a48987cf6572e2851c564a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
