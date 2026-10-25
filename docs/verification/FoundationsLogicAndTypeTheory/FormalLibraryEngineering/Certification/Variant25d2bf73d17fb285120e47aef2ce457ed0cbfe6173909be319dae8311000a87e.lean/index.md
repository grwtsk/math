# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certification.Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5569bb1246bfc57c78e465776a3e7241b85d3637",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5569bb1246bfc57c78e465776a3e7241b85d3637`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertificateFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/certificatefamily--7604288438c43adca0db0623.md) | 36 | `declaration-track:7604288438c43adca0db0623b1b9f1a6faba37e4e574663efaef7adf44694616` |
| 2 | `abbrev` | [index](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/index--4b5e1caed687a891a987bb9f.md) | 47 | `declaration-track:4b5e1caed687a891a987bb9f1cfa77a02b499edb79d3c3d6202886c8183d732c` |
| 3 | `def` | [Equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/equivalent--f2c175d645e7ce997a5630fd.md) | 51 | `declaration-track:f2c175d645e7ce997a5630fd6b5429eeab5d16bf7501ade46d8e0aabbfbac967` |
| 4 | `theorem` | [equivalent_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/equivalent-refl--732f2b66ee04474a66d84ba1.md) | 54 | `result-track:732f2b66ee04474a66d84ba1b4f67f9d97a1a654f3783e618594690bfe40c925` |
| 5 | `theorem` | [equivalent_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/equivalent-symm--21ed1c5107fb6c30debc7ced.md) | 58 | `result-track:21ed1c5107fb6c30debc7cedbcdd0d4946a89522b05847fc0da2fd34ee4160a2` |
| 6 | `theorem` | [equivalent_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/equivalent-trans--83437ab401a1689d79eba11e.md) | 63 | `result-track:83437ab401a1689d79eba11e57bd46240c1ef1bb8e1db7b946e378f0a6bcecc2` |
| 7 | `structure` | [SufficientRepresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/sufficientrepresentation--4771a02420c225846f431d5d.md) | 73 | `declaration-track:4771a02420c225846f431d5d928f1d8535bb80efa5d455764e65464c431a38d3` |
| 8 | `def` | [FactorsThrough](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/factorsthrough--28394ccb4f306c284318ac97.md) | 89 | `declaration-track:28394ccb4f306c284318ac97c9f0cc25ef502152023883a9bd57c7473fa43e7d` |
| 9 | `def` | [IsMinimal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/isminimal--c4104dbdf9c7a322ac1eeb3d.md) | 97 | `declaration-track:c4104dbdf9c7a322ac1eeb3d7b68a4173e6bc5e229d3a2759b17fa074dd1f370` |
| 10 | `theorem` | [equivalent_of_compress_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/equivalent-of-compress-eq--3a24bcff2a051e2abbede8e2.md) | 100 | `result-track:3a24bcff2a051e2abbede8e2a6ddcef129024203d56b58fbe475031ccff7c2cc` |
| 11 | `theorem` | [factor_of_minimal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/factor-of-minimal--c9357e635b3dc9356a650861.md) | 108 | `result-track:c9357e635b3dc9356a65086151baf8c907d069badc22733d686c8956304abcac` |
| 12 | `structure` | [StructuralQuine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/structuralquine--39d8c5096359e5bf5c94eb35.md) | 119 | `declaration-track:39d8c5096359e5bf5c94eb3514d4ce675e08bf6f6242a035318f5c980c69ad4e` |
| 13 | `def` | [project](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/project--d62872c9324ac73e09b68fe5.md) | 135 | `declaration-track:d62872c9324ac73e09b68fe5fccbbc9760b14ce2f9d285746a40a160203f71e7` |
| 14 | `theorem` | [project_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/project-idempotent--295f20ef5e8036cb656efffa.md) | 138 | `result-track:295f20ef5e8036cb656efffa10e778191e234dfc6c86f9a03a07b1cb38e22a90` |
| 15 | `theorem` | [project_certificate_equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/project-certificate-equivalent--87cfaae3bd9e271850e5afa8.md) | 144 | `result-track:87cfaae3bd9e271850e5afa8eca5e2b1784e08ae0fabb4ba2c2c37f1fc6eb6fa` |
| 16 | `theorem` | [quotient_factors_through](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certification/Variant25d2bf73d17fb285120e47aef2ce457ed0cbfe6173909be319dae8311000a87e.lean/declarations/quotient-factors-through--e67ad3a4506dd7bd7fc9dfc5.md) | 148 | `result-track:e67ad3a4506dd7bd7fc9dfc566e3611170ee64517181478b9fe06bee10f4c564` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
