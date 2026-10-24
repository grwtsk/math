# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tree.Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5242ccb762a26174e278a2e82fb40b5ea9190747",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5242ccb762a26174e278a2e82fb40b5ea9190747`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.EdgeRelaxation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContainsVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/declarations/containsvariable--4777bd0d00aa4729e6f8ab42.md) | 20 | `declaration-track:4777bd0d00aa4729e6f8ab42e520ff9592381efcb2eba242b18645bf20830aff` |
| 2 | `def` | [ContainsSoftVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/declarations/containssoftvariable--3ff16e887c7b7b7346fd6fae.md) | 32 | `declaration-track:3ff16e887c7b7b7346fd6fae976dfc45815d2c26e44ad0a8c5543100dced594b` |
| 3 | `theorem` | [containsSoftVariable_of_containsVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/declarations/containssoftvariable-of-containsvariable--75244219d8f3e96d444daa84.md) | 45 | `result-track:75244219d8f3e96d444daa84d6313e28709c81d95dfdb9da5c51db84b9e2237a` |
| 4 | `theorem` | [eval_not_crisp_of_containsSoftVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/declarations/eval-not-crisp-of-containssoftvariable--d00d3d5e89f4b0db71023b77.md) | 88 | `result-track:d00d3d5e89f4b0db71023b77baa9c1148cfe7ed46495f14d3f1c9a80a62febf2` |
| 5 | `theorem` | [eval_not_crisp_of_containsVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/declarations/eval-not-crisp-of-containsvariable--948f7e6e31ca9835ce50699b.md) | 118 | `result-track:948f7e6e31ca9835ce50699b73838fe232df3864af78230b8545b69b70275950` |
| 6 | `theorem` | [relaxedValuation_not_crisp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/declarations/relaxedvaluation-not-crisp--6ab343ed52f1ce54c406de2e.md) | 132 | `result-track:6ab343ed52f1ce54c406de2e8064b77e19bef62f1fdebb4a7255bbf64ac42405` |
| 7 | `theorem` | [epsilon_relaxation_softens_finite_tree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/declarations/epsilon-relaxation-softens-finite-tree--86f293c5e32bf85387dbb29c.md) | 142 | `result-track:86f293c5e32bf85387dbb29c0b9f14436b6f8f5ece3972235ce590eb4e0783e1` |
| 8 | `theorem` | [activeRootTree_containsVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/declarations/activeroottree-containsvariable--16344dc0ae531829f8cb9a90.md) | 152 | `result-track:16344dc0ae531829f8cb9a90a51b78ad3b741e5e5307972786aa5344865e7ad1` |
| 9 | `theorem` | [boundedUnaryTree_containsVariable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/declarations/boundedunarytree-containsvariable--5c175b1bb5c84cf3611005f4.md) | 159 | `result-track:5c175b1bb5c84cf3611005f4eae2cf7ec70a225734bf025e8392f9235986ec54` |
| 10 | `theorem` | [activeRootTree_relaxed_not_crisp_from_finite_tree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/declarations/activeroottree-relaxed-not-crisp-from-finite-tree--cdae764357618a1232141c5b.md) | 165 | `result-track:cdae764357618a1232141c5b8b22100a33a7cb57227202ea9f60b3905e362905` |
| 11 | `theorem` | [boundedUnaryTree_relaxed_not_crisp_from_finite_tree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec.lean/declarations/boundedunarytree-relaxed-not-crisp-from-finite-tree--5fb04342a61551729afeb580.md) | 174 | `result-track:5fb04342a61551729afeb580b60a98400487254d850b905228a363c2c7162fac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
