# Verification target: GRWTSK.Topology.GeneralTopology.MediumPNTLogError.Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fb32f2d36d248deb6ab1fc829857aa778fb038c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fb32f2d36d248deb6ab1fc829857aa778fb038c`.

Source path: `GRWTSK/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.MediumPNT` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psiRelativeError](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean/declarations/psirelativeerror--429dfcf6b14d4467655e6713.md) | 19 | `declaration-track:429dfcf6b14d4467655e67130aa68e30c52a8d3109c352699fa180404d8c240d` |
| 2 | `theorem` | [psiRelativeError_eq](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean/declarations/psirelativeerror-eq--6681df3e205f56e8cbfdf430.md) | 21 | `result-track:6681df3e205f56e8cbfdf430021586948e7308d5c24281f2f79cdc109b03f24c` |
| 3 | `theorem` | [psiRelativeError_medium_bound](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean/declarations/psirelativeerror-medium-bound--27d8981136b7663aeea0f02b.md) | 28 | `result-track:27d8981136b7663aeea0f02b341a9f0b6d2e1ff712603dee8a4e0706a2894498` |
| 4 | `theorem` | [power_stretched_exp_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean/declarations/power-stretched-exp-tendsto-zero--62d6f68f74a649868f0594cf.md) | 48 | `result-track:62d6f68f74a649868f0594cfee255efbcfcddbc67858e7ae87776d4c62ae6ca3` |
| 5 | `theorem` | [psiRelativeError_mul_pow_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean/declarations/psirelativeerror-mul-pow-tendsto-zero--5b42dd59a9debe04992c3ea4.md) | 61 | `result-track:5b42dd59a9debe04992c3ea4135089f9515e0403130a0a830a1df87c428c6629` |
| 6 | `theorem` | [psiRelativeError_eventual_inverse_power](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Variant8af955c0a6bc57615e5ee914d2df4e8bbafe51997ae133e428eb569796f2ffdb.lean/declarations/psirelativeerror-eventual-inverse-power--2813738f7b5c2b953a2a3e88.md) | 74 | `result-track:2813738f7b5c2b953a2a3e881ec56a98b12a3367ff4b5c92f9df51f345c61c5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
