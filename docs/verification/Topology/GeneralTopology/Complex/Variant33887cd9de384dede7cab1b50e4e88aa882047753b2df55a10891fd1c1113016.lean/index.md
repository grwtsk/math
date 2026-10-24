# Verification target: GRWTSK.Topology.GeneralTopology.Complex.Variant33887cd9de384dede7cab1b50e4e88aa882047753b2df55a10891fd1c1113016

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d7f80f8dae88d52bd6f157917045d99384416f7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complex/Variant33887cd9de384dede7cab1b50e4e88aa882047753b2df55a10891fd1c1113016.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant33887cd9de384dede7cab1b50e4e88aa882047753b2df55a10891fd1c1113016.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant33887cd9de384dede7cab1b50e4e88aa882047753b2df55a10891fd1c1113016.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d7f80f8dae88d52bd6f157917045d99384416f7`.

Source path: `GRWTSK/Topology/GeneralTopology/Complex/Variant33887cd9de384dede7cab1b50e4e88aa882047753b2df55a10891fd1c1113016.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complex/Variant33887cd9de384dede7cab1b50e4e88aa882047753b2df55a10891fd1c1113016.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.AbsMax` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Complex.norm_eventually_eq_of_mdifferentiableAt_of_isLocalMax](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant33887cd9de384dede7cab1b50e4e88aa882047753b2df55a10891fd1c1113016.lean/declarations/complex-norm-eventually-eq-of-mdifferentiableat-of-islocalmax--e2b6206ad00695cae0f3c445.md) | 51 | `result-track:e2b6206ad00695cae0f3c4450b5efd3414f25e5c020d509717beb076570c2820` |
| 2 | `theorem` | [norm_eqOn_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant33887cd9de384dede7cab1b50e4e88aa882047753b2df55a10891fd1c1113016.lean/declarations/norm-eqon-of-ispreconnected-of-ismaxon--90bdf1d4e30b91bb38deb5bf.md) | 83 | `result-track:90bdf1d4e30b91bb38deb5bfb339614f8f51cd0d21d93bd5c71ab10de09f0d22` |
| 3 | `theorem` | [eqOn_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant33887cd9de384dede7cab1b50e4e88aa882047753b2df55a10891fd1c1113016.lean/declarations/eqon-of-ispreconnected-of-ismaxon-norm--de438de7a51bd0fbbdc631cb.md) | 108 | `result-track:de438de7a51bd0fbbdc631cb484b2e5effa6f6cbd2b53bde55d7acfaf7f6a314` |
| 4 | `theorem` | [apply_eq_of_isPreconnected_isCompact_isOpen](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant33887cd9de384dede7cab1b50e4e88aa882047753b2df55a10891fd1c1113016.lean/declarations/apply-eq-of-ispreconnected-iscompact-isopen--87f6144e1247c0acce538089.md) | 121 | `result-track:87f6144e1247c0acce53808918d6f19a8b79c6615b6c63ec04b7bf74d4f180d7` |
| 5 | `theorem` | [isLocallyConstant](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant33887cd9de384dede7cab1b50e4e88aa882047753b2df55a10891fd1c1113016.lean/declarations/islocallyconstant--3b8fbdd0f3a352f940c6eb65.md) | 152 | `result-track:3b8fbdd0f3a352f940c6eb65f63d9f193d507e9446db9e1df7dfea6df9f3545a` |
| 6 | `theorem` | [apply_eq_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant33887cd9de384dede7cab1b50e4e88aa882047753b2df55a10891fd1c1113016.lean/declarations/apply-eq-of-compactspace--436b535958eac5ce85c219ee.md) | 161 | `result-track:436b535958eac5ce85c219ee8fcb98845470a7f8a0b78664c0492c6002599f8f` |
| 7 | `theorem` | [exists_eq_const_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant33887cd9de384dede7cab1b50e4e88aa882047753b2df55a10891fd1c1113016.lean/declarations/exists-eq-const-of-compactspace--3a21401885529ac35a864e42.md) | 167 | `result-track:3a21401885529ac35a864e42762232a47bedd0e49202c6f9a0e65298d4e7d45a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
