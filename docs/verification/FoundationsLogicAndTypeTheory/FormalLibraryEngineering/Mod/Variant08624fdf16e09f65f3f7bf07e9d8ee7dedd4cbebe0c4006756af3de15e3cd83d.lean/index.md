# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod.Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "463a9cd95eee65cc8fa315bc157ad0b197b8f115",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `463a9cd95eee65cc8fa315bc157ad0b197b8f115`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Dvd` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_lt_mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/declarations/mul-lt-mul-left--212290342b307efc83bb51b1.md) | 31 | `result-track:212290342b307efc83bb51b16fb704140e18d37a11538660d66152c228bd6b8b` |
| 2 | `theorem` | [mul_lt_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/declarations/mul-lt-mul-right--7a311645536a24aa93381864.md) | 40 | `result-track:7a311645536a24aa9338186463952473d73bc7198dfe068b06cdf9bbfe786ff3` |
| 3 | `theorem` | [lt_of_mul_lt_mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/declarations/lt-of-mul-lt-mul-left--3298e327d2899b9d0f08e5b2.md) | 43 | `result-track:3298e327d2899b9d0f08e5b2c887d1e3e830a7c4dd8178572fa324556f48c9c5` |
| 4 | `theorem` | [lt_of_mul_lt_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/declarations/lt-of-mul-lt-mul-right--00d0800e91cf946627a6c70f.md) | 46 | `result-track:00d0800e91cf946627a6c70f8a1e154340c38c0daeb13cb83b3b83b8cf6c1a42` |
| 5 | `theorem` | [div_lt_of_lt_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/declarations/div-lt-of-lt-mul--821937fdeb44f5e19228979c.md) | 50 | `result-track:821937fdeb44f5e19228979c11daf070cb516d1555a182abc079129fc520a645` |
| 6 | `theorem` | [mod_mul_right_div_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/declarations/mod-mul-right-div-self--7323f2109d22c66a624a4fb3.md) | 57 | `result-track:7323f2109d22c66a624a4fb3fd04e13c1d1ab2e5242fa8765de0f78ff33a16ee` |
| 7 | `theorem` | [mod_mul_left_div_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/declarations/mod-mul-left-div-self--ee8fbd4914ce5c5f3254c15c.md) | 64 | `result-track:ee8fbd4914ce5c5f3254c15cd3ecb0ef8b76784e3813461e0eaa7e54aa69db29` |
| 8 | `theorem` | [mod_mul_right_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/declarations/mod-mul-right-mod--caafd80a368c00b4a8ac07bd.md) | 68 | `result-track:caafd80a368c00b4a8ac07bdc0350b0648bfcace630a844a35619b68800fced9` |
| 9 | `theorem` | [mod_mul_left_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/declarations/mod-mul-left-mod--67890a7fc949679ddca2c698.md) | 72 | `result-track:67890a7fc949679ddca2c698628114a6b890587db9cae0902585f73762fadd02` |
| 10 | `theorem` | [mod_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/declarations/mod-mul--4723a139d5d8a994e9eb38f3.md) | 75 | `result-track:4723a139d5d8a994e9eb38f3748e11ff3cf1766e5f4bdee72188f6a89b1bb077` |
| 11 | `theorem` | [mod_pow_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/declarations/mod-pow-succ--eb7bbde1fac2527434b71e3a.md) | 79 | `result-track:eb7bbde1fac2527434b71e3a1580361ac0fcdb8aa3768ae658f0511a45fe9085` |
| 12 | `theorem` | [two_pow_mod_two_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/declarations/two-pow-mod-two-eq-zero--62e791d8719b9dbbbf19c3b6.md) | 83 | `result-track:62e791d8719b9dbbbf19c3b6f883bf24a64a9b875ec84f7ce0de2ae33ecf2966` |
| 13 | `theorem` | [two_pow_mod_two_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mod/Variant08624fdf16e09f65f3f7bf07e9d8ee7dedd4cbebe0c4006756af3de15e3cd83d.lean/declarations/two-pow-mod-two-eq-one--9f05ccce960f350189c8cbbd.md) | 86 | `result-track:9f05ccce960f350189c8cbbd362ff480c5b6d47d59017d5b62c0bc671b27e2c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
