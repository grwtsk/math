# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Consistency.Variantf4af01c88d3de775bb82ceda2d2a9a0c1accf64dabda95124c7b58bc4100ed50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e1662aaa7990215288cb2082b13f6fbc18d3859",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variantf4af01c88d3de775bb82ceda2d2a9a0c1accf64dabda95124c7b58bc4100ed50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variantf4af01c88d3de775bb82ceda2d2a9a0c1accf64dabda95124c7b58bc4100ed50.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variantf4af01c88d3de775bb82ceda2d2a9a0c1accf64dabda95124c7b58bc4100ed50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e1662aaa7990215288cb2082b13f6fbc18d3859`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variantf4af01c88d3de775bb82ceda2d2a9a0c1accf64dabda95124c7b58bc4100ed50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variantf4af01c88d3de775bb82ceda2d2a9a0c1accf64dabda95124c7b58bc4100ed50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.PointUniverse` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ConsistencyDimension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variantf4af01c88d3de775bb82ceda2d2a9a0c1accf64dabda95124c7b58bc4100ed50.lean/declarations/consistencydimension--0a3686b161623835f4635b25.md) | 20 | `declaration-track:0a3686b161623835f4635b25b2aaf0f65aae2f79df506286f3882f1c4caabccc` |
| 2 | `inductive` | [ConsistencyStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variantf4af01c88d3de775bb82ceda2d2a9a0c1accf64dabda95124c7b58bc4100ed50.lean/declarations/consistencystatus--5b832a6c1e13839e82e6d66b.md) | 33 | `declaration-track:5b832a6c1e13839e82e6d66b70176b57d571b5ba5c64291d55e4886b5e551a46` |
| 3 | `structure` | [ConsistencyFinding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variantf4af01c88d3de775bb82ceda2d2a9a0c1accf64dabda95124c7b58bc4100ed50.lean/declarations/consistencyfinding--3afda94a1fa23c75ff7b2267.md) | 39 | `declaration-track:3afda94a1fa23c75ff7b22671ed0f7a7d34bad092c1cb1267390a7d71988d5c1` |
| 4 | `structure` | [ConsistencyLedger](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variantf4af01c88d3de775bb82ceda2d2a9a0c1accf64dabda95124c7b58bc4100ed50.lean/declarations/consistencyledger--8c9666340c06b7b0d3a6ba49.md) | 48 | `declaration-track:8c9666340c06b7b0d3a6ba4944c2f5d171054c069798ba07e6360f57e181e121` |
| 5 | `def` | [ConsistencyLedger.SelfConsistent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variantf4af01c88d3de775bb82ceda2d2a9a0c1accf64dabda95124c7b58bc4100ed50.lean/declarations/consistencyledger-selfconsistent--d8743abbf7d7c186c6cb746a.md) | 65 | `declaration-track:d8743abbf7d7c186c6cb746a0e20b7c0898ce9a6a92342f38193087a4a176bf5` |
| 6 | `theorem` | [ConsistencyLedger.not_selfConsistent_of_unresolved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Consistency/Variantf4af01c88d3de775bb82ceda2d2a9a0c1accf64dabda95124c7b58bc4100ed50.lean/declarations/consistencyledger-not-selfconsistent-of-unresolved--9ebcad6c46490ea6e28ec16b.md) | 72 | `result-track:9ebcad6c46490ea6e28ec16bca5b33e3dec746007f2d6bd926b6bee18605a6a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
