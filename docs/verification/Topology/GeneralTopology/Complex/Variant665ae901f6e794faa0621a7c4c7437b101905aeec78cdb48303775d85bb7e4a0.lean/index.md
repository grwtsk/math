# Verification target: GRWTSK.Topology.GeneralTopology.Complex.Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36b74fb1f02c8dc0b475f4f539a83723ca56980c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36b74fb1f02c8dc0b475f4f539a83723ca56980c`.

Source path: `GRWTSK/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.AbsMax` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Complex.norm_eventually_eq_of_mdifferentiableAt_of_isLocalMax](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean/declarations/complex-norm-eventually-eq-of-mdifferentiableat-of-islocalmax--07493d016ba20f64043a0338.md) | 56 | `result-track:07493d016ba20f64043a03380ef1099bd1cabe05c74757ffaddaa0f0ca775849` |
| 2 | `theorem` | [norm_eqOn_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean/declarations/norm-eqon-of-ispreconnected-of-ismaxon--67873f9815b4b3ecb7923de8.md) | 88 | `result-track:67873f9815b4b3ecb7923de8298600a9c04b5ffeeefc997148b26b1e74a75b44` |
| 3 | `theorem` | [eqOn_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean/declarations/eqon-of-ispreconnected-of-ismaxon-norm--e26d1ad33c03cd66250db981.md) | 113 | `result-track:e26d1ad33c03cd66250db9814a1e38db8e629390eae6b4e13e59aa069a5d67a7` |
| 4 | `theorem` | [apply_eq_of_isPreconnected_isCompact_isOpen](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean/declarations/apply-eq-of-ispreconnected-iscompact-isopen--da486bf0851b720112a169f0.md) | 126 | `result-track:da486bf0851b720112a169f0b9e31e7bc8262c0377e620b96ea432278dac5d13` |
| 5 | `theorem` | [isLocallyConstant](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean/declarations/islocallyconstant--8c2f04df24f442cf711faa2d.md) | 155 | `result-track:8c2f04df24f442cf711faa2d616951b9286a23c6a1cc7692968cf397d9fc2e3f` |
| 6 | `theorem` | [apply_eq_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean/declarations/apply-eq-of-compactspace--313643983257552aa3f19030.md) | 165 | `result-track:313643983257552aa3f19030dfa6b6ed25295ad78fa854d332be3301c2aa70ce` |
| 7 | `theorem` | [exists_eq_const_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean/declarations/exists-eq-const-of-compactspace--1de74318d0b1837792432c4b.md) | 172 | `result-track:1de74318d0b1837792432c4bb45f1799da3e5075c3f4350bb601c5b045586309` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
