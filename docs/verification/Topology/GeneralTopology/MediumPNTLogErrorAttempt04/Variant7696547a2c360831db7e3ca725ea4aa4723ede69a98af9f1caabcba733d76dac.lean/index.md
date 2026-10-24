# Verification target: GRWTSK.Topology.GeneralTopology.MediumPNTLogErrorAttempt04.Variant7696547a2c360831db7e3ca725ea4aa4723ede69a98af9f1caabcba733d76dac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ec513589b01c4d666440a235644e74460e8fe2e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant7696547a2c360831db7e3ca725ea4aa4723ede69a98af9f1caabcba733d76dac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant7696547a2c360831db7e3ca725ea4aa4723ede69a98af9f1caabcba733d76dac.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant7696547a2c360831db7e3ca725ea4aa4723ede69a98af9f1caabcba733d76dac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ec513589b01c4d666440a235644e74460e8fe2e`.

Source path: `GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant7696547a2c360831db7e3ca725ea4aa4723ede69a98af9f1caabcba733d76dac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant7696547a2c360831db7e3ca725ea4aa4723ede69a98af9f1caabcba733d76dac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.MediumPNT` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psiRelativeError](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant7696547a2c360831db7e3ca725ea4aa4723ede69a98af9f1caabcba733d76dac.lean/declarations/psirelativeerror--9f47fa71b1d16dd9defb624d.md) | 11 | `declaration-track:9f47fa71b1d16dd9defb624d1c259a6ad0cc61b1f29cced618db709119ac6d04` |
| 2 | `theorem` | [psiRelativeError_eq](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant7696547a2c360831db7e3ca725ea4aa4723ede69a98af9f1caabcba733d76dac.lean/declarations/psirelativeerror-eq--c7ac47e290dc074e51d5a96f.md) | 13 | `result-track:c7ac47e290dc074e51d5a96f7eaff33a726f74c2629f46704402d8b9164f04c6` |
| 3 | `theorem` | [psiRelativeError_medium_bound](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant7696547a2c360831db7e3ca725ea4aa4723ede69a98af9f1caabcba733d76dac.lean/declarations/psirelativeerror-medium-bound--bd0916645464c9ee0292f495.md) | 20 | `result-track:bd0916645464c9ee0292f495ef2327ddf8fe74b1de43d969858e7a82398596fc` |
| 4 | `theorem` | [power_stretched_exp_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant7696547a2c360831db7e3ca725ea4aa4723ede69a98af9f1caabcba733d76dac.lean/declarations/power-stretched-exp-tendsto-zero--5904775dc1a866445b8787c7.md) | 40 | `result-track:5904775dc1a866445b8787c704867852ffd644f3ca2dcf3aea41a0ccf33c749d` |
| 5 | `theorem` | [psiRelativeError_mul_pow_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant7696547a2c360831db7e3ca725ea4aa4723ede69a98af9f1caabcba733d76dac.lean/declarations/psirelativeerror-mul-pow-tendsto-zero--f83f0b565ade0d3ad4003719.md) | 52 | `result-track:f83f0b565ade0d3ad4003719822eb6f92a7440bf833c7e782e30d9eab9147fe6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
