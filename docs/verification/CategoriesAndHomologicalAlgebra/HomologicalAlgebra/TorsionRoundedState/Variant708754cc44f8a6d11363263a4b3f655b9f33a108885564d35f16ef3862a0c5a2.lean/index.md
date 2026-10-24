# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TorsionRoundedState.Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17d93fb8274cbae8781e39435e701ac95648af3f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17d93fb8274cbae8781e39435e701ac95648af3f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.PhaseSplitting` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Homology.TorsionLedger` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TorsionRoundedState](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2.lean/declarations/torsionroundedstate--decdd79a774b975878770192.md) | 30 | `declaration-track:decdd79a774b975878770192b342337d9f5f5a06cb1fb62fef28a3e9f9955e18` |
| 2 | `theorem` | [exact_continuous_split](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2.lean/declarations/exact-continuous-split--834a227bec8286f90d65a8be.md) | 115 | `result-track:834a227bec8286f90d65a8be7915652c919e0e5558c48883339de58236bfe853` |
| 3 | `theorem` | [branch_is_exact_minimizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2.lean/declarations/branch-is-exact-minimizer--82a4c4a36d95000f69085b08.md) | 122 | `result-track:82a4c4a36d95000f69085b0876840237842b528430bb2bcc50dfbb45501fec35` |
| 4 | `theorem` | [bockstein_agrees](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2.lean/declarations/bockstein-agrees--20be474589fe76b3cf3ce754.md) | 128 | `result-track:20be474589fe76b3cf3ce7546f82c554908a5ea462f049abc3cad7c9d8a4bbc2` |
| 5 | `theorem` | [phaseTorsionFinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2.lean/declarations/phasetorsionfinite--71d07266baabe2dec30d265b.md) | 138 | `result-track:71d07266baabe2dec30d265b4407ee13c1e39e1525578792cf4d7b6ad8170a6a` |
| 6 | `def` | [bocksteinCoordinates](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2.lean/declarations/bocksteincoordinates--ecf7249b4524329b3d700aef.md) | 146 | `declaration-track:ecf7249b4524329b3d700aefc0515440f9bb6eb27c9a58eeeb6af8ec17483b4a` |
| 7 | `theorem` | [bocksteinCoordinates_agree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2.lean/declarations/bocksteincoordinates-agree--b911264b66f8db91b97570d7.md) | 153 | `result-track:b911264b66f8db91b97570d73afa86f792c2469fd85b1d29e680c7faec1af148` |
| 8 | `theorem` | [torsionLift_eq_splitting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TorsionRoundedState/Variant708754cc44f8a6d11363263a4b3f655b9f33a108885564d35f16ef3862a0c5a2.lean/declarations/torsionlift-eq-splitting--2f5afed01f59ef0bea2ba91e.md) | 163 | `result-track:2f5afed01f59ef0bea2ba91ed218675bebe7da459ab82125bee87c259d83b2a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
