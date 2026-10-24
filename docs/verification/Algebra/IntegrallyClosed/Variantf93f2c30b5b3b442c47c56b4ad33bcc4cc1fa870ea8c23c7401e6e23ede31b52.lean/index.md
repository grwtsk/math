# Verification target: GRWTSK.Algebra.IntegrallyClosed.Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b4b95bf96ee7bcf22fada3f29624483a4e2ecf3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean/index.md) · [Full source](../../../../mathematics/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b4b95bf96ee7bcf22fada3f29624483a4e2ecf3`.

Source path: `GRWTSK/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Maximal.Localization` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsIntegrallyClosed.iInf](../../../../mathematics/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean/declarations/isintegrallyclosed-iinf--f27211c1b884edfbd062aa81.md) | 27 | `result-track:f27211c1b884edfbd062aa81f3548809720dbb99a9374c6fa4006a694eca0366` |
| 2 | `theorem` | [IsIntegrallyClosed.of_iInf_eq_bot](../../../../mathematics/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean/declarations/isintegrallyclosed-of-iinf-eq-bot--fa5e4e74279cccec8e296ad4.md) | 38 | `result-track:fa5e4e74279cccec8e296ad45366b9fd8fce76cfd45dbc1fc0497072821fed99` |
| 3 | `theorem` | [IsIntegrallyClosed.of_localization_submonoid](../../../../mathematics/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean/declarations/isintegrallyclosed-of-localization-submonoid--f16ea5e5e8ae3671a62a7870.md) | 44 | `result-track:f16ea5e5e8ae3671a62a787005c03c8efb97f10a64fb1ce3d9daa4180dc1b467` |
| 4 | `theorem` | [IsIntegrallyClosed.of_localization](../../../../mathematics/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean/declarations/isintegrallyclosed-of-localization--108310fcff082b051c9cc509.md) | 54 | `result-track:108310fcff082b051c9cc509b9f56f8e962ab1305e2f013cbd01bf1d6047c6d1` |
| 5 | `theorem` | [IsIntegrallyClosed.of_localization_maximal](../../../../mathematics/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean/declarations/isintegrallyclosed-of-localization-maximal--4822787386f5007472de36f5.md) | 65 | `result-track:4822787386f5007472de36f56280fb0cbebebc38c83dd5531e2418faae51290a` |
| 6 | `theorem` | [isIntegrallyClosed_ofLocalizationMaximal](../../../../mathematics/Algebra/IntegrallyClosed/Variantf93f2c30b5b3b442c47c56b4ad33bcc4cc1fa870ea8c23c7401e6e23ede31b52.lean/declarations/isintegrallyclosed-oflocalizationmaximal--92df4b40a1bdd805aef7e5d3.md) | 77 | `result-track:92df4b40a1bdd805aef7e5d383f255b51d574d8e2f5ee450cf351cfdd40465ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
