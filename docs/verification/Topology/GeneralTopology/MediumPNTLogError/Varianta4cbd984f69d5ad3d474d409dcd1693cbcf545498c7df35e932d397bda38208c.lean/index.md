# Verification target: GRWTSK.Topology.GeneralTopology.MediumPNTLogError.Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51e9cdcb21af9828ba91aa1aac0cfa9661660387",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51e9cdcb21af9828ba91aa1aac0cfa9661660387`.

Source path: `GRWTSK/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean.json)

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
| 1 | `def` | [psiRelativeError](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean/declarations/psirelativeerror--514d5613a1d7f839b2d9fdff.md) | 11 | `declaration-track:514d5613a1d7f839b2d9fdff3a15032db1d823b094414f00224042dcce330a9b` |
| 2 | `theorem` | [psiRelativeError_eq](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean/declarations/psirelativeerror-eq--210d0001a62401b1f933f5a2.md) | 13 | `result-track:210d0001a62401b1f933f5a24032b0266e382d6f2cb70affe856556eb42cdb72` |
| 3 | `theorem` | [psiRelativeError_medium_bound](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean/declarations/psirelativeerror-medium-bound--071bfa27fa22d448f26c6810.md) | 20 | `result-track:071bfa27fa22d448f26c681022e3c163f25f280fef90106e05c31c8e6efdd7de` |
| 4 | `theorem` | [power_stretched_exp_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean/declarations/power-stretched-exp-tendsto-zero--84f077f45076b745a1302c9a.md) | 40 | `result-track:84f077f45076b745a1302c9ae2420874f0953d7f6d85b7004061777eacf5f128` |
| 5 | `theorem` | [psiRelativeError_mul_pow_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean/declarations/psirelativeerror-mul-pow-tendsto-zero--cf097a9b546f51f4153ff7b4.md) | 53 | `result-track:cf097a9b546f51f4153ff7b433aedfe6db7a82bc187e5b9c4c1576bfc3f1d928` |
| 6 | `theorem` | [psiRelativeError_eventual_inverse_power](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogError/Varianta4cbd984f69d5ad3d474d409dcd1693cbcf545498c7df35e932d397bda38208c.lean/declarations/psirelativeerror-eventual-inverse-power--aa6ae02e09646bc500f25fbb.md) | 66 | `result-track:aa6ae02e09646bc500f25fbbab67e87ee298545277f20e4815f8f334f06faeb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
