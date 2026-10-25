# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToIntInfo.Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54df56582b0335782f7c9991484398b8c107a619",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54df56582b0335782f7c9991484398b8c107a619`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.LitValues` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ToIntThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/declarations/tointthms--a3d6d2d298047c8f9f62ef65.md) | 26 | `declaration-track:a3d6d2d298047c8f9f62ef65b715fa5000934fb84d57fd8122e6113a3c6c227b` |
| 2 | `structure` | [SymbolicBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/declarations/symbolicbound--e2925682169fa415c8509892.md) | 57 | `declaration-track:e2925682169fa415c850989273755a8d02d44937c1eb2ee48b0657f78d10134f` |
| 3 | `def` | [SymbolicBound.isNumeral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/declarations/symbolicbound-isnumeral--6435ec0cfa87e177e08dd59b.md) | 63 | `declaration-track:6435ec0cfa87e177e08dd59b8d18c1da543406a3a255182792fee098a22338e6` |
| 4 | `inductive` | [SymbolicIntInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/declarations/symbolicintinterval--10560659d14c5c09cf3fe648.md) | 67 | `declaration-track:10560659d14c5c09cf3fe6486f87dc7406edced67325992f9bc87cab0e42f4ae` |
| 5 | `def` | [SymbolicIntInterval.isFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/declarations/symbolicintinterval-isfinite--e722930a15d7b3e91260c708.md) | 74 | `declaration-track:e722930a15d7b3e91260c70849720fd19961ebc8b4ed02dbe90bde09004b1d92` |
| 6 | `def` | [SymbolicIntInterval.lo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/declarations/symbolicintinterval-lo--8fdba0d860ca90121c0773d2.md) | 79 | `declaration-track:8fdba0d860ca90121c0773d28ea677513670232a52f472fd57c9fc6e9a528acc` |
| 7 | `def` | [SymbolicIntInterval.hi?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/declarations/symbolicintinterval-hi--e8af94e87a6451088de319be.md) | 84 | `declaration-track:e8af94e87a6451088de319be3256dfd6e2e69a159947eee3e65f6fdef2ccd2c9` |
| 8 | `def` | [SymbolicIntInterval.wrap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/declarations/symbolicintinterval-wrap--acf317ab6d6bdbfc8d2e4069.md) | 89 | `declaration-track:acf317ab6d6bdbfc8d2e40699bd0edd3217a628b7c36a0543062ac8b9b7fc876` |
| 9 | `structure` | [ToIntInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/declarations/tointinfo--3e51cbddd487afdd583f0cf7.md) | 107 | `declaration-track:3e51cbddd487afdd583f0cf70942ad0786ecb70e4d30f8822ce1befc58b3e68e` |
| 10 | `structure` | [ToIntTermInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToIntInfo/Variantfda782d19643cbbc418fcbf496d85bb7be114bca56637ec5ff179fc28f0da61a.lean/declarations/tointterminfo--81be7c3faba2653231028325.md) | 143 | `declaration-track:81be7c3faba26532310283253ebdfd68f0f9cacaa57ad44359513e6d706cce24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
