# Verification target: GRWTSK.Algebra.Basic.Varianta0b5dd36b6733752a1333d1406554de16ec4d07b8567a0f390c1b1b6ad28570c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2811b2650121047233e550ddc787526777441fb7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianta0b5dd36b6733752a1333d1406554de16ec4d07b8567a0f390c1b1b6ad28570c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Varianta0b5dd36b6733752a1333d1406554de16ec4d07b8567a0f390c1b1b6ad28570c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Varianta0b5dd36b6733752a1333d1406554de16ec4d07b8567a0f390c1b1b6ad28570c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2811b2650121047233e550ddc787526777441fb7`.

Source path: `GRWTSK/Algebra/Basic/Varianta0b5dd36b6733752a1333d1406554de16ec4d07b8567a0f390c1b1b6ad28570c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianta0b5dd36b6733752a1333d1406554de16ec4d07b8567a0f390c1b1b6ad28570c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivSubtype](../../../../mathematics/Algebra/Basic/Varianta0b5dd36b6733752a1333d1406554de16ec4d07b8567a0f390c1b1b6ad28570c.lean/declarations/equivsubtype--db1a07a8ffd69435b7a386ac.md) | 36 | `declaration-track:db1a07a8ffd69435b7a386ace5ec333b15af0724f20a519adceda8f502201023` |
| 2 | `theorem` | [range_asIdeal](../../../../mathematics/Algebra/Basic/Varianta0b5dd36b6733752a1333d1406554de16ec4d07b8567a0f390c1b1b6ad28570c.lean/declarations/range-asideal--e49dc2a786816b6d61ecac6a.md) | 40 | `result-track:e49dc2a786816b6d61ecac6abf796c18b11fa689e454895e09369189ce34d70f` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta0b5dd36b6733752a1333d1406554de16ec4d07b8567a0f390c1b1b6ad28570c.lean/declarations/instance--994306291b7bed96f11ce741.md) | 47 | `declaration-track:994306291b7bed96f11ce7413dd562088cf8213339a8cbcff1d28f948c41d6c1` |
| 4 | `def` | [toPrimeSpectrum](../../../../mathematics/Algebra/Basic/Varianta0b5dd36b6733752a1333d1406554de16ec4d07b8567a0f390c1b1b6ad28570c.lean/declarations/toprimespectrum--af97282fdc3e788a5c65721a.md) | 52 | `declaration-track:af97282fdc3e788a5c65721aef6c58dedb3cbea85a59a0f4a0b4e995bee43071` |
| 5 | `theorem` | [toPrimeSpectrum_injective](../../../../mathematics/Algebra/Basic/Varianta0b5dd36b6733752a1333d1406554de16ec4d07b8567a0f390c1b1b6ad28570c.lean/declarations/toprimespectrum-injective--f3785339c1703e82fb4858f7.md) | 55 | `result-track:f3785339c1703e82fb4858f7e72e37c696a941ceb672a04b8ef4e13624e5fc17` |
| 6 | `theorem` | [isCoprime_of_ne](../../../../mathematics/Algebra/Basic/Varianta0b5dd36b6733752a1333d1406554de16ec4d07b8567a0f390c1b1b6ad28570c.lean/declarations/iscoprime-of-ne--996d7b8f23a2495e6f926636.md) | 58 | `result-track:996d7b8f23a2495e6f926636b3bc40957912ec21043b9aa3955246755fb8119b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
