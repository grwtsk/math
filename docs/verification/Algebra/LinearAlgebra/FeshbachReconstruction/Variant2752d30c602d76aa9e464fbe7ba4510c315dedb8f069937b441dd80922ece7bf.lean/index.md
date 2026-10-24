# Verification target: GRWTSK.Algebra.LinearAlgebra.FeshbachReconstruction.Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "417c38f15b08001a0b820b985bea7e4caf91627f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `417c38f15b08001a0b820b985bea7e4caf91627f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ExplicitSchurMatrix` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.PhaseIIResidualQuotient` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SchurComplement` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schur](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/schur--e363f4b49ff143ab68c15182.md) | 31 | `declaration-track:e363f4b49ff143ab68c151825a7254c4a388eeccb19bdecafc7b907c5681bfa9` |
| 2 | `def` | [blockMap](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/blockmap--e087f231ed189ba2f01da17e.md) | 36 | `declaration-track:e087f231ed189ba2f01da17e9e07e35d5222847ddee8d3e30d82fe478e747df0` |
| 3 | `theorem` | [blockMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/blockmap-apply--a66dab2b8951220e27a43f11.md) | 45 | `result-track:a66dab2b8951220e27a43f11c8b36b311450c2ee5f3909fbaa9e46c623c2cde5` |
| 4 | `theorem` | [blockMap_eq_fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/blockmap-eq-fromblocks--4fb225f1c44ae5c587f4b9c3.md) | 52 | `result-track:4fb225f1c44ae5c587f4b9c3c3513a26025226cece5c2905f7016a6e41b95fcf` |
| 5 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/lift--6c7e6c6cc9198f5c8b42cbd6.md) | 60 | `declaration-track:6c7e6c6cc9198f5c8b42cbd6fe8f6866fe258dac0eec02ce7600bac4f800e180` |
| 6 | `theorem` | [lift_apply](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/lift-apply--c456d2a19cd00c2aef44c1e0.md) | 65 | `result-track:c456d2a19cd00c2aef44c1e023025ababfa7319d3cfa9e4cbf8fb1156749536c` |
| 7 | `def` | [restrict](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/restrict--ca86e5708f8dcfae49d2e21f.md) | 69 | `declaration-track:ca86e5708f8dcfae49d2e21f47692727bd33109d36065e483cce0d04523cdd36` |
| 8 | `theorem` | [restrict_lift](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/restrict-lift--abf155c0a5c3c8ccdc36c8a3.md) | 73 | `result-track:abf155c0a5c3c8ccdc36c8a3682971a62bc7d70e1bd82f0783ff857b4e415715` |
| 9 | `theorem` | [restrict_comp_lift](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/restrict-comp-lift--5ebaac9e1e05a1a9c7694399.md) | 77 | `result-track:5ebaac9e1e05a1a9c7694399acb172cbc2784320f8874cf0d1e324ff65f1ba3b` |
| 10 | `def` | [project](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/project--67c9ee27b52105c5a1191a23.md) | 83 | `declaration-track:67c9ee27b52105c5a1191a23b62abee48d120a55900f260f1079575d4c155349` |
| 11 | `theorem` | [project_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/project-idempotent--4dc427b62f50060a009882a3.md) | 88 | `result-track:4dc427b62f50060a009882a3aab661544dc2cc933e5ca4f90428aafa6a28ac1f` |
| 12 | `theorem` | [lower_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/lower-eq-zero-iff--66a79c4f15919a0cd29a4bf7.md) | 92 | `result-track:66a79c4f15919a0cd29a4bf7495971dcedcb8e2b0cc77bf94b25c203d233bfcb` |
| 13 | `theorem` | [blockMap_lift](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/blockmap-lift--156168fe131faff7b5a3696e.md) | 104 | `result-track:156168fe131faff7b5a3696e570841ace599dff7b8828ee87c533e7096ab6219` |
| 14 | `theorem` | [blockMap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/blockmap-eq-zero-iff--dd8717d42c35d955a85697d1.md) | 115 | `result-track:dd8717d42c35d955a85697d103742826891af88008798766bc420390b7935622` |
| 15 | `theorem` | [kernel_eq_lift](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/kernel-eq-lift--32e4b1ae53b1e4214b61204a.md) | 133 | `result-track:32e4b1ae53b1e4214b61204a3fcfaaade7a011abae2f772303306fa457260331` |
| 16 | `def` | [kernelEquiv](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/kernelequiv--b1ffe839cb3f99c9d9718a14.md) | 147 | `declaration-track:b1ffe839cb3f99c9d9718a148e55df33ce56f82ca595375ee636926a713e25bb` |
| 17 | `def` | [provenanceInvertible](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/provenanceinvertible--d11a9ff4d288bcffae1612b2.md) | 183 | `declaration-track:d11a9ff4d288bcffae1612b2da79a75488e0447f59b47cf110a8047b3bf25a87` |
| 18 | `theorem` | [feshbachLift_eq_phaseIIResidualization](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/feshbachlift-eq-phaseiiresidualization--45e9210ff1c668838b24fc5b.md) | 190 | `result-track:45e9210ff1c668838b24fc5bfd1814b915b2263462b145a5aa298fe51bd6455f` |
| 19 | `theorem` | [feshbachSchur_eq_schurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf.lean/declarations/feshbachschur-eq-schurmatrix--b8bdb9a3f867563ee27f6b0f.md) | 201 | `result-track:b8bdb9a3f867563ee27f6b0fa62d84901f8dbb756957d5d94a6443dca4966087` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
