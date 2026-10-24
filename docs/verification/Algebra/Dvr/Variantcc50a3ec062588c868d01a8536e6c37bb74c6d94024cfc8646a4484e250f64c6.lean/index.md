# Verification target: GRWTSK.Algebra.Dvr.Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d655dceb37caa659e1a20f648265099bf7d301b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d655dceb37caa659e1a20f648265099bf7d301b`.

Source path: `GRWTSK/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DiscreteValuationRing.TFAE` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.IntegrallyClosed` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsDedekindDomainDvr](../../../../mathematics/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/declarations/isdedekinddomaindvr--834799b2bc875da695ccc335.md) | 55 | `declaration-track:834799b2bc875da695ccc3359e97b2bfbb96a24cc190d15edbe20b4fa9c47f7c` |
| 2 | `theorem` | [Ring.DimensionLEOne.localization](../../../../mathematics/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/declarations/ring-dimensionleone-localization--e9106993f031bc5d87c4555f.md) | 64 | `result-track:e9106993f031bc5d87c4555f2d69db44b7a6d17e27c3561972804445de88283d` |
| 3 | `theorem` | [IsLocalization.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/declarations/islocalization-isdedekinddomain--50766196f188c28e4d529330.md) | 80 | `result-track:50766196f188c28e4d52933003f278181d1000a4b4f9fbd567ce6f020ef705ab` |
| 4 | `theorem` | [IsLocalization.AtPrime.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/declarations/islocalization-atprime-isdedekinddomain--2108806c2dabbd8805a51869.md) | 103 | `result-track:2108806c2dabbd8805a5186975e8b27e3811f28f40189ec10da7712feda8d34b` |
| 5 | `instance` | [Localization.AtPrime.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/declarations/localization-atprime-isdedekinddomain--4b2562b657ab7b9efbe67a5f.md) | 108 | `declaration-track:4b2562b657ab7b9efbe67a5f93876d1ea7113504a0a86d54274cd83f265a8ed9` |
| 6 | `theorem` | [IsLocalization.AtPrime.not_isField](../../../../mathematics/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/declarations/islocalization-atprime-not-isfield--65ade1dbdc57ab8f1ba24f45.md) | 112 | `result-track:65ade1dbdc57ab8f1ba24f450cc3b851270a6836ed3be8fd5eadb6ecda02f28d` |
| 7 | `theorem` | [IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain](../../../../mathematics/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/declarations/islocalization-atprime-isdiscretevaluationring-of-dedekind-domain--4f7b02b7abdd2115b01c461c.md) | 127 | `result-track:4f7b02b7abdd2115b01c461ca30a3d98a2dde615657222cbcbb6882085c0c614` |
| 8 | `instance` | [IsDedekindDomain.isDedekindDomainDvr](../../../../mathematics/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/declarations/isdedekinddomain-isdedekinddomaindvr--4abb28b3554ebf0cac5678c3.md) | 142 | `declaration-track:4abb28b3554ebf0cac5678c3d0f5e87c316c28cecdf541760aad27d784e115a0` |
| 9 | `instance` | [IsDedekindDomainDvr.ring_dimensionLEOne](../../../../mathematics/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/declarations/isdedekinddomaindvr-ring-dimensionleone--094aed00e8cbbde79518b30a.md) | 146 | `declaration-track:094aed00e8cbbde79518b30af76daf0c1badb04a3ec05ad82fc4d6f4c54ebf00` |
| 10 | `instance` | [IsDedekindDomainDvr.isIntegrallyClosed](../../../../mathematics/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/declarations/isdedekinddomaindvr-isintegrallyclosed--e1db7567c50cdba7d6869dca.md) | 165 | `declaration-track:e1db7567c50cdba7d6869dca6a3c50006e9176e867e5e2972c2dc44a7ab89eb9` |
| 11 | `instance` | [IsDedekindDomainDvr.isDedekindDomain](../../../../mathematics/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/declarations/isdedekinddomaindvr-isdedekinddomain--c3aea5280fd76c82e6bf5fdf.md) | 174 | `declaration-track:c3aea5280fd76c82e6bf5fdf6d4db56e03014d808a9f04bf6c46dbee92a4faae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
