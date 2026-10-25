# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanConfig.Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "250774084427fa4e4771a437806516ac52df2ee0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `250774084427fa4e4771a437806516ac52df2ee0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.Name` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.String.Modify` — import line 20; external provider; requires a separately pinned dependency.
- `Lake.Config.Meta` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Backend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/backend--24bee70b3493f293154f090e.md) | 36 | `declaration-track:24bee70b3493f293154f090e18a41be43ee67ee0d52a043a41faf95c228ab916` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/instance--225c1f7f1fff565bf50a7954.md) | 53 | `declaration-track:225c1f7f1fff565bf50a7954aae9506a5c687767514c4e23b2e22b4fd26bfc4f` |
| 3 | `def` | [ofString?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/ofstring--7441a710171a350a923c82fb.md) | 56 | `declaration-track:7441a710171a350a923c82fbe64d8da1e15f6a222053c97046a7f7e2715adbe1` |
| 4 | `def` | [toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/tostring--b9a8eff787ebb36507f8c852.md) | 63 | `declaration-track:b9a8eff787ebb36507f8c852b69ab38e40959d35dd6aef7d21d16a239604dce9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/instance--9f58171d1cd0ccefee7909ba.md) | 69 | `declaration-track:9f58171d1cd0ccefee7909ba205adecd8476539a006e2b2e50e12a19abc8c9d5` |
| 6 | `def` | [orPreferLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/orpreferleft--f356844f05b9947334efb67a.md) | 78 | `declaration-track:f356844f05b9947334efb67a42a46af1650291692f6d157211545d7a89f33ac8` |
| 7 | `inductive` | [BuildType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/buildtype--267fd4111bbf154b168c8bc7.md) | 88 | `declaration-track:267fd4111bbf154b168c8bc7ed03c07367f846c2793b296dc2e321d19815f55e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/instance--bb9a4305880502bf5f7321b7.md) | 119 | `declaration-track:bb9a4305880502bf5f7321b77763a85ebb2bce9d1dbfac9ddd1a5db7b18e26b1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/instance--6e6e69d6d6598a1f85e3e98e.md) | 120 | `declaration-track:6e6e69d6d6598a1f85e3e98e90e013a373f6d5e25dbcbbae3b6ab4f46952e353` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/instance--b44dac5b927ef821cb4aaee2.md) | 121 | `declaration-track:b44dac5b927ef821cb4aaee20840a09b4f258a6f2ea4ce967de09d4aba46fd6a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/instance--dfb4654bfc79ed90ace4a247.md) | 122 | `declaration-track:dfb4654bfc79ed90ace4a247a805c561113ac31932d0ac435834934b3b017865` |
| 12 | `def` | [leancArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/leancargs--7ab7b781a5fdf9047d470583.md) | 125 | `declaration-track:7ab7b781a5fdf9047d470583e23e81bebb1d350ae7c994039a7b06c73b7576c8` |
| 13 | `def` | [ofString?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/ofstring--64139c272e4f8256224456e7.md) | 132 | `declaration-track:64139c272e4f8256224456e7293b3e259ed301052141f03fd5efade5ea9f839b` |
| 14 | `def` | [toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/tostring--9adb4650d5ebb0728fb113b2.md) | 140 | `declaration-track:9adb4650d5ebb0728fb113b2516de8a5ce395e395ec9674842af1f4d1514ef72` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/instance--a700394308e4b411daa04c26.md) | 147 | `declaration-track:a700394308e4b411daa04c26f281c0fa65ae63e60c68c991f48c9aa172c00e74` |
| 16 | `def` | [leanOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/leanoptions--e8661f254bd79857ba98969c.md) | 150 | `declaration-track:e8661f254bd79857ba98969c20e789f70e2c121c1ea9df6872c6a2cf04eb681b` |
| 17 | `def` | [leanArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanConfig/Variant41914f1d31fb8bc219bd4bb11d4326ad134bedf3c055eceef066e9cfafba4d39.lean/declarations/leanargs--71484b4bfe9b8e4ef1a17c2f.md) | 156 | `declaration-track:71484b4bfe9b8e4ef1a17c2f1af6c211457ae8ecb8627facc73ebe5d979fc6d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
