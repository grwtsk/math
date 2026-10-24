# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Observation.Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec78f6fe0b550766be1d67d5a30c75c011e17cf5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec78f6fe0b550766be1d67d5a30c75c011e17cf5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Recoverability` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PolynomialSource](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/polynomialsource--0fa9849f5649df5526d852fe.md) | 28 | `declaration-track:0fa9849f5649df5526d852fe3f8f0518088ad49bd8bd193f672fc355afd51e45` |
| 2 | `structure` | [RootPreservingCompilation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/rootpreservingcompilation--1e1ac44ef75ce4f1b897290f.md) | 40 | `declaration-track:1e1ac44ef75ce4f1b897290ffe6c335a5f207687a76bcf73eff372fbb5456f36` |
| 3 | `def` | [scaleCompilation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/scalecompilation--8220120820fd707a81d33017.md) | 49 | `declaration-track:8220120820fd707a81d3301746ad1156326f2ef4a05e7abe806071945f4ec326` |
| 4 | `theorem` | [scale_compilation_sound](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/scale-compilation-sound--4cd740e291da248f35fea846.md) | 56 | `result-track:4cd740e291da248f35fea8463d71d80d75cf763fb47c7eeb6887e23de2f6c609` |
| 5 | `theorem` | [square_preserves_integer_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/square-preserves-integer-roots--8e8e7ad9952739d03f5bd5fd.md) | 61 | `result-track:8e8e7ad9952739d03f5bd5fdef5bde4c2207d003e536dae0251a3bb5e0227234` |
| 6 | `theorem` | [positive_power_preserves_integer_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/positive-power-preserves-integer-roots--0a195dc5c0b311dbe1fbbaf6.md) | 66 | `result-track:0a195dc5c0b311dbe1fbbaf69fc122234cfd57a0ddb095b566eef89e6b358050` |
| 7 | `theorem` | [arbitrary_degree_inflation](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/arbitrary-degree-inflation--cda0fa29f1781129a1cd2c39.md) | 72 | `result-track:cda0fa29f1781129a1cd2c39655b9e6ab2709c9dbb646836c3a0f21b53b9a89d` |
| 8 | `theorem` | [root_equivalence_does_not_determine_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/root-equivalence-does-not-determine-degree--53e970ed1a6b8a91b5461582.md) | 81 | `result-track:53e970ed1a6b8a91b5461582f7e7f10ccbd03cff921411c464e7ce28dba55b9f` |
| 9 | `def` | [integerRootSet](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/integerrootset--6ab164448eee91801893f796.md) | 94 | `declaration-track:6ab164448eee91801893f7964f916306c4b634b0e84f70b56b113b7601e82c05` |
| 10 | `theorem` | [integerRootSet_square](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/integerrootset-square--e7cf26a53ca95ab5f8bdb781.md) | 97 | `result-track:e7cf26a53ca95ab5f8bdb7815f1cd76821c0d9f775370d7e441032d689210360` |
| 11 | `theorem` | [integerRootSet_X_eq_X_sq](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/integerrootset-x-eq-x-sq--f306465fc2bc635e91e886fa.md) | 102 | `result-track:f306465fc2bc635e91e886faa695375d49d840642e1ddeb92d9c18b1351131af` |
| 12 | `def` | [natDegreeRecoveryObstruction](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/natdegreerecoveryobstruction--de40ee09b013497407797427.md) | 108 | `declaration-track:de40ee09b01349740779742739f4f32049671576c4b49a890e7b60ea750debda` |
| 13 | `theorem` | [natDegree_not_recoverable_from_integerRootSet](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/natdegree-not-recoverable-from-integerrootset--8c09a42e4dfe7ba45b4ec950.md) | 116 | `result-track:8c09a42e4dfe7ba45b4ec95095e3ba11ee447149a25c04cad41a5927af596c01` |
| 14 | `theorem` | [integer_root_existence_recoverable](../../../../../mathematics/Algebra/CommutativeAlgebra/Observation/Variant51a8531f79274c84dbd29af643b86b17d1b638a0ad5dd7c7eed2de19474ce43c.lean/declarations/integer-root-existence-recoverable--372c373236b14dd95a31b0fb.md) | 121 | `result-track:372c373236b14dd95a31b0fb9ee185016f4277db17f9034043c06e8e7cbdd87f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
