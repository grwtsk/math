# Verification target: GRWTSK.Algebra.Dvr.Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e8fd71e5b6cb2fb8b727ab647d5df92a176f7e0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean/index.md) · [Full source](../../../../mathematics/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e8fd71e5b6cb2fb8b727ab647d5df92a176f7e0`.

Source path: `GRWTSK/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.TFAE` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsDedekindDomainDvr](../../../../mathematics/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean/declarations/isdedekinddomaindvr--4e1b537ef82370f61a7a125f.md) | 60 | `declaration-track:4e1b537ef82370f61a7a125f23b54d0a209fe208668722d8267595c381dcc2d3` |
| 2 | `theorem` | [Ring.DimensionLEOne.localization](../../../../mathematics/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean/declarations/ring-dimensionleone-localization--79d66761a5d59fc95b075167.md) | 71 | `result-track:79d66761a5d59fc95b075167b23dd1166cc0673f24265a1cacdbdb19c1793140` |
| 3 | `theorem` | [IsLocalization.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean/declarations/islocalization-isdedekinddomain--369919145f4829069b8f24e2.md) | 88 | `result-track:369919145f4829069b8f24e2d0ef15c490ad97d8d174a0bbbb261777bd36aba0` |
| 4 | `theorem` | [IsLocalization.AtPrime.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean/declarations/islocalization-atprime-isdedekinddomain--4f06bb67c5de48d7afa8a9a4.md) | 112 | `result-track:4f06bb67c5de48d7afa8a9a47db95ce90aee8e58ffa35cb9b01ed2c535b39079` |
| 5 | `theorem` | [IsLocalization.AtPrime.not_isField](../../../../mathematics/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean/declarations/islocalization-atprime-not-isfield--5a1867384967e1a05858bc08.md) | 118 | `result-track:5a1867384967e1a05858bc0894eac395fd722f503c59ac9b41bc27ccbbd38258` |
| 6 | `theorem` | [IsLocalization.AtPrime.discreteValuationRing_of_dedekind_domain](../../../../mathematics/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean/declarations/islocalization-atprime-discretevaluationring-of-dedekind-domain--b4fa51a56345a102a379784c.md) | 134 | `result-track:b4fa51a56345a102a379784c350eb9b125acb65bd15fda1a5283606d61080278` |
| 7 | `theorem` | [IsDedekindDomain.isDedekindDomainDvr](../../../../mathematics/Algebra/Dvr/Variantb833167d2cf9630bc642b15debaa413fdede4bc25a61aa5d2fe3f2175b43cbe7.lean/declarations/isdedekinddomain-isdedekinddomaindvr--7fed70568b7e9c562b09b35c.md) | 150 | `result-track:7fed70568b7e9c562b09b35cff7e17be7f233a6804b790d1575792d5eda39e68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
