# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Verschiebung.Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "506471a39a55c12a21ed31fce386936be8dac4a9",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `506471a39a55c12a21ed31fce386936be8dac4a9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [verschiebungFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/verschiebungfun--f69629624918174355ed3909.md) | 38 | `declaration-track:f69629624918174355ed39093ed9f7e57dd51e819f2390eb42db06ab445460d5` |
| 2 | `theorem` | [verschiebungFun_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/verschiebungfun-coeff--f9ef1e1abc5b38d442399ac0.md) | 42 | `result-track:f9ef1e1abc5b38d442399ac05feaf4ca09a9c4ef249b7981bf92ac9398963c27` |
| 3 | `theorem` | [verschiebungFun_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/verschiebungfun-coeff-zero--df4c569672ffc604ef2de050.md) | 47 | `result-track:df4c569672ffc604ef2de050c6a44fc295da68d74ebcdc20c28bc98d77006bff` |
| 4 | `theorem` | [verschiebungFun_coeff_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/verschiebungfun-coeff-succ--4a8d16bcf21e37ef4a290f54.md) | 52 | `result-track:4a8d16bcf21e37ef4a290f54543d691a92044f23bfb7d110d701de03c2264d33` |
| 5 | `theorem` | [ghostComponent_zero_verschiebungFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/ghostcomponent-zero-verschiebungfun--29e77ce4f04f32e8a4d51c76.md) | 58 | `result-track:29e77ce4f04f32e8a4d51c768f33252e77291b7dd3dcaea08c830ae80c80ee0d` |
| 6 | `theorem` | [ghostComponent_verschiebungFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/ghostcomponent-verschiebungfun--56bff97ebc2b477021bd6b5b.md) | 65 | `result-track:56bff97ebc2b477021bd6b5bdfdf7d06ed0905cfc3291aad36b6d52bdea41415` |
| 7 | `def` | [verschiebungPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/verschiebungpoly--ebb22ebbf5b5ca8922c6b193.md) | 78 | `declaration-track:ebb22ebbf5b5ca8922c6b1938a39f02ed2fba6174d57773c5bfb86a366cc9ee9` |
| 8 | `theorem` | [verschiebungPoly_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/verschiebungpoly-zero--3a04c89f5dbfb9bafebff85d.md) | 83 | `result-track:3a04c89f5dbfb9bafebff85d07fb90fcbe2efb6857daba5c2d13dade0c05fc5b` |
| 9 | `theorem` | [aeval_verschiebung_poly'](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/aeval-verschiebung-poly--d3c43f733504affe2b752a10.md) | 87 | `result-track:d3c43f733504affe2b752a102182e3b02731826087f6f266863355023fcdd256` |
| 10 | `instance` | [verschiebungFun_isPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/verschiebungfun-ispoly--fb038c76dfa0c5d9055c67fc.md) | 101 | `declaration-track:fb038c76dfa0c5d9055c67fc3a8d58f34abf549b49f2625a3435dd1eb97643a8` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/example--9ff51f13f50624a79acca761.md) | 108 | `declaration-track:9ff51f13f50624a79acca761396e3f7b5baa2f3adcbe82dcafc2df4db42b479c` |
| 12 | `def` | [verschiebung](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/verschiebung--04cb2f11d3f3f4f42583369b.md) | 120 | `declaration-track:04cb2f11d3f3f4f42583369b9de25d3c1bb24b0567dfb84e770c306ac3ce70fc` |
| 13 | `theorem` | [verschiebung_isPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/verschiebung-ispoly--3e55e04554f75ca2895a9e73.md) | 134 | `result-track:3e55e04554f75ca2895a9e733630061f2d3cad2d768e101e8ca46c7507a42d46` |
| 14 | `theorem` | [map_verschiebung](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/map-verschiebung--567fa9ac46aca859d7ffb7b1.md) | 140 | `result-track:567fa9ac46aca859d7ffb7b1273eadd508e3118cd49b003d5d8396d1f2f541e9` |
| 15 | `theorem` | [ghostComponent_zero_verschiebung](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/ghostcomponent-zero-verschiebung--8015495fa92e472fc9b8d1ae.md) | 145 | `result-track:8015495fa92e472fc9b8d1aed5a6a4deffa4e92759c9d3658936a5f43aff2f1b` |
| 16 | `theorem` | [ghostComponent_verschiebung](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/ghostcomponent-verschiebung--8342c93b7b675d213728dab8.md) | 150 | `result-track:8342c93b7b675d213728dab8d50bca64d4e4d32168bb3d8441cc5109d137b6c7` |
| 17 | `theorem` | [verschiebung_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/verschiebung-coeff-zero--ca68956407f9466b374e92c5.md) | 156 | `result-track:ca68956407f9466b374e92c57fd8b481c9cc86dd8d17fdb28ea0ffbc611375f7` |
| 18 | `theorem` | [verschiebung_coeff_add_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/verschiebung-coeff-add-one--ecf200f4bc73ff0b8d2ab39f.md) | 161 | `result-track:ecf200f4bc73ff0b8d2ab39f812841bbf3076acea7675948fe562c88ce69e39b` |
| 19 | `theorem` | [verschiebung_coeff_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/verschiebung-coeff-succ--0ca66f0750a1036223bb0bae.md) | 167 | `result-track:0ca66f0750a1036223bb0baee342ebea01b7ed809c44971aca80aa2d4aa9be2a` |
| 20 | `theorem` | [aeval_verschiebungPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/aeval-verschiebungpoly--afcf83b4ae45fdfc6645ba4f.md) | 171 | `result-track:afcf83b4ae45fdfc6645ba4f5a5350593116a8bc03d66b518078f204546a53f5` |
| 21 | `theorem` | [bind₁_verschiebungPoly_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Verschiebung/Variant0ce4367b49420455a0fe2411d72f19e3b48f70975042684f4f4939155b0fed0a.lean/declarations/bind-verschiebungpoly-wittpolynomial--6542bfda847b41e02092e6db.md) | 177 | `result-track:6542bfda847b41e02092e6dbbfb1d2411ae996804466aa236ca71bab7734c810` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
