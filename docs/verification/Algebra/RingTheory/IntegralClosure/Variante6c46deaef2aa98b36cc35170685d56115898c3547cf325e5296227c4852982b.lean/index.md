# Verification target: GRWTSK.Algebra.RingTheory.IntegralClosure.Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cee1e848c2096ae7d81d1384e6e40ead6d45652",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cee1e848c2096ae7d81d1384e6e40ead6d45652`.

Source path: `GRWTSK/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Module` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsIntegralClosure.isLocalization](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/declarations/isintegralclosure-islocalization--82354ce5e3fbe76cc2e3ee60.md) | 76 | `result-track:82354ce5e3fbe76cc2e3ee60777d6464a557fc318d5a86c83dcf58b6ac027b53` |
| 2 | `theorem` | [IsIntegralClosure.range_le_span_dualBasis](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/declarations/isintegralclosure-range-le-span-dualbasis--66d18ad71825e377a9105748.md) | 103 | `result-track:66d18ad71825e377a910574806e83ce796d0f9c958f69c9e644caf2dc52a573c` |
| 3 | `theorem` | [integralClosure_le_span_dualBasis](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/declarations/integralclosure-le-span-dualbasis--28edce5fae03975539d4cd5d.md) | 129 | `result-track:28edce5fae03975539d4cd5def96de66db51f56d297ae86de4c47ddc388ddc90` |
| 4 | `theorem` | [exists_integral_multiples](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/declarations/exists-integral-multiples--f984ef23ae1413ccf22584bc.md) | 142 | `result-track:f984ef23ae1413ccf22584bc899fb0056beb1f8d6ee5c7f6e915ce4130bcaf97` |
| 5 | `theorem` | [FiniteDimensional.exists_is_basis_integral](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/declarations/finitedimensional-exists-is-basis-integral--7c8fd469be8c07f3d93aeb35.md) | 168 | `result-track:7c8fd469be8c07f3d93aeb35e9e054c5e288bda06aa20c6c208d0f42726b09aa` |
| 6 | `theorem` | [IsIntegralClosure.isNoetherian](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/declarations/isintegralclosure-isnoetherian--6f5bdfdfe7d0997fc5851f64.md) | 198 | `result-track:6f5bdfdfe7d0997fc5851f649ac977c19a883cd312a2e1efe9c4eda77c3b4d8a` |
| 7 | `theorem` | [IsIntegralClosure.isNoetherianRing](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/declarations/isintegralclosure-isnoetherianring--eff847224c4458e888b6ce1c.md) | 215 | `result-track:eff847224c4458e888b6ce1c72ba673a32acb6d40f2cdede4539c3bceada78c0` |
| 8 | `theorem` | [IsIntegralClosure.module_free](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/declarations/isintegralclosure-module-free--5c1a88808679c210f5bc738a.md) | 223 | `result-track:5c1a88808679c210f5bc738ad7585445aa48a12043367e0e95baaec4f12c6669` |
| 9 | `theorem` | [IsIntegralClosure.rank](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/declarations/isintegralclosure-rank--4218453137f476b3a50257ca.md) | 233 | `result-track:4218453137f476b3a50257ca8a70feea147c803482cf06196a8be53d485ddbe7` |
| 10 | `theorem` | [integralClosure.isNoetherianRing](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/declarations/integralclosure-isnoetherianring--e517803c9a4b4ea0aa1f1005.md) | 248 | `result-track:e517803c9a4b4ea0aa1f1005c610e25f335d107c79bb87365c4a0e210506a69e` |
| 11 | `theorem` | [IsIntegralClosure.isDedekindDomain](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/declarations/isintegralclosure-isdedekinddomain--984eb813e82202b64dbadd7b.md) | 262 | `result-track:984eb813e82202b64dbadd7bfcd1ff9ef187f356803c72696d6844fb3973ac59` |
| 12 | `theorem` | [integralClosure.isDedekindDomain](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/declarations/integralclosure-isdedekinddomain--a363121d05f48208b6021436.md) | 277 | `result-track:a363121d05f48208b60214362e66794e020e39828367717fe3118a95c4096a02` |
| 13 | `instance` | [integralClosure.isDedekindDomain_fractionRing](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/declarations/integralclosure-isdedekinddomain-fractionring--59d2e7a135511803182dd9a3.md) | 292 | `declaration-track:59d2e7a135511803182dd9a3e9e84719390abfb188b883bacd61a2c27ccd222e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
