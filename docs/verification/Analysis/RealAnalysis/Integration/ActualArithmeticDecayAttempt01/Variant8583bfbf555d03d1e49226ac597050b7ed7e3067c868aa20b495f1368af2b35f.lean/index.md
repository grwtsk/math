# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualArithmeticDecayAttempt01.Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b63c70e9d5c28a3e9f3af056ab58888ae42971a2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b63c70e9d5c28a3e9f3af056ab58888ae42971a2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MangoldtLaplaceIntegrability` — import line 6; external provider; requires a separately pinned dependency.
- `ActualPrimeIntercept` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RawMangoldtDecay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/declarations/rawmangoldtdecay--712423e1a5983155850bfc1b.md) | 27 | `declaration-track:712423e1a5983155850bfc1bf305e48a66fc53226d2a6f104516c0dab50b8e47` |
| 2 | `def` | [RawPrimeDecay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/declarations/rawprimedecay--b2568e506531b31382c29db0.md) | 31 | `declaration-track:b2568e506531b31382c29db039d351260b3306f1b69571cb5b3ba2ea5103bb33` |
| 3 | `theorem` | [inverse_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/declarations/inverse-square-integrable--f5a80eb63ec1698435647977.md) | 34 | `result-track:f5a80eb63ec1698435647977592280191fab9707e58d8bb3c02b1afd7f55153c` |
| 4 | `theorem` | [inverse_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/declarations/inverse-square-integral--ae3eb5a6f762a2165b34bf70.md) | 42 | `result-track:ae3eb5a6f762a2165b34bf70f8c07c6f9dd1167bef74e3b0f21fa45c24a202e0` |
| 5 | `theorem` | [actual_remainder_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/declarations/actual-remainder-measurable--7f89e0220227939f6ff2c3af.md) | 53 | `result-track:7f89e0220227939f6ff2c3afa32ee71825789eb98b1f6ded77c3ae241014c1ba` |
| 6 | `theorem` | [actual_remainder_integrable_near_origin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/declarations/actual-remainder-integrable-near-origin--ee0cf3c40ec28cd905b10056.md) | 57 | `result-track:ee0cf3c40ec28cd905b100565ec2d9dee5ab198161da6e9c50496cb21bc15199` |
| 7 | `theorem` | [actual_remainder_integrable_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/declarations/actual-remainder-integrable-tail--392b2482a98dfea98ecfa1fa.md) | 66 | `result-track:392b2482a98dfea98ecfa1fa47a11eede0568a890ef27ccfb0aef3611c7c5063` |
| 8 | `theorem` | [actual_remainder_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/declarations/actual-remainder-integrable--1ffa351688fd3b5624dc08b4.md) | 74 | `result-track:1ffa351688fd3b5624dc08b4bec24961c2b6b663f68d05d5e8976d43fab139f0` |
| 9 | `theorem` | [raw_prime_decay_of_mangoldt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/declarations/raw-prime-decay-of-mangoldt--d18ae94bb693caa78175c9ae.md) | 92 | `result-track:d18ae94bb693caa78175c9aee27a7ca15ea346ffca1ffa60b73b9ac9c47754f8` |
| 10 | `theorem` | [actual_prime_remainder_integrable_of_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/declarations/actual-prime-remainder-integrable-of-decay--ff92153c1e3d1db6643cecb3.md) | 108 | `result-track:ff92153c1e3d1db6643cecb3f9aeb6f68d44ef608e45e32c931f44a645ac565c` |
| 11 | `theorem` | [tail_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/declarations/tail-norm-bound--8009886308f740957b62df53.md) | 113 | `result-track:8009886308f740957b62df53ed2d6120a0699943dc27e4dab5e12e5eaf2534f4` |
| 12 | `theorem` | [actual_remainder_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/declarations/actual-remainder-tail-bound--50258b6416eeb0b004417f97.md) | 127 | `result-track:50258b6416eeb0b004417f978296add464dfc581cfc482b43a8082314aa3242e` |
| 13 | `theorem` | [actual_prime_remainder_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt01/Variant8583bfbf555d03d1e49226ac597050b7ed7e3067c868aa20b495f1368af2b35f.lean/declarations/actual-prime-remainder-tail-bound--d4ca5a589c582f4745141519.md) | 132 | `result-track:d4ca5a589c582f47451415196971439cba5c755658c3cb6c01343d991789b378` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
