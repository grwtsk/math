# Verification target: GRWTSK.Analysis.Operator.Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6b304e95c45810276bb67a51f753a570069f3c6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6b304e95c45810276bb67a51f753a570069f3c6`.

Source path: `GRWTSK/Analysis/Operator/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L2Space` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.L2Space` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.LpSpace` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Differentiability.Sobolev` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.QuadraticForm` — import line 18; external provider; requires a separately pinned dependency.
- `Analysis.SmoothCompactSupport.HalfLine` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ℝ≥0](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/0--4562ab661e0a1812d518c26d.md) | 32 | `declaration-track:4562ab661e0a1812d518c26de139336b53b5e55a31d16021203cb54e69c8d201` |
| 2 | `abbrev` | [μ₊](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/anonymous--b05a3d785d78a1989ec3e36c.md) | 34 | `declaration-track:b05a3d785d78a1989ec3e36c3729934f162233d0d6d231d823bf2923b231cf4f` |
| 3 | `abbrev` | [L²](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/l--f9aa4aafdbce17538911038e.md) | 36 | `declaration-track:f9aa4aafdbce17538911038eb6a2a7eaea88940c881ab351e4418fe08a94bcb8` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/instance--52921c01cf552ab83e75200a.md) | 38 | `declaration-track:52921c01cf552ab83e75200ac85906a8862aad079d6bd60a46753dc5e3e18ec4` |
| 5 | `structure` | [Potential](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/potential--b17643da7b0d2c0c17aa68bc.md) | 42 | `declaration-track:b17643da7b0d2c0c17aa68bc45d0df02a26dface00c159554dbe97fc86b4f2f5` |
| 6 | `def` | [V_mul_L2](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/v-mul-l2--2e788d938043ee3c72456ef4.md) | 51 | `declaration-track:2e788d938043ee3c72456ef4f80e7d9d9f1b584a72d534d5fc738d9e8c1d7d79` |
| 7 | `def` | [DirichletBC](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/dirichletbc--3fdd7ea997fa3f2262945fc9.md) | 55 | `declaration-track:3fdd7ea997fa3f2262945fc92906d85ff6762d1502708e61a2cacf6022e662a3` |
| 8 | `def` | [DirichletDomain](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/dirichletdomain--5985125b1abc6b95c66b7fe1.md) | 58 | `declaration-track:5985125b1abc6b95c66b7fe1e2be59c7c8898dc10f55a681bcbf75d4074263b0` |
| 9 | `def` | [DirichletSubmodule](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/dirichletsubmodule--5655408e42c03841c4b14e6c.md) | 62 | `declaration-track:5655408e42c03841c4b14e6c515454de3df6468c7bcf268eb26097c66583126c` |
| 10 | `def` | [kineticEnergy](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/kineticenergy--e0e450d48a09230622fe7a7d.md) | 82 | `declaration-track:e0e450d48a09230622fe7a7da385483ae4d94292e7ff8058a5fe4305619e75bf` |
| 11 | `def` | [potentialEnergy](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/potentialenergy--6b719599d2718d1bad21463e.md) | 86 | `declaration-track:6b719599d2718d1bad21463eaa56c1b7345c8e98eefe207ad812cf6c9cb04cd0` |
| 12 | `def` | [q](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/q--c246a6d7c0feaf4e73e475a8.md) | 90 | `declaration-track:c246a6d7c0feaf4e73e475a8e741461ffc52e90c0f11549cce0df3b59dcabfe4` |
| 13 | `lemma` | [q_isSymmetric](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/q-issymmetric--049aea534a99d60b72b1cfb5.md) | 93 | `result-track:049aea534a99d60b72b1cfb5770b18924419f126bb778796916c6d7f7c89f1ac` |
| 14 | `lemma` | [kineticEnergy_nonneg](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/kineticenergy-nonneg--95ed171097b41017fbc13708.md) | 97 | `result-track:95ed171097b41017fbc1370882fe263ed96da69bbf53f3fb1d8fbfd9b53cf6ea` |
| 15 | `lemma` | [q_lowerBound](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/q-lowerbound--dfb6d1b7f88c5123f0eb1d95.md) | 103 | `result-track:dfb6d1b7f88c5123f0eb1d95c4043a7fc9e3f8dce13134dd1ba5a77e02195072` |
| 16 | `lemma` | [DirichletDomain_dense](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/dirichletdomain-dense--e8de57c71141dbd3adc00c90.md) | 122 | `result-track:e8de57c71141dbd3adc00c9054c79f187dc548a8aeac0f0ad912e8a6a7c4ff20` |
| 17 | `def` | [ClosedForm](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/closedform--c423ffc473cf0f30ca962d7e.md) | 126 | `declaration-track:c423ffc473cf0f30ca962d7eec92b9cdfffed95c27e550d56d86119a47610f49` |
| 18 | `def` | [L](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/l--bf29499860225e1aac339bc4.md) | 141 | `declaration-track:bf29499860225e1aac339bc4954971558ae12f8273f7b7643c5d2294b00b4c04` |
| 19 | `lemma` | [L_isSelfAdjoint](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/l-isselfadjoint--67292665a6ba61a34e6fe3ce.md) | 144 | `result-track:67292665a6ba61a34e6fe3ce8436c5c92873f936ce63d3e09a373cbd38716ae4` |
| 20 | `lemma` | [L_boundedBelow](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/l-boundedbelow--d0a9c84ccb292570b926d4c7.md) | 148 | `result-track:d0a9c84ccb292570b926d4c78f3fbbb580d58e1efa96c7418c0ee27e57eded1f` |
| 21 | `lemma` | [L_compactResolvent](../../../../mathematics/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/declarations/l-compactresolvent--388bb3a5e95aee0737bd7932.md) | 156 | `result-track:388bb3a5e95aee0737bd7932350b018d988b4871e696e22ee7b394e4e00b3fc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
