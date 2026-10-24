# Verification target: GRWTSK.NumberTheory.Primes.TwinShiftTwoCRT

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b6287ffb38838f8d9b2e7eeadd2de64ad4542d1",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/TwinShiftTwoCRT.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b6287ffb38838f8d9b2e7eeadd2de64ad4542d1`.

Source path: `GRWTSK/NumberTheory/Primes/TwinShiftTwoCRT.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/TwinShiftTwoCRT.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.ConfigurationCounts`](../../../../mathematics/NumberTheory/Primes/ConfigurationCounts.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Int.CardIntervalMod` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.GCD` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TwinShiftTwoNaturalSolution](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/twinshifttwonaturalsolution--170581c11b286811cd9817c4.md) | 36 | `declaration-track:170581c11b286811cd9817c4505eac8145ffc717097ac57d07236bef216e8a69` |
| 2 | `def` | [TwinShiftTwoIntegerSolution](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/twinshifttwointegersolution--02f669b7eebbd1ffe5bdbc3f.md) | 40 | `declaration-track:02f669b7eebbd1ffe5bdbc3f813dafb2bdfc105e3bb3f8572d73a73b237c121d` |
| 3 | `def` | [TwinShiftTwoCompatible](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/twinshifttwocompatible--1eb1e7133f336ef4bd1a6483.md) | 44 | `declaration-track:1eb1e7133f336ef4bd1a64833e9b63298a010994d047e54afba842800e7b5ddc` |
| 4 | `theorem` | [naturalSolution_implies_compatible](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/naturalsolution-implies-compatible--4a3f5fa1ef2b8d933b6c844e.md) | 48 | `result-track:4a3f5fa1ef2b8d933b6c844e57d115eaa7a1dbbda856d18eca5a9ceaf5bc280a` |
| 5 | `theorem` | [integerSolution_implies_compatible](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/integersolution-implies-compatible--6e21e55c27c7dfa2809d8fca.md) | 60 | `result-track:6e21e55c27c7dfa2809d8fca760b12cd916571b0a680162248db443b5dcf4cce` |
| 6 | `theorem` | [compatible_implies_integerSolution](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/compatible-implies-integersolution--aadbc0e98bb10db8a89e2fd5.md) | 76 | `result-track:aadbc0e98bb10db8a89e2fd5347ff71ece3864b3eba6fa02f0b17d241a192585` |
| 7 | `theorem` | [integerSolution_to_naturalSolution](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/integersolution-to-naturalsolution--ba392bf7ab5a76450e38322d.md) | 102 | `result-track:ba392bf7ab5a76450e38322d3a95c3e52d8f20b33715d40dac5bf6682c122ff1` |
| 8 | `theorem` | [naturalSolution_iff_compatible](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/naturalsolution-iff-compatible--6f4dd5c9345de8e49b6507d6.md) | 160 | `result-track:6f4dd5c9345de8e49b6507d614ced41540716f245b3098059c6e82675389d13e` |
| 9 | `theorem` | [naturalSolutions_modEq_lcm](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/naturalsolutions-modeq-lcm--106a1a3bc100a3e250ae3487.md) | 171 | `result-track:106a1a3bc100a3e250ae348771ccef81527ef9e400e2b72e131412ea9623175d` |
| 10 | `theorem` | [naturalSolution_add_lcm_mul](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/naturalsolution-add-lcm-mul--13ed40827776a4add94e9d8a.md) | 186 | `result-track:13ed40827776a4add94e9d8aa3c784fcde276d58f32b90c712fdd8f462881c4e` |
| 11 | `def` | [twinShiftTwoResidue](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/twinshifttworesidue--24c5f21f9eb594a989ef3f25.md) | 200 | `declaration-track:24c5f21f9eb594a989ef3f2556dfe79ad94d7bc26caa51eb7456d4c3089c69cd` |
| 12 | `theorem` | [twinShiftTwoResidue_isSolution](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/twinshifttworesidue-issolution--306767a9a89332a7a50f9e61.md) | 207 | `result-track:306767a9a89332a7a50f9e61ac7bc04c3b03af57064f3e845b793a977333182e` |
| 13 | `theorem` | [twinShiftTwoResidue_lt_lcm](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/twinshifttworesidue-lt-lcm--aa2f7c3277d1143c7c0db217.md) | 226 | `result-track:aa2f7c3277d1143c7c0db2175f3a06599afc7a9912f12acbd0653fde6d9eca51` |
| 14 | `theorem` | [naturalSolution_iff_modEq_residue](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/naturalsolution-iff-modeq-residue--1a08d7f98235d12b8286f19b.md) | 235 | `result-track:1a08d7f98235d12b8286f19be92c8b395134f7c7337d74be24964f2ad7e77c82` |
| 15 | `def` | [twinShiftTwoResidueCount](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/twinshifttworesiduecount--752dfd95b793e2f1b71b7217.md) | 256 | `declaration-track:752dfd95b793e2f1b71b7217bd80e09540c40a648cbd71265643dce0769ac722` |
| 16 | `def` | [twinShiftTwoCutoffError](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/twinshifttwocutofferror--52fc3806cd43d51108d48dc1.md) | 262 | `declaration-track:52fc3806cd43d51108d48dc138eaf5914accce93ae6b78901bc51d4bfe8d0389` |
| 17 | `theorem` | [twinShiftTwoResidueCount_formula](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/twinshifttworesiduecount-formula--d52143bd086d43e351006a6b.md) | 269 | `result-track:d52143bd086d43e351006a6b46ddac9c90368d909747eb33b5e388bbb85e2967` |
| 18 | `theorem` | [twinShiftTwoCutoffError_le_one](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/twinshifttwocutofferror-le-one--19c43d9ad7396c2916a61911.md) | 290 | `result-track:19c43d9ad7396c2916a61911900cab10ef0c5c15133ecad36cd2f1a49fbc58a9` |
| 19 | `theorem` | [twinShiftTwoResidueCount_bounds](../../../../mathematics/NumberTheory/Primes/TwinShiftTwoCRT.lean/declarations/twinshifttworesiduecount-bounds--d9cfb064c88cf4c9c65239cf.md) | 299 | `result-track:d9cfb064c88cf4c9c65239cf7ebdb68684828108206b4a022ea15854673418b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
