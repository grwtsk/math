# Verification target: GRWTSK.Topology.GeneralTopology.MediumPNTLogErrorAttempt02.Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "195e7f002287c0acc6f72f4183ea3be002f089f0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `195e7f002287c0acc6f72f4183ea3be002f089f0`.

Source path: `GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean.json)

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
| 1 | `def` | [psiRelativeError](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean/declarations/psirelativeerror--25b903fa729c5cb349998159.md) | 19 | `declaration-track:25b903fa729c5cb34999815954e9e5c5f01e76160e0ae933dc356474fe7baa31` |
| 2 | `theorem` | [psiRelativeError_eq](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean/declarations/psirelativeerror-eq--66632fa7f1132c7bd851721c.md) | 21 | `result-track:66632fa7f1132c7bd851721c2d5e806fc81f8dd0ac9e9d306ab8626209f26d5c` |
| 3 | `theorem` | [psiRelativeError_medium_bound](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean/declarations/psirelativeerror-medium-bound--a4c542a5a20cb303e2ceb8cb.md) | 28 | `result-track:a4c542a5a20cb303e2ceb8cbc95f1fe9f376755487bbd2ae2e25c6574b8798da` |
| 4 | `theorem` | [power_stretched_exp_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean/declarations/power-stretched-exp-tendsto-zero--f97ae9147dbdb1dfb6c370c7.md) | 48 | `result-track:f97ae9147dbdb1dfb6c370c763daa73dc8447a20ef7def4a7334bef21505c982` |
| 5 | `theorem` | [psiRelativeError_mul_pow_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt02/Variantd1580a4913fe1ce85ec6935786b9a0ec5b0e7cdc1336cbba0a0399d0111a4b28.lean/declarations/psirelativeerror-mul-pow-tendsto-zero--f7c6abf84a5d99999efa72af.md) | 59 | `result-track:f7c6abf84a5d99999efa72af8ccdf968c977d727cba6b2027ff95f0b9c3646cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
