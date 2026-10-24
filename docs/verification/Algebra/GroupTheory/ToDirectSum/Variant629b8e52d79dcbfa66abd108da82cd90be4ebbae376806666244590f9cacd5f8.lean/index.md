# Verification target: GRWTSK.Algebra.GroupTheory.ToDirectSum.Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13cbf25098122fef127b9302815f39418cf9f302",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13cbf25098122fef127b9302815f39418cf9f302`.

Source path: `GRWTSK/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddMonoidAlgebra.toDirectSum](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/addmonoidalgebra-todirectsum--f4a4f1ddbe05d7eb26c39824.md) | 70 | `declaration-track:f4a4f1ddbe05d7eb26c398245ae9f7b350791339024b3b1b81ba4537feb88b0a` |
| 2 | `theorem` | [AddMonoidAlgebra.toDirectSum_single](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/addmonoidalgebra-todirectsum-single--8f3bd2ca77471c01ada1ba6f.md) | 79 | `result-track:8f3bd2ca77471c01ada1ba6f3dd2e21ecc962e9ff06c5263bbe223b6a0440a80` |
| 3 | `def` | [DirectSum.toAddMonoidAlgebra](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/directsum-toaddmonoidalgebra--9c1c681cc24a6217f63e5e86.md) | 87 | `declaration-track:9c1c681cc24a6217f63e5e8667426354b70a12842074ad3138e90718aef1ef01` |
| 4 | `theorem` | [DirectSum.toAddMonoidAlgebra_of](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/directsum-toaddmonoidalgebra-of--dbcdfb4442c07bf75e8ce77c.md) | 92 | `result-track:dbcdfb4442c07bf75e8ce77c1231d0965a6cf5d557e2ac83438627f731b0655f` |
| 5 | `theorem` | [AddMonoidAlgebra.toDirectSum_toAddMonoidAlgebra](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/addmonoidalgebra-todirectsum-toaddmonoidalgebra--a8889bd562ffad85a07f6418.md) | 98 | `result-track:a8889bd562ffad85a07f641849121d3908b924ad22177e01c17d0b6885e217dd` |
| 6 | `theorem` | [DirectSum.toAddMonoidAlgebra_toDirectSum](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/directsum-toaddmonoidalgebra-todirectsum--d7e2bc551c65be5d2109b206.md) | 104 | `result-track:d7e2bc551c65be5d2109b20651f2016f6efb750221fb3d44d918d128095f0fe4` |
| 7 | `theorem` | [toDirectSum_zero](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/todirectsum-zero--de2cca42d0a3f846b66c572d.md) | 121 | `result-track:de2cca42d0a3f846b66c572d2e95b177a92e141e1db0ea7a065946308968c563` |
| 8 | `theorem` | [toDirectSum_add](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/todirectsum-add--a240f5fbf875b47f004e5db0.md) | 126 | `result-track:a240f5fbf875b47f004e5db0e3edf067ab8c5f553b0a39037ea280917146bf49` |
| 9 | `theorem` | [toDirectSum_mul](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/todirectsum-mul--28e4c4912a6d26d1e3faf7bd.md) | 132 | `result-track:28e4c4912a6d26d1e3faf7bda20f1ae39d88f35c590396082599294dc044864b` |
| 10 | `theorem` | [toAddMonoidAlgebra_zero](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/toaddmonoidalgebra-zero--f41a04981bfd9ea29bfc2464.md) | 163 | `result-track:f41a04981bfd9ea29bfc24649acf73aefe88f3cf8c89d2c8b5e57317ea0d4dbc` |
| 11 | `theorem` | [toAddMonoidAlgebra_add](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/toaddmonoidalgebra-add--d9538d8ce1f78421e968b36c.md) | 169 | `result-track:d9538d8ce1f78421e968b36c2216e694062ae8571f303998fb8f829e52066e77` |
| 12 | `theorem` | [toAddMonoidAlgebra_mul](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/toaddmonoidalgebra-mul--865432a66dd172aefaec8936.md) | 175 | `result-track:865432a66dd172aefaec8936ae27805e76b53e0a8c17645a42eedd4d84980a9a` |
| 13 | `def` | [addMonoidAlgebraEquivDirectSum](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/addmonoidalgebraequivdirectsum--f07364d86a446fbb049e257d.md) | 196 | `declaration-track:f07364d86a446fbb049e257d4db54294fcecd73c43820d29daceaa6f8cde3195` |
| 14 | `def` | [addMonoidAlgebraAddEquivDirectSum](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/addmonoidalgebraaddequivdirectsum--1d304da0e379bff013de276c.md) | 205 | `declaration-track:1d304da0e379bff013de276c8b2e284ea6de5b5c59f59243e8443cd4bef1ce07` |
| 15 | `def` | [addMonoidAlgebraRingEquivDirectSum](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/addmonoidalgebraringequivdirectsum--72d9651df115039a08e6c64a.md) | 215 | `declaration-track:72d9651df115039a08e6c64a8d0c6ec30c0014444f687370df92ff7c6ae032ef` |
| 16 | `def` | [addMonoidAlgebraAlgEquivDirectSum](../../../../../mathematics/Algebra/GroupTheory/ToDirectSum/Variant629b8e52d79dcbfa66abd108da82cd90be4ebbae376806666244590f9cacd5f8.lean/declarations/addmonoidalgebraalgequivdirectsum--2d0d58dd4bb69d707f61aaca.md) | 225 | `declaration-track:2d0d58dd4bb69d707f61aaca8cf96429de0fe06906a925ce2af63ff066b717aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
