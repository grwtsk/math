# Verification target: GRWTSK.Analysis.Operator.Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c78fb56159e97b5b390b7eb1c542f9d5dd82a2a6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c78fb56159e97b5b390b7eb1c542f9d5dd82a2a6`.

Source path: `GRWTSK/Analysis/Operator/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L2Space` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.L2Space` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.LpSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Differentiability.Sobolev` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.QuadraticForm` — import line 13; external provider; requires a separately pinned dependency.
- `Analysis.SmoothCompactSupport.HalfLine` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ℝ≥0](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/0--00ecd7b56dd475c5a3cc0f6c.md) | 24 | `declaration-track:00ecd7b56dd475c5a3cc0f6c9216b735366dd1d684327f5a75759aef6e935a01` |
| 2 | `abbrev` | [μ₊](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/anonymous--d2bf44f0348c9180a06be163.md) | 26 | `declaration-track:d2bf44f0348c9180a06be163167887648083e560cc6506552d9a49d5d64a7004` |
| 3 | `abbrev` | [L²](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/l--e4af36a98865200ce5289d79.md) | 28 | `declaration-track:e4af36a98865200ce5289d7984f037401dab1ccbe0b7ca65b3d6c764c5cfc32d` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/instance--ad3a6e8e4d62b9c3e8ba4270.md) | 30 | `declaration-track:ad3a6e8e4d62b9c3e8ba4270c7ae9e7a49c28f269468a80f914a7f08c0c85401` |
| 5 | `structure` | [Potential](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/potential--6b1af81dd8993607949c8e44.md) | 34 | `declaration-track:6b1af81dd8993607949c8e44f8fe047caf7cdbb8171160bef24702cf235cebf5` |
| 6 | `def` | [V_mul_L2](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/v-mul-l2--d97de00025a716adbb964679.md) | 43 | `declaration-track:d97de00025a716adbb964679f13b7c616c13896e64f6fc0e2969f3cdfafc9d33` |
| 7 | `def` | [DirichletBC](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/dirichletbc--c657b7d01316789a00fdd717.md) | 47 | `declaration-track:c657b7d01316789a00fdd7174c72bbf691bdb834787a45a9c0bb4ebd8bae5fb8` |
| 8 | `def` | [DirichletDomain](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/dirichletdomain--c31bae364104bc2868d4a503.md) | 50 | `declaration-track:c31bae364104bc2868d4a503c0cd13c4f214511d114cb2d77b4a79cb7c910c6a` |
| 9 | `def` | [DirichletSubmodule](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/dirichletsubmodule--0eab4e612ec30b17626ab1fc.md) | 54 | `declaration-track:0eab4e612ec30b17626ab1fcf30bb6878e80a13cc5dccddc6403199b7df8b93d` |
| 10 | `def` | [kineticEnergy](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/kineticenergy--78f192650be1c32fa1e4e508.md) | 74 | `declaration-track:78f192650be1c32fa1e4e5086b3298379c8f2d767949d0c37240d2f533e9204a` |
| 11 | `def` | [potentialEnergy](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/potentialenergy--da63966ace8de476589e731c.md) | 78 | `declaration-track:da63966ace8de476589e731cad396497588e4d5039cb8ca5310a6162f10d1a8a` |
| 12 | `def` | [q](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/q--81cfcdafee4834d4e00bbf95.md) | 82 | `declaration-track:81cfcdafee4834d4e00bbf95c037d2efb72b0180f5566df12c1755f342fd3c70` |
| 13 | `lemma` | [q_isSymmetric](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/q-issymmetric--b5c6bd7fbba3f8e137a0f300.md) | 85 | `result-track:b5c6bd7fbba3f8e137a0f300c48f31137fa8578a5c39b0186c3672abb93f00aa` |
| 14 | `lemma` | [kineticEnergy_nonneg](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/kineticenergy-nonneg--cee76d11c67547898dad3ffd.md) | 89 | `result-track:cee76d11c67547898dad3ffd47525c8d4b2c756e7e540591b9d099101bae8fc9` |
| 15 | `lemma` | [q_lowerBound](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/q-lowerbound--3ef5a424775135bcdde48125.md) | 95 | `result-track:3ef5a424775135bcdde4812543d581e94dcaf6aab6b3b472c3a7510bded5082e` |
| 16 | `lemma` | [DirichletDomain_dense](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/dirichletdomain-dense--d68b3fe68489132b1841d335.md) | 114 | `result-track:d68b3fe68489132b1841d335f37edff9f736b0dfb7c9ae7e8455cbebe3d96705` |
| 17 | `def` | [ClosedForm](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/closedform--5abffc783ca1d3632d6bc6de.md) | 118 | `declaration-track:5abffc783ca1d3632d6bc6de91f6a9a894fa8685216db2789333b9173bb0ecea` |
| 18 | `def` | [L](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/l--3ea8823e67561123877e7c8b.md) | 133 | `declaration-track:3ea8823e67561123877e7c8bb40c4924798612bd6039efb26a0efa9f63dd3779` |
| 19 | `lemma` | [L_isSelfAdjoint](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/l-isselfadjoint--39a0fbbf2dc121b7c18839cc.md) | 136 | `result-track:39a0fbbf2dc121b7c18839cc622e33273e7bfb8fec4b2ac78220fc6a02cefb34` |
| 20 | `lemma` | [L_boundedBelow](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/l-boundedbelow--21438f4cef0cb154ca450424.md) | 140 | `result-track:21438f4cef0cb154ca450424dcb4493b4f5a14183c6adbaa0be3a8dd6015e227` |
| 21 | `lemma` | [L_compactResolvent](../../../../mathematics/Analysis/OperatorTheory/Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545.lean/declarations/l-compactresolvent--a8c13996c73d7641f0004e4b.md) | 148 | `result-track:a8c13996c73d7641f0004e4b90bc7ebeab2beb90dbdaf27b78371bfe027b698d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
