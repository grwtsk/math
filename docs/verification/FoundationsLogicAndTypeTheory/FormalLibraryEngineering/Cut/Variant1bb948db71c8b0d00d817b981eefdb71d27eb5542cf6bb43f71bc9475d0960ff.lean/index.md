# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cut.Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "444c43ba44685bbfa5482b811c922f2e07b91f68",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `444c43ba44685bbfa5482b811c922f2e07b91f68`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.RCases` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCut](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff.lean/declarations/iscut--eabc9af0934f2350bd1ab118.md) | 20 | `declaration-track:eabc9af0934f2350bd1ab118441552be6445262da46e88d60e032ee9334a4a39` |
| 2 | `class` | [IsStrictCut](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff.lean/declarations/isstrictcut--ab34240fdbd2062bff2105f7.md) | 24 | `declaration-track:ab34240fdbd2062bff2105f74f2117f1518415895341fe7e5083583aae30dc29` |
| 3 | `theorem` | [IsStrictCut.gt_of_isGE_of_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff.lean/declarations/isstrictcut-gt-of-isge-of-gt--fafd7d61cdd9746c5ae42347.md) | 29 | `result-track:fafd7d61cdd9746c5ae423476b10076de428f016ad6e28a31c2ce3e0e29c4c67` |
| 4 | `theorem` | [IsStrictCut.lt_of_isLE_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff.lean/declarations/isstrictcut-lt-of-isle-of-lt--2b5713fb2dc7e1aabf54caff.md) | 36 | `result-track:2b5713fb2dc7e1aabf54caff58553e5f9adaf95e1a1fb09e7c62cbc117159df7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff.lean/declarations/instance--f12c923557657b58379a5a4d.md) | 43 | `declaration-track:f12c923557657b58379a5a4d19f38c193221d30a5915b22b18d9b42be3505806` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff.lean/declarations/instance--fb4066deaae64cef012477c4.md) | 49 | `declaration-track:fb4066deaae64cef012477c459eb164e872c5faf6fc6c28593e721aac69077b6` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff.lean/declarations/instance--d391435ceff0d44719b1a4e6.md) | 54 | `declaration-track:d391435ceff0d44719b1a4e62d7539f24ffb2912ee4158eee5054c84c7bb99c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
