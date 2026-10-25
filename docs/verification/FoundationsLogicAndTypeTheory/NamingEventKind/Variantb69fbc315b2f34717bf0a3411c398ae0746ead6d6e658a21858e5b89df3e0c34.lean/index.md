# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.NamingEventKind.Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3374ba5b70175961f4c983a4e5de12d240f063ea",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3374ba5b70175961f4c983a4e5de12d240f063ea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.Evidence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Element.IdElements.SourceElementId` — import line 4; external provider; requires a separately pinned dependency.
- `Mathematics.Core.IdElements.Digest` — import line 5; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.EventElements.NameFeatureVectorSubtraction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NamingStateKind](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/declarations/namingstatekind--c06a6c411651ec1012974319.md) | 18 | `declaration-track:c06a6c411651ec10129743196c19dc92c3eaf87d67a07459499997b49955cbc2` |
| 2 | `inductive` | [NamingEventKind](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/declarations/namingeventkind--ad76cf7e8c5e3e447560c21c.md) | 31 | `declaration-track:ad76cf7e8c5e3e447560c21c47458873fac4c48d443ad7bb884f1c3a005f292b` |
| 3 | `inductive` | [NamingActor](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/declarations/namingactor--c86e008467ab0888e848e253.md) | 44 | `declaration-track:c86e008467ab0888e848e253c76f84d24dd4e01ddfc5e7046d3c7905364aec38` |
| 4 | `structure` | [NamingVertex](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/declarations/namingvertex--3060e5d83589b3b14d906bd3.md) | 51 | `declaration-track:3060e5d83589b3b14d906bd3b60cbf82b2a9ed71cd1fb3e897d768beba9e1f22` |
| 5 | `structure` | [NamingEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/declarations/namingedge--f33bee2b0944f3e3498f55d8.md) | 57 | `declaration-track:f33bee2b0944f3e3498f55d837b4acbce1bfbbedd90e3cb60af9c926e1f0bd21` |
| 6 | `structure` | [NamingSquare](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/declarations/namingsquare--02e49716f06fdfac3a7d40b8.md) | 66 | `declaration-track:02e49716f06fdfac3a7d40b8d673b316c2c2c3a688237ae454e205a122db93e7` |
| 7 | `def` | [NamingSquare.topEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/declarations/namingsquare-topedge--a670ef1b1c7e384cf3baa263.md) | 74 | `declaration-track:a670ef1b1c7e384cf3baa26362459a4a5d7bbb17c322793736ac9c948268fbe3` |
| 8 | `def` | [NamingSquare.rightEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/declarations/namingsquare-rightedge--e11d018a0b6e506cb6432b26.md) | 83 | `declaration-track:e11d018a0b6e506cb6432b2687fba73e26451a0dc1d69ed7117bdc94eb69aac4` |
| 9 | `def` | [NamingSquare.bottomEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/declarations/namingsquare-bottomedge--aff1adacbae70cccc0d3c264.md) | 92 | `declaration-track:aff1adacbae70cccc0d3c2647ad477b6c37e586e35dfbab9258e8534ef98418e` |
| 10 | `def` | [NamingSquare.leftEdge](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/declarations/namingsquare-leftedge--0ae940ec9271b38cd305ac72.md) | 101 | `declaration-track:0ae940ec9271b38cd305ac72251e7dacec3bc2fa65f301d6031b87853c02a94e` |
| 11 | `def` | [NamingSquare.Valid](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/declarations/namingsquare-valid--32cde66c6e95fe6c33a9d67e.md) | 110 | `declaration-track:32cde66c6e95fe6c33a9d67e89ecc8efdff286710254d1074e6652883424696a` |
| 12 | `structure` | [NamingEventComplex](../../../../mathematics/FoundationsLogicAndTypeTheory/NamingEventKind/Variantb69fbc315b2f34717bf0a3411c398ae0746ead6d6e658a21858e5b89df3e0c34.lean/declarations/namingeventcomplex--6cc80d1c8590cf7d7b889a5e.md) | 115 | `declaration-track:6cc80d1c8590cf7d7b889a5e456c3ce44df648bdc7da96d9b912a0e84893b098` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
