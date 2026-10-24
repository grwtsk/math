# Verification target: GRWTSK.Algebra.UniversalAlgebra.EpiMono.Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bdcf0998ad7c79b63ec3357c6a4bd1860f89892",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bdcf0998ad7c79b63ec3357c6a4bd1860f89892`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Colimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Limits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [epi_of_surjective](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean/declarations/epi-of-surjective--9c234ce4b01aae6d5922f6ee.md) | 27 | `result-track:9c234ce4b01aae6d5922f6eec614bb0a39a77952f6700f4d1782ea6ba4828f12` |
| 2 | `lemma` | [mono_of_injective](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean/declarations/mono-of-injective--ee88136c61d26c8e945e12e4.md) | 33 | `result-track:ee88136c61d26c8e945e12e45c386b6b133fe337fe2423d2b3a8f93b4af51647` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean/declarations/instance--10b00e768bbd9f694ca5b711.md) | 40 | `declaration-track:10b00e768bbd9f694ca5b711cbc3611d85ae3ea4b1b987458a0176f31a97fecf` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean/declarations/instance--c2f7ea4b3c38bb8abb9fda70.md) | 43 | `declaration-track:c2f7ea4b3c38bb8abb9fda70602d703a1f6c9f7665cc19c0bd945a6df72c4a5c` |
| 5 | `lemma` | [surjective_of_epi](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean/declarations/surjective-of-epi--1c6cd2b6b6e79a5188891bf1.md) | 46 | `result-track:1c6cd2b6b6e79a5188891bf1e7aa9c9221bea46394452446becb373c022f8a10` |
| 6 | `lemma` | [injective_of_mono](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean/declarations/injective-of-mono--d69f485d9bd56937168ccdbe.md) | 51 | `result-track:d69f485d9bd56937168ccdbe5fec54204f90a22e71c21808a9095b05e8662445` |
| 7 | `lemma` | [epi_iff_surjective](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean/declarations/epi-iff-surjective--a36493b078d5541155122d20.md) | 56 | `result-track:a36493b078d5541155122d200ae514c096e312847f9e47d4f468dd242fb4d38e` |
| 8 | `lemma` | [mono_iff_surjective](../../../../../mathematics/Algebra/UniversalAlgebra/EpiMono/Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31.lean/declarations/mono-iff-surjective--4f9cd90d56935b967722ff53.md) | 60 | `result-track:4f9cd90d56935b967722ff530d366953e79052fc3e63666fb6d3af15d9b4e8f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
