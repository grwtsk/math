# Verification target: GRWTSK.Algebra.Dvr.Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bb447c063becc43aee20383d371f97e8ebbfbf4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean/index.md) · [Full source](../../../../mathematics/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bb447c063becc43aee20383d371f97e8ebbfbf4`.

Source path: `GRWTSK/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.TFAE` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsDedekindDomainDvr](../../../../mathematics/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean/declarations/isdedekinddomaindvr--5cf87b8135bfeadce088c3f2.md) | 68 | `declaration-track:5cf87b8135bfeadce088c3f2056d0b68ce4fcea9738096a1fa7f4c1c1e948457` |
| 2 | `theorem` | [Ring.DimensionLEOne.localization](../../../../mathematics/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean/declarations/ring-dimensionleone-localization--170fc7beba40952005669e21.md) | 79 | `result-track:170fc7beba40952005669e21a2db18fbab6f058358e3c0cbfa551627a65fdc68` |
| 3 | `theorem` | [IsLocalization.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean/declarations/islocalization-isdedekinddomain--548548b3008e560773649433.md) | 96 | `result-track:548548b3008e560773649433bde4d0ddf86e1b31e5f1a701c63970fa0c5ddc80` |
| 4 | `theorem` | [IsLocalization.AtPrime.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean/declarations/islocalization-atprime-isdedekinddomain--1e20f5c8ab74d59a00f83eda.md) | 120 | `result-track:1e20f5c8ab74d59a00f83eda1f7e52ded68aa52329edc4be539b68d6d619256e` |
| 5 | `theorem` | [IsLocalization.AtPrime.not_isField](../../../../mathematics/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean/declarations/islocalization-atprime-not-isfield--0d24d0134431acc657ef455b.md) | 126 | `result-track:0d24d0134431acc657ef455bddd11b00804146ee944f74a3672f09dbbed005eb` |
| 6 | `theorem` | [IsLocalization.AtPrime.discreteValuationRing_of_dedekind_domain](../../../../mathematics/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean/declarations/islocalization-atprime-discretevaluationring-of-dedekind-domain--4611fa341d1a8cb0a4da5446.md) | 142 | `result-track:4611fa341d1a8cb0a4da544615685cc57330612c55f82347ee265b52b149748e` |
| 7 | `theorem` | [IsDedekindDomain.isDedekindDomainDvr](../../../../mathematics/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean/declarations/isdedekinddomain-isdedekinddomaindvr--11a07630da4649705a6ef36a.md) | 158 | `result-track:11a07630da4649705a6ef36aa5ab62e0f8a77f0b2ac565fddfa3d1fd93bed63e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
