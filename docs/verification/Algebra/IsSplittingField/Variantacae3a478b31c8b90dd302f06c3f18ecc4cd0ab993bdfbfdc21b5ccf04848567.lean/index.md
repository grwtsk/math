# Verification target: GRWTSK.Algebra.IsSplittingField.Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20b1490a6e38e4ffd727b52f6575fdc7ccc7b97c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20b1490a6e38e4ffd727b52f6575fdc7ccc7b97c`.

Source path: `GRWTSK/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Adjoin.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Adjoin.Algebra` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSplittingField](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/issplittingfield--13c2c64f986cd8704dda45e1.md) | 50 | `declaration-track:13c2c64f986cd8704dda45e1d720206c8900c0b18ba3cac78b69f8ce7e68e159` |
| 2 | `theorem` | [splits](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/splits--c9ed1808ea77b4a4287ea4a5.md) | 58 | `result-track:c9ed1808ea77b4a4287ea4a541223c9550eec63ca809a5b3731377c705c48dbc` |
| 3 | `theorem` | [adjoin_rootSet](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/adjoin-rootset--8e4f2a5ec124fcc33f926be3.md) | 61 | `result-track:8e4f2a5ec124fcc33f926be3a923f10c6f217473bcf9c0ff0340d81209c1a17b` |
| 4 | `instance` | [map](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/map--d9cca07ac2629d6b893a1014.md) | 69 | `declaration-track:d9cca07ac2629d6b893a1014b1cd0e980f354a4982a5c006764598ecc5cd2449` |
| 5 | `theorem` | [splits_iff](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/splits-iff--757dc941f1abcdad97e69f19.md) | 76 | `result-track:757dc941f1abcdad97e69f191ad120c3107d10b8e220fff19b6213025b9a1079` |
| 6 | `theorem` | [mul](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/mul--72024fd75eeb6ec3aae842fc.md) | 92 | `result-track:72024fd75eeb6ec3aae842fc7d12c6708ad0f6f665f8a3d7c2e3f6724f3e7969` |
| 7 | `def` | [lift](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/lift--b3ad3da86e017534847d8218.md) | 110 | `declaration-track:b3ad3da86e017534847d821847234a9b88f9f5eec9393a42319fe184c753dff4` |
| 8 | `theorem` | [finiteDimensional](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/finitedimensional--7047ed9a04303d42f2500c47.md) | 125 | `result-track:7047ed9a04303d42f2500c47a3041baf55f0d96e2f7c23ee5a956b94e88eb1bf` |
| 9 | `theorem` | [of_algEquiv](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/of-algequiv--9460196d3f888807d91a4080.md) | 132 | `result-track:9460196d3f888807d91a4080b143a01a064fc5497ff9145e065a0ba94ffe64e9` |
| 10 | `theorem` | [adjoin_rootSet_eq_range](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/adjoin-rootset-eq-range--c36b5f07d623dbeaf6c8c434.md) | 140 | `result-track:c36b5f07d623dbeaf6c8c4340f02ed276857b27bee902f12962185a3884adbd5` |
| 11 | `theorem` | [IntermediateField.splits_of_splits](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/intermediatefield-splits-of-splits--0f28dd197f9986178bec660a.md) | 152 | `result-track:0f28dd197f9986178bec660aa0588a672e69b0b25916ef116a22f0b67cdc10b4` |
| 12 | `theorem` | [IntermediateField.splits_iff_mem](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/intermediatefield-splits-iff-mem--096f850a3afc983fad6069df.md) | 158 | `result-track:096f850a3afc983fad6069df3572f69ffea38a3d9b10f0d0ed9b7237bd8cea18` |
| 13 | `theorem` | [IsIntegral.mem_intermediateField_of_minpoly_splits](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/isintegral-mem-intermediatefield-of-minpoly-splits--6256750c2902bec973299b34.md) | 165 | `result-track:6256750c2902bec973299b34fb96df04e700a049346996df73e8d5f4183ae9c3` |
| 14 | `theorem` | [isSplittingField_iff_intermediateField](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/issplittingfield-iff-intermediatefield--2f2d073c60e455b8d8229eca.md) | 170 | `result-track:2f2d073c60e455b8d8229eca5492c22011917920962c71392abbb01a98f5a322` |
| 15 | `theorem` | [IntermediateField.isSplittingField_iff](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/intermediatefield-issplittingfield-iff--28e628b658526050e0cb2645.md) | 177 | `result-track:28e628b658526050e0cb264571044f4b80c5cbb7680053a137ad61e77759b1a6` |
| 16 | `theorem` | [IntermediateField.adjoin_rootSet_isSplittingField](../../../../mathematics/Algebra/IsSplittingField/Variantacae3a478b31c8b90dd302f06c3f18ecc4cd0ab993bdfbfdc21b5ccf04848567.lean/declarations/intermediatefield-adjoin-rootset-issplittingfield--9b7ea8fe623e261368bc9406.md) | 186 | `result-track:9b7ea8fe623e261368bc940632485a48762cae553301d305c90ae8060bbd6006` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
