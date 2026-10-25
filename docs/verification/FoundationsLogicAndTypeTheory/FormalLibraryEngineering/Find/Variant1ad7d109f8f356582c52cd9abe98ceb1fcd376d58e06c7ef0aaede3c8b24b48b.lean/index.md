# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Find.Variant1ad7d109f8f356582c52cd9abe98ceb1fcd376d58e06c7ef0aaede3c8b24b48b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca52a885495311fc830bff488f6e9210c6af444f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant1ad7d109f8f356582c52cd9abe98ceb1fcd376d58e06c7ef0aaede3c8b24b48b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant1ad7d109f8f356582c52cd9abe98ceb1fcd376d58e06c7ef0aaede3c8b24b48b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant1ad7d109f8f356582c52cd9abe98ceb1fcd376d58e06c7ef0aaede3c8b24b48b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca52a885495311fc830bff488f6e9210c6af444f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant1ad7d109f8f356582c52cd9abe98ceb1fcd376d58e06c7ef0aaede3c8b24b48b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant1ad7d109f8f356582c52cd9abe98ceb1fcd376d58e06c7ef0aaede3c8b24b48b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Util.Cache` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.HeadIndex` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matchHyps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant1ad7d109f8f356582c52cd9abe98ceb1fcd376d58e06c7ef0aaede3c8b24b48b.lean/declarations/matchhyps--cf33e9218deccb1f7bb5379b.md) | 42 | `declaration-track:cf33e9218deccb1f7bb5379b485f1461308e2e3dd2180988dc1e93c17e504da7` |
| 2 | `def` | [isBlackListed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant1ad7d109f8f356582c52cd9abe98ceb1fcd376d58e06c7ef0aaede3c8b24b48b.lean/declarations/isblacklisted--195dac6fafc0a691fb908618.md) | 54 | `declaration-track:195dac6fafc0a691fb908618a3b47eb479e410dadf0eb51d02bc14ef3100815a` |
| 3 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant1ad7d109f8f356582c52cd9abe98ceb1fcd376d58e06c7ef0aaede3c8b24b48b.lean/declarations/initialize--26c0659da8af7d16dbebb04e.md) | 62 | `declaration-track:26c0659da8af7d16dbebb04efce1fbee56106ddb59c7f281b0d775cd1d4d1af3` |
| 4 | `def` | [findType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant1ad7d109f8f356582c52cd9abe98ceb1fcd376d58e06c7ef0aaede3c8b24b48b.lean/declarations/findtype--12315170e7e4a142bf02c0d2.md) | 72 | `declaration-track:12315170e7e4a142bf02c0d23da25be58a8af8edfc0f33b51ccb0ee93fdbc52d` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant1ad7d109f8f356582c52cd9abe98ceb1fcd376d58e06c7ef0aaede3c8b24b48b.lean/declarations/elab--567a9916e0e4547ea67556af.md) | 108 | `declaration-track:567a9916e0e4547ea67556af7835054857bdf4df7de32bda6e38d2785792c7b5` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant1ad7d109f8f356582c52cd9abe98ceb1fcd376d58e06c7ef0aaede3c8b24b48b.lean/declarations/elab--0e8f24f5a96db1fde1243736.md) | 135 | `declaration-track:0e8f24f5a96db1fde1243736a6e249bd4fe6caa8a9878cba7f5d911063cfbd0b` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant1ad7d109f8f356582c52cd9abe98ceb1fcd376d58e06c7ef0aaede3c8b24b48b.lean/declarations/elab--2112fa845bddfd0b4f89ad55.md) | 142 | `declaration-track:2112fa845bddfd0b4f89ad5509cca2dff6907fbbe7dc75668b6a856c3610c236` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
