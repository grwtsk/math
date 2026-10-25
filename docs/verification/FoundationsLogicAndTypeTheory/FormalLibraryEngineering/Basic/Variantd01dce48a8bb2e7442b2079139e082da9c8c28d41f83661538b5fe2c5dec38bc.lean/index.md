# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fdc2ba023f1300d7d214334b2257cde2993d771",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fdc2ba023f1300d7d214334b2257cde2993d771`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Time.Zoned.Database.PosixTz` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Database](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean/declarations/database--42200a0f6f7b230943a8a9c0.md) | 23 | `declaration-track:42200a0f6f7b230943a8a9c0e7a375bfccff5a9fcb537d7ef11577e76f947725` |
| 2 | `def` | [convertWall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean/declarations/convertwall--4e3923ebb7c01588049a5e6b.md) | 41 | `declaration-track:4e3923ebb7c01588049a5e6bfc0ece073d50f8c7bf54c10c28ae733c41e00e4b` |
| 3 | `def` | [convertUt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean/declarations/convertut--80907e69bdadfa421317c658.md) | 48 | `declaration-track:80907e69bdadfa421317c6582f7905a7dd83558c0223001d18a28b6e07d033ef` |
| 4 | `def` | [convertLocalTimeType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean/declarations/convertlocaltimetype--46e51826593b05837f66396d.md) | 55 | `declaration-track:46e51826593b05837f66396d9b7512a64e7d4e73d48aca721ed5b29b308d5169` |
| 5 | `def` | [convertTransition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean/declarations/converttransition--45ca9ad40919423c22396a1c.md) | 74 | `declaration-track:45ca9ad40919423c22396a1c6907775b957d71f28d1f079100e81fdb8af36eea` |
| 6 | `def` | [convertTZifV1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean/declarations/converttzifv1--336ac1d67a4ebbf8473aec3c.md) | 83 | `declaration-track:336ac1d67a4ebbf8473aec3c2b4e14af515780743f9f6881ffa3fad6b66afea2` |
| 7 | `def` | [convertTZifV2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean/declarations/converttzifv2--8ef13bb905865f2bb52c2640.md) | 113 | `declaration-track:8ef13bb905865f2bb52c2640bbd561a09c51a8d6b42c99ee4d65ed37c0070c85` |
| 8 | `def` | [convertTZif](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd01dce48a8bb2e7442b2079139e082da9c8c28d41f83661538b5fe2c5dec38bc.lean/declarations/converttzif--4c9e3df8f5d17e27dfce811a.md) | 132 | `declaration-track:4c9e3df8f5d17e27dfce811aef2051006acc0b95c1e25f35708b075d31988b2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
