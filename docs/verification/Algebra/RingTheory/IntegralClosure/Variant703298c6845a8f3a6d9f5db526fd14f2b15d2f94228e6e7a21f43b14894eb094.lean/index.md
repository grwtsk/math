# Verification target: GRWTSK.Algebra.RingTheory.IntegralClosure.Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee22177262b392aac5f15f3c74c2fa0fe76d6cc2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee22177262b392aac5f15f3c74c2fa0fe76d6cc2`.

Source path: `GRWTSK/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Module` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsIntegralClosure.isLocalization](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/declarations/isintegralclosure-islocalization--0d170e1349d502982ebdee37.md) | 68 | `result-track:0d170e1349d502982ebdee371fad725151559148899b3b918da6f4eada7819d0` |
| 2 | `theorem` | [IsIntegralClosure.range_le_span_dualBasis](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/declarations/isintegralclosure-range-le-span-dualbasis--78a2fcf6997014e35097340d.md) | 95 | `result-track:78a2fcf6997014e35097340d11a09659d7ead4d9d5b852253ae0e99008b47af4` |
| 3 | `theorem` | [integralClosure_le_span_dualBasis](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/declarations/integralclosure-le-span-dualbasis--69f486beef741b4dd5e7ce9c.md) | 121 | `result-track:69f486beef741b4dd5e7ce9cc650a90ee35d2cd7d2683431b3a98b6d8ff63f76` |
| 4 | `theorem` | [exists_integral_multiples](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/declarations/exists-integral-multiples--10adcc5038eeeadba7c83ac3.md) | 134 | `result-track:10adcc5038eeeadba7c83ac3e10d088f7e05bf1b6bc5b1f22e7e401eff34f83f` |
| 5 | `theorem` | [FiniteDimensional.exists_is_basis_integral](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/declarations/finitedimensional-exists-is-basis-integral--358bf9bb3ad88a0f8152c7d6.md) | 160 | `result-track:358bf9bb3ad88a0f8152c7d6acf90bbdf03bc27e8c1f6dcbd39782f0be32eead` |
| 6 | `theorem` | [IsIntegralClosure.isNoetherian](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/declarations/isintegralclosure-isnoetherian--80633380e6d1eb85e49bc15e.md) | 190 | `result-track:80633380e6d1eb85e49bc15eaafb78eabf0803188eb6ace5239c8e380a6eb838` |
| 7 | `theorem` | [IsIntegralClosure.isNoetherianRing](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/declarations/isintegralclosure-isnoetherianring--6b68cada20997a7df51c8918.md) | 207 | `result-track:6b68cada20997a7df51c8918172c1f7cd7e412a916ca97fab631c40eab8e621f` |
| 8 | `theorem` | [IsIntegralClosure.module_free](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/declarations/isintegralclosure-module-free--ad4c88d1667687a65729e7c8.md) | 215 | `result-track:ad4c88d1667687a65729e7c82a3def25f33f6a1000b5d068e418b997afc4957f` |
| 9 | `theorem` | [IsIntegralClosure.rank](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/declarations/isintegralclosure-rank--8e94ac993c51406bd977e948.md) | 225 | `result-track:8e94ac993c51406bd977e9483ac588725486daa86f749fde5f86025891cb5ae0` |
| 10 | `theorem` | [integralClosure.isNoetherianRing](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/declarations/integralclosure-isnoetherianring--f483808f3bf7a5d3ed184abe.md) | 240 | `result-track:f483808f3bf7a5d3ed184abed55e1c0ffcc1fc41586ad831167f0d652a228b42` |
| 11 | `theorem` | [IsIntegralClosure.isDedekindDomain](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/declarations/isintegralclosure-isdedekinddomain--bb9796a6fcb4f2a98619a0e1.md) | 254 | `result-track:bb9796a6fcb4f2a98619a0e166041d2f566b9b03e0843ce752d2c720bf1c7082` |
| 12 | `theorem` | [integralClosure.isDedekindDomain](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/declarations/integralclosure-isdedekinddomain--ec67db93817601d0c454b5fa.md) | 269 | `result-track:ec67db93817601d0c454b5fac1cef9730148d6d37264d30c9dc576ee10d8e849` |
| 13 | `instance` | [integralClosure.isDedekindDomain_fractionRing](../../../../../mathematics/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/declarations/integralclosure-isdedekinddomain-fractionring--791159378520c42d5c588ce8.md) | 284 | `declaration-track:791159378520c42d5c588ce82a4fec87b41a5b47a9c0a6a52ee44db22dd82c41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
