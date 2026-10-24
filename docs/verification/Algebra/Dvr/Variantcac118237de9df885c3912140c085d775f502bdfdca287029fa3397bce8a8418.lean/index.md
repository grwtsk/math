# Verification target: GRWTSK.Algebra.Dvr.Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc3c93b37278dbe7520840827f5c24b1aa76bc25",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean/index.md) · [Full source](../../../../mathematics/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc3c93b37278dbe7520840827f5c24b1aa76bc25`.

Source path: `GRWTSK/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DiscreteValuationRing.TFAE` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.IntegrallyClosed` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsDedekindDomainDvr](../../../../mathematics/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean/declarations/isdedekinddomaindvr--f248ef396044e84c76912129.md) | 63 | `declaration-track:f248ef396044e84c76912129beabaaa5e699255f686ea7f27a9f462f8a7e4f35` |
| 2 | `theorem` | [Ring.DimensionLEOne.localization](../../../../mathematics/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean/declarations/ring-dimensionleone-localization--8dfd8c190f4ef593628718b4.md) | 72 | `result-track:8dfd8c190f4ef593628718b4fdf8de2b1f9bad35fcae8f4e7de1bc4243365259` |
| 3 | `theorem` | [IsLocalization.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean/declarations/islocalization-isdedekinddomain--38a829da2061a1b2feba23ae.md) | 88 | `result-track:38a829da2061a1b2feba23aede2c2aa6c26bc0a92a6f90eac4a9f3c5d7284dd6` |
| 4 | `theorem` | [IsLocalization.AtPrime.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean/declarations/islocalization-atprime-isdedekinddomain--dff05aa770808d3f66ba5e9b.md) | 111 | `result-track:dff05aa770808d3f66ba5e9b896648a056693e10333f2ac57491febb33ca6e2e` |
| 5 | `instance` | [Localization.AtPrime.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean/declarations/localization-atprime-isdedekinddomain--12972412e05f1e9a8a8e41af.md) | 116 | `declaration-track:12972412e05f1e9a8a8e41af444ab8bc313994d9ee2142d5fdeaea1a8755acfa` |
| 6 | `theorem` | [IsLocalization.AtPrime.not_isField](../../../../mathematics/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean/declarations/islocalization-atprime-not-isfield--7f6ae57ba77ad1eb14876f48.md) | 120 | `result-track:7f6ae57ba77ad1eb14876f4811a641f6a375ef7a95b0687b42c6db5d3efea9c4` |
| 7 | `theorem` | [IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain](../../../../mathematics/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean/declarations/islocalization-atprime-isdiscretevaluationring-of-dedekind-domain--c29fc84616f778d38a59cbae.md) | 135 | `result-track:c29fc84616f778d38a59cbaeb367be497cccb3224f018cb69da2ae477c64d9f0` |
| 8 | `instance` | [IsDedekindDomain.isDedekindDomainDvr](../../../../mathematics/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean/declarations/isdedekinddomain-isdedekinddomaindvr--38187fc89abf660043d41ed1.md) | 150 | `declaration-track:38187fc89abf660043d41ed129b4d8e456c16693ebd53f03d938449fbf9af128` |
| 9 | `instance` | [IsDedekindDomainDvr.ring_dimensionLEOne](../../../../mathematics/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean/declarations/isdedekinddomaindvr-ring-dimensionleone--f9b251d4315efe65d7eff12c.md) | 154 | `declaration-track:f9b251d4315efe65d7eff12c67dceb437553c816867663f67fe8bc7dcb49b3b3` |
| 10 | `instance` | [IsDedekindDomainDvr.isIntegrallyClosed](../../../../mathematics/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean/declarations/isdedekinddomaindvr-isintegrallyclosed--09950362829d30f9ccc14c2f.md) | 173 | `declaration-track:09950362829d30f9ccc14c2fbc8389c5dd9b85f982a704a8643720888219d45c` |
| 11 | `instance` | [IsDedekindDomainDvr.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantcac118237de9df885c3912140c085d775f502bdfdca287029fa3397bce8a8418.lean/declarations/isdedekinddomaindvr-isdedekinddomain--740f741f21b34639e5fe0e49.md) | 182 | `declaration-track:740f741f21b34639e5fe0e49c65838d76d12f05d9b93a5d208b0a5ab4dead88e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
