# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Observation.Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1da6e5b572071a87715ba648789d948645ce7175",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1da6e5b572071a87715ba648789d948645ce7175`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Recoverability` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PolynomialSource](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/polynomialsource--e98da785a46c7b7c22294b7d.md) | 20 | `declaration-track:e98da785a46c7b7c22294b7d9a7733c61f52d3825a322b31719e0c5d30715724` |
| 2 | `structure` | [RootPreservingCompilation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/rootpreservingcompilation--5e8ea85855c690c66eb260c4.md) | 32 | `declaration-track:5e8ea85855c690c66eb260c4462761f7648251e4a8ae9686e0ac57a4c7418175` |
| 3 | `def` | [scaleCompilation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/scalecompilation--10118ef893977ada929f282e.md) | 41 | `declaration-track:10118ef893977ada929f282e3a8698e6c8180e9cb8de0a2b1b1bbc0cb0f06bc1` |
| 4 | `theorem` | [scale_compilation_sound](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/scale-compilation-sound--5ea2ec12a7a51643ddb30fbd.md) | 48 | `result-track:5ea2ec12a7a51643ddb30fbde3c5f680a0f8b5873ce1bf34ed54a52e94a41491` |
| 5 | `theorem` | [square_preserves_integer_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/square-preserves-integer-roots--cf4d5f7d1e0ffaf39d390aa3.md) | 53 | `result-track:cf4d5f7d1e0ffaf39d390aa372d04a06c9b594a48bdd5b478e199cd86fe06150` |
| 6 | `theorem` | [positive_power_preserves_integer_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/positive-power-preserves-integer-roots--7be4f5e737cdc866847a3e6a.md) | 58 | `result-track:7be4f5e737cdc866847a3e6a0535fd162c68cf47b9f66ba49639789631b8e0ee` |
| 7 | `theorem` | [arbitrary_degree_inflation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/arbitrary-degree-inflation--e7436c36b3fccc4a78ab5b0e.md) | 64 | `result-track:e7436c36b3fccc4a78ab5b0ec215beff8bc97cb6ebf288b4c34ea9adb7604ce5` |
| 8 | `theorem` | [root_equivalence_does_not_determine_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/root-equivalence-does-not-determine-degree--63098093fa3d43b1aea2f979.md) | 73 | `result-track:63098093fa3d43b1aea2f979879a0fd5ccf8fa7d15fbff5f3982afff8be48d97` |
| 9 | `def` | [integerRootSet](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/integerrootset--b716406bace63b19a6bbc7d9.md) | 86 | `declaration-track:b716406bace63b19a6bbc7d9243e6cd1f37889d5bd6a3cc5d3b9778a14ada8b5` |
| 10 | `theorem` | [integerRootSet_square](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/integerrootset-square--666afafc3b5f2b5540c71b54.md) | 89 | `result-track:666afafc3b5f2b5540c71b5444cb615e7819bc13e029b8012478fb1847450dc8` |
| 11 | `theorem` | [integerRootSet_X_eq_X_sq](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/integerrootset-x-eq-x-sq--e2a8196a1477f9fd9b969c17.md) | 94 | `result-track:e2a8196a1477f9fd9b969c17802fc6a7b63dea01b27f4ea0668d2ad861527c2c` |
| 12 | `def` | [natDegreeRecoveryObstruction](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/natdegreerecoveryobstruction--0994e1f637a8bd3d3666d243.md) | 100 | `declaration-track:0994e1f637a8bd3d3666d24398efce85fb8c5b8176fbeb916969aec94c9fac74` |
| 13 | `theorem` | [natDegree_not_recoverable_from_integerRootSet](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/natdegree-not-recoverable-from-integerrootset--87173b8d2654dc51f41ac6d7.md) | 108 | `result-track:87173b8d2654dc51f41ac6d7fa40033513c39e7b5f56a85e2fabf9e39917e4a1` |
| 14 | `theorem` | [integer_root_existence_recoverable](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa.lean/declarations/integer-root-existence-recoverable--221d2de8fcb3e67c9f4330db.md) | 113 | `result-track:221d2de8fcb3e67c9f4330db866dd7db5c43653ca2fc5859361b744c43837b36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
