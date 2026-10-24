# Verification target: GRWTSK.Algebra.LinearAlgebra.Factorization.Variantaff842bcdc188e9b805be88742ad544cef8a709a2b846a91975d458b7df8dd62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85e849d8616902ff2a0c88b697642965a8828316",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Factorization/Variantaff842bcdc188e9b805be88742ad544cef8a709a2b846a91975d458b7df8dd62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variantaff842bcdc188e9b805be88742ad544cef8a709a2b846a91975d458b7df8dd62.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variantaff842bcdc188e9b805be88742ad544cef8a709a2b846a91975d458b7df8dd62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85e849d8616902ff2a0c88b697642965a8828316`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Factorization/Variantaff842bcdc188e9b805be88742ad544cef8a709a2b846a91975d458b7df8dd62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Factorization/Variantaff842bcdc188e9b805be88742ad544cef8a709a2b846a91975d458b7df8dd62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.PrimeComposite` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.MorphismFactorization` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.ProofAdapter` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryLogicMatrixFactorizationDescriptor](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variantaff842bcdc188e9b805be88742ad544cef8a709a2b846a91975d458b7df8dd62.lean/declarations/binarylogicmatrixfactorizationdescriptor--b7a91324660830e634d66d93.md) | 15 | `declaration-track:b7a91324660830e634d66d9333101ad17390ffe8facc01d6740d1eeeb968c340` |
| 2 | `theorem` | [blmFactorizationDescriptor_sound](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variantaff842bcdc188e9b805be88742ad544cef8a709a2b846a91975d458b7df8dd62.lean/declarations/blmfactorizationdescriptor-sound--ad819fbde019075056cb4db1.md) | 22 | `result-track:ad819fbde019075056cb4db15ef940bd99cd2f7f598ec5263c63becd8ccf8f30` |
| 3 | `structure` | [FinalTheoremFamily](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variantaff842bcdc188e9b805be88742ad544cef8a709a2b846a91975d458b7df8dd62.lean/declarations/finaltheoremfamily--f1ddf1678648b6b8a847fff1.md) | 28 | `declaration-track:f1ddf1678648b6b8a847fff1fcbffdd914512c1172c5168c376ee65192e72591` |
| 4 | `theorem` | [finalTheoremFamily_sound](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variantaff842bcdc188e9b805be88742ad544cef8a709a2b846a91975d458b7df8dd62.lean/declarations/finaltheoremfamily-sound--e84b6f8aa685e36ad9687701.md) | 36 | `result-track:e84b6f8aa685e36ad96877017e526f4b3b647a44a20edf73e0676de41522b4e6` |
| 5 | `theorem` | [finalTheoremFamily_boundaries_visible](../../../../../mathematics/Algebra/LinearAlgebra/Factorization/Variantaff842bcdc188e9b805be88742ad544cef8a709a2b846a91975d458b7df8dd62.lean/declarations/finaltheoremfamily-boundaries-visible--ccad579401ee88830f21ffaa.md) | 41 | `result-track:ccad579401ee88830f21ffaa63470655217159cfd40c212099132133610e3e1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
