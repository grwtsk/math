# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MobiusPoleNumerator.Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c42f9d49f1ba77cb9f558949ea7f9b743d15e69a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c42f9d49f1ba77cb9f558949ea7f9b743d15e69a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletNumerator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/dirichletnumerator--8569110b08d9ddc9925f13b6.md) | 22 | `declaration-track:8569110b08d9ddc9925f13b62b96a20c5bff581abfd7f7499946a7715026550e` |
| 2 | `def` | [correctedNumerator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/correctednumerator--19e88ed2d4109d4278cff30d.md) | 27 | `declaration-track:19e88ed2d4109d4278cff30d53b34553fc52d920e8c21d77c881bdc8241a3716` |
| 3 | `def` | [logNormalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/lognormalization--ebe615a3ce9e8fdf78c05b6f.md) | 32 | `declaration-track:ebe615a3ce9e8fdf78c05b6ffef9041f4f3a57b7decdfb67d6d43237bea0685c` |
| 4 | `theorem` | [exponential_at_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/exponential-at-half--61e288ac3df6ede51749671d.md) | 37 | `result-track:61e288ac3df6ede51749671d2948db1494c7340634833e3c7fc64ccacb21e645` |
| 5 | `theorem` | [dirichletNumerator_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/dirichletnumerator-half--eb3064dd73cf299534d28e69.md) | 47 | `result-track:eb3064dd73cf299534d28e695afddd1202ec0a49111b6eaaec94e56b9dfc3d34` |
| 6 | `theorem` | [correctedNumerator_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/correctednumerator-half--17e662b607c8099de26f7a3c.md) | 58 | `result-track:17e662b607c8099de26f7a3cf43cee122685cccc3eada6ffc94c73ea2ae3bd50` |
| 7 | `theorem` | [correctedNumerator_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/correctednumerator-differentiable--8cf146fbd2b02e6ce5c748d2.md) | 63 | `result-track:8cf146fbd2b02e6ce5c748d23f8d86bbf35e8b67354f22f9d8f3f61c2a3df785` |
| 8 | `theorem` | [correctedNumerator_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/correctednumerator-hasderivat--64d36e98b7ead43d47290a37.md) | 68 | `result-track:64d36e98b7ead43d47290a37edd4170cdb0199acbbc5556b7099932fbe7aec2a` |
| 9 | `theorem` | [logNormalization_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/lognormalization-eq--296034b2a2406e92f3bae857.md) | 87 | `result-track:296034b2a2406e92f3bae8572d90652e55936aacf9607fdb654bb3b6538a3ae7` |
| 10 | `theorem` | [correctedNumerator_hasDerivAt_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/correctednumerator-hasderivat-half--38d6a5029da618b90ea6e88a.md) | 103 | `result-track:38d6a5029da618b90ea6e88a5c0e5dc9ad00d6b6204b85bf714e73adf4a1889d` |
| 11 | `def` | [correctedQuotient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/correctedquotient--a269cd947f3d77e31a5fdd56.md) | 122 | `declaration-track:a269cd947f3d77e31a5fdd56b259131524524fa66083130e9c59ee5b2c6b59fb` |
| 12 | `theorem` | [correctedQuotient_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/correctedquotient-of-ne--c8314459af97ec54378dfae2.md) | 125 | `result-track:c8314459af97ec54378dfae2bcba7a2214c9a3efbfea86cf8cd54fe7120c659c` |
| 13 | `theorem` | [correctedNumerator_factor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/correctednumerator-factor--17426d5ad130394593705827.md) | 131 | `result-track:17426d5ad130394593705827ea4a5fb383fc48de19ce3a69f5df0fca4290e2d4` |
| 14 | `theorem` | [correctedQuotient_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/correctedquotient-differentiable--77bb614405c998c25e6fd12a.md) | 137 | `result-track:77bb614405c998c25e6fd12a9dee805440c6c72b6f8d034cf118f4e7c4375624` |
| 15 | `theorem` | [correctedQuotient_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/correctedquotient-half--ec6308bbca5a6457e2176402.md) | 143 | `result-track:ec6308bbca5a6457e2176402cbed9b3b4d1735d1cbf14fc25c9ab6fc1e4d9394` |
| 16 | `theorem` | [correctedQuotient_tendsto_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean/declarations/correctedquotient-tendsto-half--fae56eb46fa3a1fcf20d5051.md) | 149 | `result-track:fae56eb46fa3a1fcf20d5051cbfe3d337c415658f0acc37d78eea68b0f20713a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
