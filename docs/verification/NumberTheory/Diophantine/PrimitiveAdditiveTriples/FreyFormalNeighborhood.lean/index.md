# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyFormalNeighborhood

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f304f59fc241efc740cf0c1dbeef9881538c2bbe",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f304f59fc241efc740cf0c1dbeef9881538c2bbe`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetRecursion`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.RingTheory.Ideal.Operations` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [element_power_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/declarations/element-power-zero--4b12e7d274d0266dbdee0bb0.md) | 22 | `result-track:4b12e7d274d0266dbdee0bb0a2162bf76c845bc0140d4a50fd91ef076c96ae34` |
| 2 | `theorem` | [iterate_mem](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/declarations/iterate-mem--54e81ca11790495aceccd38a.md) | 28 | `result-track:54e81ca11790495aceccd38a3dd2e765b0b15b9de5ba1245592e18e89f146bf6` |
| 3 | `theorem` | [step_gain_ideal](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/declarations/step-gain-ideal--445ed4b7888975c1b6ecfaa2.md) | 35 | `result-track:445ed4b7888975c1b6ecfaa2ca55fa8c9753e069ef9a6c463769b4d38de95758` |
| 4 | `theorem` | [solution_unique](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/declarations/solution-unique--9c95d139a8862251327929f9.md) | 53 | `result-track:9c95d139a8862251327929f9af8479bbd058313351f32ea2cfbceb507b4ba65f` |
| 5 | `theorem` | [iterate_solves_ideal](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/declarations/iterate-solves-ideal--24d28ff3c3934df0ad4c40ae.md) | 71 | `result-track:24d28ff3c3934df0ad4c40ae839f9da9191369a408796c183a0a63c72618b09a` |
| 6 | `theorem` | [solution_eq_iterate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/declarations/solution-eq-iterate--dcd41e78f3c9b2b4a8240ea8.md) | 80 | `result-track:dcd41e78f3c9b2b4a8240ea8e4ae01c0dc235cdd27c0c8c28a8411e1e2572be2` |
| 7 | `theorem` | [solution_square_dvd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/declarations/solution-square-dvd--18d48ed5c875bd5f4ff471b7.md) | 88 | `result-track:18d48ed5c875bd5f4ff471b7468ce0017fde39e2d0c5c4ceceb3b91e6b09fbcd` |
| 8 | `def` | [Branch](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/declarations/branch--affa3d5646f353e092562d8b.md) | 96 | `declaration-track:affa3d5646f353e092562d8b21efe998fea7f9ac9638d98d106481c58bd2e29c` |
| 9 | `def` | [parameterEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/declarations/parameterequiv--3c83cb38d72d7eb2ccab32b3.md) | 102 | `declaration-track:3c83cb38d72d7eb2ccab32b310550dd6636f0b97c7c892c411a9f2946b8a0a1e` |
| 10 | `def` | [mapBranch](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/declarations/mapbranch--185e82ba1a86a75b22463cdb.md) | 117 | `declaration-track:185e82ba1a86a75b22463cdb85829a2a085765de0596a6e67ed6e919111ec214` |
| 11 | `theorem` | [parameterEquiv_natural](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/declarations/parameterequiv-natural--a4b183fbbb1c63d34422d47a.md) | 124 | `result-track:a4b183fbbb1c63d34422d47a900e3bfc4f663bba16f895f76268c916bae1814e` |
| 12 | `theorem` | [lift_natural](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/declarations/lift-natural--3f8d0db3af03f34a695d163a.md) | 135 | `result-track:3f8d0db3af03f34a695d163a4625ff9700d886ea81cfe463b5a64be3ad1f5232` |
| 13 | `theorem` | [lift_bound_independent](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/declarations/lift-bound-independent--c9c3d3f3ca6ed89762deba4e.md) | 148 | `result-track:c9c3d3f3ca6ed89762deba4ee47b04152f58607f94c2a3ae218b2b61da282e28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
