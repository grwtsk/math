# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ac9c4e63533265fcd5f4289d6f1e34c1eebf431",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ac9c4e63533265fcd5f4289d6f1e34c1eebf431`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean/declarations/initialize--b1aceb9d13a1c2cf90a01d79.md) | 26 | `declaration-track:b1aceb9d13a1c2cf90a01d79ad0603b5ea69622e4d6462be0683dadbce5b2ec2` |
| 2 | `register_option` | [leancert.debug](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean/declarations/leancert-debug--3d903ed781fb7c121b20dc05.md) | 29 | `declaration-track:3d903ed781fb7c121b20dc0543712f80dcc423794fff8c24b4495d32fd375755` |
| 3 | `def` | [isLeanCertDebugEnabled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean/declarations/isleancertdebugenabled--0698496718157bae4da70295.md) | 35 | `declaration-track:0698496718157bae4da7029547b85d09b650113eabe74bb6445cf03ba77ed4ed` |
| 4 | `structure` | [IntervalInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean/declarations/intervalinfo--5c650924efa04c638f9fa828.md) | 39 | `declaration-track:5c650924efa04c638f9fa8284fd3698b9f6ed61705d4aa8d0586a0378f318b59` |
| 5 | `inductive` | [BoundGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean/declarations/boundgoal--ab6845f3633b284b97efcc8e.md) | 47 | `declaration-track:ab6845f3633b284b97efcc8e2b994901c8688c80f193bbca1713a4fb57473314` |
| 6 | `structure` | [VarIntervalInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean/declarations/varintervalinfo--3c1f8f227f62314807214b12.md) | 59 | `declaration-track:3c1f8f227f62314807214b129caa6fc038969764cdfbd9e2f14da6912d2b1f2b` |
| 7 | `inductive` | [MultivariateBoundGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean/declarations/multivariateboundgoal--cca13b4b647da1dc7045545d.md) | 77 | `declaration-track:cca13b4b647da1dc7045545def8808f16bbd10bd055c8426618c337a0d73e420` |
| 8 | `inductive` | [GlobalBoundGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean/declarations/globalboundgoal--c26902ce29ce6dd54fa7a5d2.md) | 85 | `declaration-track:c26902ce29ce6dd54fa7a5d2e757e73b00a8a6d276939873866424a408639d0f` |
| 9 | `inductive` | [RootGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantaab06d27ff92dec195adacc7527ab42824d2bef9e3cf90d6742fb246b3b81586.lean/declarations/rootgoal--fb9c86305f94030e7daf25a9.md) | 93 | `declaration-track:fb9c86305f94030e7daf25a96b0be01d066c845e960ef1e5930fa9c5bd89d8e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
