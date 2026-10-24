# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaMellinFourierSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3fafc90b62748e4a8dc319333e5938b4d4139a9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3fafc90b62748e4a8dc319333e5938b4d4139a9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Distribution.SchwartzSpace.Fourier` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Notation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Support` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WienerPositiveSupport](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wienerpositivesupport--7d3127a3277fab48f84dc219.md) | 65 | `declaration-track:7d3127a3277fab48f84dc21913991ec5068881d0499f0fd5f4a3e7a9ea532acf` |
| 2 | `theorem` | [wiener_eventually_zero_near_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wiener-eventually-zero-near-zero--2d38194b8e27e82e8d98426d.md) | 70 | `result-track:2d38194b8e27e82e8d98426df77f80d20b2f7851dacb4fb92492ce0ecb75fbed` |
| 3 | `theorem` | [wiener_test_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wiener-test-zero--e1c32a183cfcc8a7ae1913ab.md) | 79 | `result-track:e1c32a183cfcc8a7ae1913abeacecbeb0f4eecfb8168b2a0e254e4517f638737` |
| 4 | `theorem` | [wiener_exp_pullback_vanish_atBot](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wiener-exp-pullback-vanish-atbot--812cffff7d3a6324c31ff4b2.md) | 86 | `result-track:812cffff7d3a6324c31ff4b2096dc9dd4e54da590af60574a77fe339b76910b5` |
| 5 | `theorem` | [wiener_exp_pullback_vanish_atTop](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wiener-exp-pullback-vanish-attop--22199ec96a0169ca8258eb9f.md) | 93 | `result-track:22199ec96a0169ca8258eb9fb78ed787a8dc0235724f1435dabe9c380dbe1472` |
| 6 | `theorem` | [wiener_exp_pullback_compact](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wiener-exp-pullback-compact--26d4c27b02b88e846d47e602.md) | 104 | `result-track:26d4c27b02b88e846d47e602af3f92bee3a1fd0107da1a2de9e28a6a7d18313d` |
| 7 | `def` | [wienerMellinLogTest](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wienermellinlogtest--45921fd1c8caa0c52f9d64ad.md) | 116 | `declaration-track:45921fd1c8caa0c52f9d64adc52a600aa3f6b24261e7e7939d2fb381717ed0fe` |
| 8 | `theorem` | [wienerMellinLogTest_smooth](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wienermellinlogtest-smooth--19795141d07206679a968c8f.md) | 120 | `result-track:19795141d07206679a968c8f19cb13623164409408c8fb5236cf0300b5aa8edd` |
| 9 | `theorem` | [wienerMellinLogTest_compact](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wienermellinlogtest-compact--4571d3e4eaa4d5c132f5710a.md) | 131 | `result-track:4571d3e4eaa4d5c132f5710a2a56535e68c0a3c70919b747d18ab8398271b66e` |
| 10 | `def` | [wienerMellinSchwartz](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wienermellinschwartz--300aca854e2fb478f34349d7.md) | 148 | `declaration-track:300aca854e2fb478f34349d75cb41acf2ff948daa4b89f71943eddea22ce8b2b` |
| 11 | `theorem` | [wienerMellinFourier_surjective](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wienermellinfourier-surjective--a1699691542f37b60b16024b.md) | 158 | `result-track:a1699691542f37b60b16024bf8185a830127a02d0d065725cb81d35f18479963` |
| 12 | `theorem` | [wienerMellin_fourier_witness](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wienermellin-fourier-witness--c805b74fcb4f34b23c24e300.md) | 171 | `result-track:c805b74fcb4f34b23c24e3009fd64e7ce60f3e786c84c9e5469cdc82cf3f3e72` |
| 13 | `def` | [wienerFourierCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wienerfouriercoefficient--7cabcce4795ac72091c33e30.md) | 202 | `declaration-track:7cabcce4795ac72091c33e306a9a50f0f6302320b4036895423ca84c67938af1` |
| 14 | `theorem` | [wienerFourierCoefficient_eq_smoothCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wienerfouriercoefficient-eq-smoothcoefficient--37205c0eebf49282ed0235e0.md) | 213 | `result-track:37205c0eebf49282ed0235e01c80d1e7fc14d5cc71fea95d4ee83d4594452dd8` |
| 15 | `theorem` | [wienerMellin_exp_tail_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/declarations/wienermellin-exp-tail-integral--35b79b7e0e646bf2243526cd.md) | 244 | `result-track:35b79b7e0e646bf2243526cdeb3af34b0974af6aecace8c7e07f0dad15c2ba2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
