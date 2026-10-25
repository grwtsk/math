# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DifferentialComplex.Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "903afe0723bfe4c5ccb4a4f2f3108952808398a8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `903afe0723bfe4c5ccb4a4f2f3108952808398a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Hilbert.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteDifferentialComplex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/finitedifferentialcomplex--be96453229677bcefe8aab20.md) | 28 | `declaration-track:be96453229677bcefe8aab20414a6366ea3682562abd98d2e90507e449cc1de7` |
| 2 | `def` | [codifferential](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/codifferential--d1737327cb9564866b544e43.md) | 38 | `declaration-track:d1737327cb9564866b544e43c1b81f9d772b5b25fcbf8cdb8ee9f65e6c9bfe0e` |
| 3 | `def` | [hodgeDirac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/hodgedirac--91faf80b31192e38f05f6b19.md) | 43 | `declaration-track:91faf80b31192e38f05f6b19a820a994bdc36cd5e34562548debc1bb2d72527d` |
| 4 | `def` | [laplacian](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/laplacian--1b441d5be71095b831f2961e.md) | 48 | `declaration-track:1b441d5be71095b831f2961e32c1598f6c8a963a6dc68652a83cb0c8fc1ec1de` |
| 5 | `theorem` | [codifferential_square_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/codifferential-square-zero--2dbd9228b775e9924965bd88.md) | 54 | `result-track:2dbd9228b775e9924965bd88c2ab36aec475e9baf6a61fc3d481633e713018b4` |
| 6 | `theorem` | [hodgeDirac_isHermitian](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/hodgedirac-ishermitian--c80beaa31b0a02a2b00f0ae3.md) | 62 | `result-track:c80beaa31b0a02a2b00f0ae374313a852cd58321f2bfe611382158daaabc64e0` |
| 7 | `theorem` | [laplacian_isHermitian](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/laplacian-ishermitian--f28779032a379d7fbd5c393d.md) | 68 | `result-track:f28779032a379d7fbd5c393d0a338e2f30494bd35add62302aeb1ed2554b66d7` |
| 8 | `theorem` | [hodgeDirac_square](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/hodgedirac-square--7cd1144809273af2b32cb5ac.md) | 74 | `result-track:7cd1144809273af2b32cb5ac1d2bbf3344c3a3a382c421179b422e6f0866e0f9` |
| 9 | `def` | [hodgeDiracOperator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/hodgediracoperator--379af3a807d80275447e8c5d.md) | 91 | `declaration-track:379af3a807d80275447e8c5dc571145eb797516c8613945c085db6a224d7f34a` |
| 10 | `def` | [laplacianOperator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/laplacianoperator--dcb6159b1b434e68eb2827c5.md) | 96 | `declaration-track:dcb6159b1b434e68eb2827c54dec9d67ae2379620715fb89ffc149068039f048` |
| 11 | `theorem` | [hodgeDiracOperator_isSymmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/hodgediracoperator-issymmetric--3ea9bc9a23dd4955b7e088da.md) | 101 | `result-track:3ea9bc9a23dd4955b7e088da80fe28e4e40e6878061d6375dbe710f5a497b2c5` |
| 12 | `theorem` | [hodgeDiracOperator_adjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/hodgediracoperator-adjoint--8e1144805c5b9234d63c0311.md) | 108 | `result-track:8e1144805c5b9234d63c031145c0f306c18aae6e2d09abbfbf0bfcfcd7839112` |
| 13 | `theorem` | [hodgeDiracOperator_isSelfAdjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/hodgediracoperator-isselfadjoint--dd4c41d40499591d2c4812e3.md) | 117 | `result-track:dd4c41d40499591d2c4812e3225c308994e915a62c89a099022c03948f32d4f8` |
| 14 | `theorem` | [laplacianOperator_adjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant0767f1840c6152e40b337495f4e28ba8e47dd02136343c9b783a707497ad2297.lean/declarations/laplacianoperator-adjoint--3e1cec18ebfbddd0f5fdcc88.md) | 123 | `result-track:3e1cec18ebfbddd0f5fdcc88f07b70af061cadfec888d0d5a017e8e9602e0a8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
