# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualMuntzInventoryAttempt01.Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49f5223edcba29b86e8a0542928f7965c2250391",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49f5223edcba29b86e8a0542928f7965c2250391`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualGoodKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/positivesamples--b88925bd8a9c643751d9638a.md) | 23 | `declaration-track:b88925bd8a9c643751d9638ac4c57410ab56aa8631d976cf3097c8b57675eefb` |
| 2 | `def` | [actualMuntz](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/actualmuntz--7be78d2bcc532e06d6d65104.md) | 27 | `declaration-track:7be78d2bcc532e06d6d65104d221bacdb7f017a8f21be9f9aaa62a968b762ce9` |
| 3 | `def` | [upperInventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/upperinventory--88076f7f67c4a3737bdc5b59.md) | 31 | `declaration-track:88076f7f67c4a3737bdc5b597f44ada0c9e2c1510352a5e870c2b9ea29236f0e` |
| 4 | `theorem` | [actualLogSource_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/actuallogsource-zero-nonpos--afe95213a508bc5d0cce628d.md) | 33 | `result-track:afe95213a508bc5d0cce628d849b9d241fef9902062bf9e585a59991e6f1edd0` |
| 5 | `theorem` | [actualLogSource_zero_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/actuallogsource-zero-at-zero--06113e0a41d3316997ccc16c.md) | 37 | `result-track:06113e0a41d3316997ccc16ca914915f349bf7bf6484975366f27b9b8d51817e` |
| 6 | `theorem` | [sample_zero_above_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/sample-zero-above-inventory--f960be23713c2c15d7f74026.md) | 40 | `result-track:f960be23713c2c15d7f74026633fb8c4bc5a04bdb450464102087af632018eec` |
| 7 | `theorem` | [allSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/allsamples-summable--ecfd933a643d072e83270110.md) | 46 | `result-track:ecfd933a643d072e83270110ee596d1ea56cda108342f2255b7c0c2a173929dd` |
| 8 | `theorem` | [positiveSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/positivesamples-summable--ce19a27f8979a4dad69609e0.md) | 53 | `result-track:ce19a27f8979a4dad69609e017d8643d0cd3328d5fa4c8544eaa222568fb71c3` |
| 9 | `theorem` | [positiveSamples_eq_allSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/positivesamples-eq-allsamples--2259dcba9869327f65842214.md) | 57 | `result-track:2259dcba9869327f658422141d4806f4ecf9301b9cdd2785da7618f84728324c` |
| 10 | `theorem` | [allSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/allsamples-eq-closed-inventory--8520c406d2860e4f60f77dc9.md) | 62 | `result-track:8520c406d2860e4f60f77dc9e91a087d2f8270f5355fbaefce2b7fe7cc3aebc2` |
| 11 | `theorem` | [positiveSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/positivesamples-eq-closed-inventory--38a0d19a42c660882f79e458.md) | 70 | `result-track:38a0d19a42c660882f79e45879bf925c9bf5ae922edcfdb01007b0ef29d7a1d9` |
| 12 | `theorem` | [actualMuntz_eq_positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/actualmuntz-eq-positivesamples--c51b684fcfbe997e52d53a71.md) | 79 | `result-track:c51b684fcfbe997e52d53a7181b40c1b9238215f413ab184237adb557c061c4d` |
| 13 | `theorem` | [actualMuntz_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/actualmuntz-eq-closed-inventory--747f6970a360185a101bf841.md) | 83 | `result-track:747f6970a360185a101bf841a56b5aacffbf0943c06678593a3464cd4e6d1dfe` |
| 14 | `theorem` | [touching_sample_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/touching-sample-zero--f8747e1ae74edd7701fcc494.md) | 88 | `result-track:f8747e1ae74edd7701fcc4946138dbc6e4bdb8d503f22442e6ac0a67a9bd4230` |
| 15 | `theorem` | [positiveSamples_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/positivesamples-zero-nonpos--aeb20d3ec2f4ec1d41f076b0.md) | 93 | `result-track:aeb20d3ec2f4ec1d41f076b0922ee7159e4a6e9d2475af17b982539737220a52` |
| 16 | `theorem` | [positiveSamples_zero_above](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/positivesamples-zero-above--ddd99e58d6b09379cc27470f.md) | 100 | `result-track:ddd99e58d6b09379cc27470f94911442ae8b17a552b49c5a90fa43bd9029d171` |
| 17 | `theorem` | [actualMuntz_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/actualmuntz-zero-outside--6bb1932f9d2d2a61d4b95ad4.md) | 112 | `result-track:6bb1932f9d2d2a61d4b95ad45f9b718c9258e5980c293657a39509e348ffbe70` |
| 18 | `theorem` | [positiveSamples_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/positivesamples-measurable--f1d0c57a91719670e75abe24.md) | 119 | `result-track:f1d0c57a91719670e75abe24cf310ba88e52a171736a3de3a09c3a199ef35d38` |
| 19 | `theorem` | [actualMuntz_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt01/Variant7952c02cf1a386f3331f5b90ac43c4623083172cae499c133ae6928f16164d2d.lean/declarations/actualmuntz-measurable--b336339e6d53b48d5d7b8bbf.md) | 123 | `result-track:b336339e6d53b48d5d7b8bbf639567270791f26808a0bf3c755a0ac31b091fe3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
