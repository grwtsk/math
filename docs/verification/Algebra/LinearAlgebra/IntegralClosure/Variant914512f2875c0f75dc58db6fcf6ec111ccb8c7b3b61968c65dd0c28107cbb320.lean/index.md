# Verification target: GRWTSK.Algebra.LinearAlgebra.IntegralClosure.Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1e577e7fb3244c6abd87188e18946d4293085f2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1e577e7fb3244c6abd87188e18946d4293085f2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearForm.DualLattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Module` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsIntegralClosure.isLocalization](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/isintegralclosure-islocalization--262811fcfb836eb4149e12ab.md) | 62 | `result-track:262811fcfb836eb4149e12abeba76a1a53a4b39af64a445dfb460d82f402c07d` |
| 2 | `theorem` | [IsIntegralClosure.isLocalization_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/isintegralclosure-islocalization-of-isseparable--6dd534ad0b8a5967f95eebec.md) | 82 | `result-track:6dd534ad0b8a5967f95eebec24873515bede741ad526d4777ac471b2f963da87` |
| 3 | `theorem` | [IsIntegralClosure.range_le_span_dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/isintegralclosure-range-le-span-dualbasis--5e292ca9d8a2226ad03e9821.md) | 89 | `result-track:5e292ca9d8a2226ad03e98217640763a60717c1a69d741113e31f3fc71806727` |
| 4 | `theorem` | [integralClosure_le_span_dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/integralclosure-le-span-dualbasis--2e7cdbc1760f51c6afec6bd7.md) | 101 | `result-track:2e7cdbc1760f51c6afec6bd729311866cff5f8c9984bb0cdc8cee2ad5865b167` |
| 5 | `theorem` | [exists_integral_multiples](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/exists-integral-multiples--07276e104e1184398198d7c8.md) | 114 | `result-track:07276e104e1184398198d7c838124c5800d090fbe623cc3dbd9a4694c94db7ac` |
| 6 | `theorem` | [FiniteDimensional.exists_is_basis_integral](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/finitedimensional-exists-is-basis-integral--617948df8a66225ffbd70e4a.md) | 124 | `result-track:617948df8a66225ffbd70e4aac5f9d447fc20ecf345f5015f6fb6adf7fe41b53` |
| 7 | `theorem` | [IsIntegralClosure.isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/isintegralclosure-isnoetherian--260d2dabfa45564db654d11e.md) | 153 | `result-track:260d2dabfa45564db654d11e9defbae716ddbf365641bb76c5fb041acf4ed6a1` |
| 8 | `theorem` | [IsIntegralClosure.isNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/isintegralclosure-isnoetherianring--bee557e7b31a707821224e59.md) | 169 | `result-track:bee557e7b31a707821224e59409ab408be19ffc56ca517a11de7ff8d56e12f82` |
| 9 | `theorem` | [IsIntegralClosure.finite](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/isintegralclosure-finite--f536754222fd687ea23b026c.md) | 176 | `result-track:f536754222fd687ea23b026c3eb80e31016f18daad16fb791fc82aad8c6195b1` |
| 10 | `theorem` | [IsIntegralClosure.module_free](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/isintegralclosure-module-free--2d0e639281fbf3758a4351f4.md) | 184 | `result-track:2d0e639281fbf3758a4351f427504f0be53ee18a96721300e4f00b82f299a3eb` |
| 11 | `theorem` | [IsIntegralClosure.rank](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/isintegralclosure-rank--9e0b6850a9e1e4dc3897a121.md) | 193 | `result-track:9e0b6850a9e1e4dc3897a12185e5d74dce352eb49e563c86f094f7c5fac82f97` |
| 12 | `theorem` | [integralClosure.isNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/integralclosure-isnoetherianring--a23ecb37d9496a5dac0c9bd7.md) | 207 | `result-track:a23ecb37d9496a5dac0c9bd7f5fbe6695567bcffc08236f505e44e48a6686044` |
| 13 | `theorem` | [IsIntegralClosure.isDedekindDomain](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/isintegralclosure-isdedekinddomain--bbcd23506035038a77daa6b9.md) | 219 | `result-track:bbcd23506035038a77daa6b94e30a7b3c63225aa03d77545ecb9691c78c52361` |
| 14 | `theorem` | [integralClosure.isDedekindDomain](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/integralclosure-isdedekinddomain--cf59cf104f209b31e0917177.md) | 233 | `result-track:cf59cf104f209b31e0917177ffe74cc7ea35ec7098f6e4bc3da247b1e9a7630e` |
| 15 | `instance` | [integralClosure.isDedekindDomain_fractionRing](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/integralclosure-isdedekinddomain-fractionring--2fa1ec431b58b9e15c0775a1.md) | 245 | `declaration-track:2fa1ec431b58b9e15c0775a12b05a2a9cf593de8e9d69c49871375c7d3c3001b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Variant914512f2875c0f75dc58db6fcf6ec111ccb8c7b3b61968c65dd0c28107cbb320.lean/declarations/instance--3e5ebb17b641d091e379ca75.md) | 250 | `declaration-track:3e5ebb17b641d091e379ca7556fe7b5f7f5208c961853efd1d8d2b9e5a6c4241` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
