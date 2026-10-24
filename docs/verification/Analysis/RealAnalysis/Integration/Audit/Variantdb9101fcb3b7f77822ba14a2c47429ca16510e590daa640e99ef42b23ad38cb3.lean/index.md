# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Audit.Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b18dfceaa096dfcca97e784a022058870122b09d",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b18dfceaa096dfcca97e784a022058870122b09d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNumbers` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PlaneCode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/planecode--2b0ade2800504a374c4f5a4d.md) | 27 | `declaration-track:2b0ade2800504a374c4f5a4d895b1416f8edca5d8c43a45b23c50c1f46154f13` |
| 2 | `def` | [encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/encode--b847c6e188597b318e66c24c.md) | 34 | `declaration-track:b847c6e188597b318e66c24cddba99d1f20497ee1ea2a70856b3a2c1742b3aff` |
| 3 | `def` | [interpret](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/interpret--aabb366c14840ff42a6cbeae.md) | 38 | `declaration-track:aabb366c14840ff42a6cbeae014407052ac8ba3b4dd1cbfd6ac7bc13df8afae1` |
| 4 | `def` | [Supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/supported--01aed2d00a16990167806386.md) | 42 | `declaration-track:01aed2d00a16990167806386905b02510c4e185825a8fd79e29a6c04add61d7c` |
| 5 | `def` | [coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/coefficients--bb7276fa704a28f6eb597dc6.md) | 45 | `declaration-track:bb7276fa704a28f6eb597dc6bc581232d78145ea2a7d4fe4d98df49249690632` |
| 6 | `def` | [operation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/operation--ade678c9b49b299299b1ed1b.md) | 49 | `declaration-track:ade678c9b49b299299b1ed1b540d82398d33f8bec58253aabd90e957fc6c13d8` |
| 7 | `def` | [move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/move--e5139ddf887f2cafb24ccbf3.md) | 54 | `declaration-track:e5139ddf887f2cafb24ccbf364794f78b14478590ddbba07ad918fa34a4261fe` |
| 8 | `theorem` | [operation_eq_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/operation-eq-coefficients--ead9b6af4e3342485ea05af2.md) | 61 | `result-track:ead9b6af4e3342485ea05af2da8606a3bf7bd7d603a496a43496bc77cada8e45` |
| 9 | `theorem` | [interpret_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/interpret-encode--b1f0d7c8e9c38ffd15893537.md) | 70 | `result-track:b1f0d7c8e9c38ffd158935371c907d4078f2827c4beeb0c114838b8cbad337d2` |
| 10 | `theorem` | [interpret_move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/interpret-move--da5254b542f3ded83785a698.md) | 74 | `result-track:da5254b542f3ded83785a69800f456e5b7562927041ca5813d2bd8703d3d3be9` |
| 11 | `theorem` | [interpret_move_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/interpret-move-encode--458e1531f12456fb2cf5603b.md) | 80 | `result-track:458e1531f12456fb2cf5603b577c66bf83d4c7f91f10472801e360790a502331` |
| 12 | `def` | [quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/quadratic--6a0c9025ad0e77c11a45f0fe.md) | 85 | `declaration-track:6a0c9025ad0e77c11a45f0fe8b041a1dd2d0f638af23c2b212842d0f4c000e77` |
| 13 | `theorem` | [operation_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/operation-quadratic--5dd330fe394b219a064d8352.md) | 88 | `result-track:5dd330fe394b219a064d83520312a4a47710457a9b663b6caa317ab0006c4714` |
| 14 | `theorem` | [move_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/move-quadratic--e515e281a5fdf8fa240346b4.md) | 96 | `result-track:e515e281a5fdf8fa240346b48768f7c9ce71bff028aab022dff5f012b42a2777` |
| 15 | `def` | [reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/reflection--9c06a8167adc58ccdd4aa8c1.md) | 101 | `declaration-track:9c06a8167adc58ccdd4aa8c13cfe924a0bb5adaf86975dba70fffb1b68d6ba4a` |
| 16 | `theorem` | [reflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/reflection-sq--875089f5032b3b626fc4c123.md) | 105 | `result-track:875089f5032b3b626fc4c123f67172461f24ae376195f5dc058a31f3f6701e4b` |
| 17 | `theorem` | [reflection_reversal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/reflection-reversal--f9f855036d0ddc4fe33d7982.md) | 109 | `result-track:f9f855036d0ddc4fe33d7982b68f472f929ed5cf4d5754022f8c3a40e60f9ebf` |
| 18 | `theorem` | [operation_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/operation-inverse--569d80e4ac0b14081f018a08.md) | 115 | `result-track:569d80e4ac0b14081f018a08061babcd33d8fa67ff0b205419a4845f3a1ff5f9` |
| 19 | `def` | [phaseReflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/phasereflection--e4182601216c1b3e7850726d.md) | 122 | `declaration-track:e4182601216c1b3e7850726d71bc3b30e8da0ad55400b1c147caf261f145f92b` |
| 20 | `theorem` | [phaseReflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/phasereflection-sq--caa5a8c3e681d10ba78eb10f.md) | 126 | `result-track:caa5a8c3e681d10ba78eb10fb8df82880a42f1d2405035e833c5f98688c7105d` |
| 21 | `theorem` | [coefficients_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/coefficients-one--4c720f7f059794d9b11da5ee.md) | 136 | `result-track:4c720f7f059794d9b11da5eee43dfce93511fe7a99133a11aeefd7463eef58ff` |
| 22 | `theorem` | [operation_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/operation-one--15550be2795276eb14b779c5.md) | 140 | `result-track:15550be2795276eb14b779c57adda3ed735cced37b917a084e6f438aa85effab` |
| 23 | `def` | [IntegralAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/integralat--caf15289d864a4eee631672d.md) | 154 | `declaration-track:caf15289d864a4eee631672d0f020cc534ccddb18aef3bac0f8e308f7b3878b3` |
| 24 | `def` | [IntegralVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/integralvector--05660e0f2c505900a159c7a2.md) | 158 | `declaration-track:05660e0f2c505900a159c7a20bd82f237b08d48aa639b84c31b6faec60534470` |
| 25 | `theorem` | [operation_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/operation-integral--f4a2246ad05c26b8d9c7356f.md) | 161 | `result-track:f4a2246ad05c26b8d9c7356f5bf28a4c7fc762bf4eedce3e1cac294b2506a742` |
| 26 | `theorem` | [integralAt_iff_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/integralat-iff-preserves-integral--ab4d3608404f7999dfdac161.md) | 178 | `result-track:ab4d3608404f7999dfdac161441c3c53b2cbb9a4f35881f782b4f542661ed08b` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/instance--de621e00d825e94554fc145c.md) | 192 | `declaration-track:de621e00d825e94554fc145c03eec94ffbb7118441124af3c40b1c9bffbcde4f` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/instance--b57f763a19dcf933858006a4.md) | 193 | `declaration-track:b57f763a19dcf933858006a4a0781ed64c0bfa61114960245488262998173590` |
| 29 | `theorem` | [coefficients_two_rat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/coefficients-two-rat--45db02414b612c885726a9ad.md) | 196 | `result-track:45db02414b612c885726a9ad209cb0b99b0c4a048e3b96ce79fcf89bb1936373` |
| 30 | `theorem` | [phase_two_supported_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/phase-two-supported-five--8d015ac237f4aeb561e31d87.md) | 201 | `result-track:8d015ac237f4aeb561e31d876393b3c3852164f1a47d74303cfd92f2a5ea103c` |
| 31 | `theorem` | [coefficients_two_five_diagonal_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/coefficients-two-five-diagonal-norm--74b71ffac8416455b32851cc.md) | 205 | `result-track:74b71ffac8416455b32851ccde6fb36c092a7874560d466f920a56a4162e9e50` |
| 32 | `theorem` | [phase_two_five_not_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/phase-two-five-not-integral--51d998c62bf4cf94d4ffeef3.md) | 216 | `result-track:51d998c62bf4cf94d4ffeef34b6aaf3c88532b557353b7958e2b814929fdc4ff` |
| 33 | `theorem` | [phase_two_not_supported_mod_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/phase-two-not-supported-mod-five--f42c84aa811f31404da826f9.md) | 223 | `result-track:f42c84aa811f31404da826f9a7675b28ff6299c4683d4cf8514293eca0f158d6` |
| 34 | `theorem` | [phase_one_not_supported_mod_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/phase-one-not-supported-mod-two--c01e3162f777218f61f37269.md) | 228 | `result-track:c01e3162f777218f61f37269b5fdb80c37bdbbe6a2c599d5577cfb21934436f0` |
| 35 | `theorem` | [phase_one_supported_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/phase-one-supported-two--3d4d6cc9e48b020856d58c51.md) | 233 | `result-track:3d4d6cc9e48b020856d58c514101f992112c23101b4ce750fd41d133c80ede06` |
| 36 | `theorem` | [phase_one_two_denominator_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/phase-one-two-denominator-norm--69d8fae7c964441e51b0c8cc.md) | 237 | `result-track:69d8fae7c964441e51b0c8cc80135ea04aecc7c9ed26bfbdb12eeae839203a36` |
| 37 | `theorem` | [phase_one_two_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/phase-one-two-integral--ce50197a3d5685e492479f01.md) | 242 | `result-track:ce50197a3d5685e492479f01a66267cb4192cdcee8cc1096a1d15b5fb8e0599f` |
| 38 | `theorem` | [phase_two_five_basis_nonintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/phase-two-five-basis-nonintegral--ed20061b75741bfaaef86b7c.md) | 249 | `result-track:ed20061b75741bfaaef86b7c3aed20f8891422b8f05713e8e0fcd3104afadf36` |
| 39 | `theorem` | [phase_one_two_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Audit/Variantdb9101fcb3b7f77822ba14a2c47429ca16510e590daa640e99ef42b23ad38cb3.lean/declarations/phase-one-two-preserves-integral--2b6a37bda54de484e91275bc.md) | 255 | `result-track:2b6a37bda54de484e91275bcf4cc22e1b55a3812857e95460d4aa1ed087b9d24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
