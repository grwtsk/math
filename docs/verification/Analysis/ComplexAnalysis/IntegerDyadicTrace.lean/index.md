# Verification target: GRWTSK.Analysis.Complex.IntegerDyadicTrace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a378784662cc5a7e93ae72dc96d99407338c42ad",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/IntegerDyadicTrace.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a378784662cc5a7e93ae72dc96d99407338c42ad`.

Source path: `GRWTSK/Analysis/Complex/IntegerDyadicTrace.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/IntegerDyadicTrace.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalRoundedArithmetic`](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Omega` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GridState](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/gridstate--b4c44caef83715947206dcb9.md) | 27 | `declaration-track:b4c44caef83715947206dcb9493fdf9a39fa9739e068802e56d817159f1f1bd4` |
| 2 | `def` | [scaleZ](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/scalez--f1d3a454c2f014af464f9cf4.md) | 33 | `declaration-track:f1d3a454c2f014af464f9cf4f8b529eb2f383349a89fa8aec57ae1815ffa1076` |
| 3 | `def` | [decode](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/decode--bd4abee0722acf97ca5ad8e1.md) | 35 | `declaration-track:bd4abee0722acf97ca5ad8e11c7f6ba02e09000081b44de6df0e5f79cd7ab828` |
| 4 | `def` | [FloorWindow](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/floorwindow--a3fa456ffc29ca2613abb270.md) | 39 | `declaration-track:a3fa456ffc29ca2613abb2708def52c3f54d77372c5118f2dec229d884beee26` |
| 5 | `def` | [CeilingWindow](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/ceilingwindow--012cf8b7fcc395896a1016ab.md) | 40 | `declaration-track:012cf8b7fcc395896a1016ab7cfddeb178b0f548af6dec2812ee4c1bc2b91da3` |
| 6 | `theorem` | [cast_scaleZ](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/cast-scalez--c34335bc84bac18f29175d2c.md) | 42 | `result-track:c34335bc84bac18f29175d2c17f40aa08c94e5298e00026f87173807bb6f9355` |
| 7 | `theorem` | [scaleZ_pos](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/scalez-pos--02569d77e452c55feea5e562.md) | 45 | `result-track:02569d77e452c55feea5e5629185498cbf65f5112a81157c2e5cc075b832568a` |
| 8 | `theorem` | [scaleQ_pos](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/scaleq-pos--06c52afa8fe8a911f932f472.md) | 47 | `result-track:06c52afa8fe8a911f932f472b43501ff14d46d64d0eefa16019b1318dd0cd5fe` |
| 9 | `theorem` | [floor_div_of_window](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/floor-div-of-window--f7fd3b8b7e2495a8799616ec.md) | 50 | `result-track:f7fd3b8b7e2495a8799616ecdb9512cc088850ccdb7fca4b633d401a74883967` |
| 10 | `theorem` | [neg_floor_div_of_window](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/neg-floor-div-of-window--279c71fe885bbdc354466d9d.md) | 63 | `result-track:279c71fe885bbdc354466d9daa0e33d9381c0ca34f236c5e1123564d826f1d02` |
| 11 | `def` | [SeedValid](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/seedvalid--6419f603642af8751f65fdbe.md) | 70 | `declaration-track:6419f603642af8751f65fdbe3bfa1f82ea4c16e03a18f3b7e4464e78363cd700` |
| 12 | `def` | [realProduct](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/realproduct--996b52bf07d7e9e2362fc4bb.md) | 79 | `declaration-track:996b52bf07d7e9e2362fc4bbce579159cb63ed227a2516fa05376712fcb05cea` |
| 13 | `def` | [imagProduct](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/imagproduct--4a6a76c30867d573ee075c9a.md) | 80 | `declaration-track:4a6a76c30867d573ee075c9a29645e94dfa127b80f55f0b563903fabde7a54f9` |
| 14 | `def` | [errorProduct](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/errorproduct--e9d852e7b4a69ac3334ddfcc.md) | 82 | `declaration-track:e9d852e7b4a69ac3334ddfcce0141bf4c0038e174a980875e53b13940f3a6ee2` |
| 15 | `def` | [StepValid](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/stepvalid--0d2102ebe0a61ceb8b289c47.md) | 86 | `declaration-track:0d2102ebe0a61ceb8b289c472b15a14ced0b00692e07b55a8e986d7e6b003578` |
| 16 | `theorem` | [seed_refines](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/seed-refines--da72e1f73fde0830bbd42511.md) | 92 | `result-track:da72e1f73fde0830bbd42511648bb8cdd5e601f6edb55e8c9ce273f63958782c` |
| 17 | `theorem` | [scaled_step_formulas](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/scaled-step-formulas--192f9a5ad12b3d86c7f3f850.md) | 105 | `result-track:192f9a5ad12b3d86c7f3f8505d3aef94d73cf5e174d3df7f6701f9cd42d84ac9` |
| 18 | `theorem` | [step_refines](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/step-refines--7e22f1b53f2b1229edca14fe.md) | 124 | `result-track:7e22f1b53f2b1229edca14fe033ffe9d0c4c87905e51c869f8e0605d66fef207` |
| 19 | `def` | [TraceValid](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/tracevalid--72cfb7e653f4b742b760b232.md) | 143 | `declaration-track:72cfb7e653f4b742b760b2322719bdef8dc94326a3023b8855d064c9f3f1db29` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/instance--a4f111dc0ffe7c1b528d943b.md) | 148 | `declaration-track:a4f111dc0ffe7c1b528d943bcfd534eac9e8d5328120867b4493cdf6dc01451a` |
| 21 | `def` | [checkTrace](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/checktrace--aed3ee642be6ad7d6ad7003b.md) | 153 | `declaration-track:aed3ee642be6ad7d6ad7003b277469678792e23fa487a78867604528ad3bd755` |
| 22 | `theorem` | [checkTrace_iff](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/checktrace-iff--fb57c0cc2bcd0457e7e77529.md) | 156 | `result-track:fb57c0cc2bcd0457e7e77529ca9c10c742b4811e802e637c8fd9434bf5f0efa5` |
| 23 | `theorem` | [trace_refines](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/declarations/trace-refines--5c77c363b2245dfebebfd51b.md) | 162 | `result-track:5c77c363b2245dfebebfd51b5e83463fca6a70e89b0b39da8f446cedcb89d58d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
